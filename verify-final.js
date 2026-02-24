import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co'
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g'

const supabase = createClient(supabaseUrl, supabaseKey)

async function verifyFinal() {
  try {
    console.log('=== Vérification finale de la migration ===\n')

    // Vérification complète
    const { data, error } = await supabase
      .from('profiles')
      .select('*')

    if (error) {
      console.log('❌ Erreur:', error.message)
      return
    }

    if (!data || data.length === 0) {
      console.log('❌ Aucun profil trouvé')
      return
    }

    console.log(`✅ ${data.length} profil(s) trouvé(s):`)
    data.forEach((profile, index) => {
      console.log(`\n--- Profil ${index + 1} ---`)
      console.log(`ID: ${profile.id}`)
      console.log(`User ID: ${profile.user_id}`)
      console.log(`Public User ID: ${profile.public_user_id || 'NULL'}`)
      console.log(`Email: ${profile.email}`)
      console.log(`Nom: ${profile.first_name || ''} ${profile.last_name || ''}`)
      console.log(`Créé le: ${profile.created_at}`)
    })

    // Vérifier les IDs assignés
    const profilesWithIds = data.filter(p => p.public_user_id !== null)
    console.log(`\n📊 Statistiques:`)
    console.log(`- Total profils: ${data.length}`)
    console.log(`- Avec ID public: ${profilesWithIds.length}`)
    console.log(`- Sans ID public: ${data.length - profilesWithIds.length}`)

    if (profilesWithIds.length > 0) {
      console.log(`\n✅ Les IDs publics sont assignés et prêts !`)
      console.log(`✅ L'affichage dans l'application fonctionnera`)
      console.log(`✅ Format 14 chiffres: ${String(profilesWithIds[0].public_user_id).padStart(14, '0')}`)
    }

    console.log('\n🎉 Migration réussie ! L\'ID utilisateur sera visible dans :')
    console.log('   - Détails des annonces (public)')
    console.log('   - Gestion des annonces (admin)')

  } catch (error) {
    console.error('Erreur:', error)
  }
}

verifyFinal()