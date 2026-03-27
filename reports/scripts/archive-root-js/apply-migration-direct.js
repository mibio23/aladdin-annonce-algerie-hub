import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co'
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g'

const supabase = createClient(supabaseUrl, supabaseKey)

async function applyMigration() {
  try {
    console.log('Application de la migration ID utilisateur...')

    // Créer la séquence
    const { error: seqError } = await supabase.rpc('exec_sql', {
      sql: 'CREATE SEQUENCE IF NOT EXISTS public.user_public_id_seq START 1 INCREMENT 1;'
    })
    if (seqError) console.log('Erreur séquence (peut déjà exister):', seqError.message)
    else console.log('✓ Séquence créée')

    // Ajouter la colonne
    const { error: colError } = await supabase.rpc('exec_sql', {
      sql: 'ALTER TABLE public.profiles ADD COLUMN IF NOT EXISTS public_user_id bigint;'
    })
    if (colError) console.log('Erreur colonne (peut déjà exister):', colError.message)
    else console.log('✓ Colonne ajoutée')

    // Définir la valeur par défaut
    const { error: defError } = await supabase.rpc('exec_sql', {
      sql: 'ALTER TABLE public.profiles ALTER COLUMN public_user_id SET DEFAULT nextval(\'public.user_public_id_seq\');'
    })
    if (defError) console.log('Erreur défaut:', defError.message)
    else console.log('✓ Valeur par défaut définie')

    // Backfill les IDs pour les profils existants
    const { error: backfillError } = await supabase.rpc('exec_sql', {
      sql: `
        WITH ordered AS (
          SELECT id FROM public.profiles WHERE public_user_id IS NULL ORDER BY created_at ASC
        ), assigned AS (
          SELECT id, nextval('public.user_public_id_seq') AS new_public_id FROM ordered
        )
        UPDATE public.profiles p
        SET public_user_id = a.new_public_id
        FROM assigned a
        WHERE p.id = a.id;
      `
    })
    if (backfillError) console.log('Erreur backfill:', backfillError.message)
    else console.log('✓ Backfill complété')

    console.log('Migration appliquée avec succès!')

    // Vérifier le résultat
    const { data: profiles, error } = await supabase
      .from('profiles')
      .select('id, public_user_id')
      .limit(5)

    if (!error && profiles) {
      console.log('\nVérification:')
      profiles.forEach(profile => {
        console.log(`- Profil ${profile.id}: ID public = ${profile.public_user_id}`)
      })
    }

  } catch (error) {
    console.error('Erreur:', error)
  }
}

applyMigration()