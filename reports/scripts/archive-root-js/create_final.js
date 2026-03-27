const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function createTablesDirectly() {
  try {
    // 1. Créer la table pro_favorites
    console.log('Création de pro_favorites...');
    const { error: error1 } = await supabase.rpc('exec_sql', {
      sql: `
        CREATE TABLE IF NOT EXISTS public.pro_favorites (
          id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
          user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
          pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
          created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
          UNIQUE(user_id, pro_id)
        );
      `
    });
    
    if (error1) {
      console.log('Erreur création pro_favorites:', error1.message);
    } else {
      console.log('✅ Table pro_favorites créée');
    }

    // 2. Ajouter la colonne followers_count
    console.log('Ajout de followers_count...');
    const { error: error2 } = await supabase.rpc('exec_sql', {
      sql: `
        ALTER TABLE public.shops 
        ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;
      `
    });
    
    if (error2) {
      console.log('Erreur ajout followers_count:', error2.message);
    } else {
      console.log('✅ Colonne followers_count ajoutée');
    }

    // 3. Vérifier si les tables existent maintenant
    console.log('Vérification finale...');
    
    // Vérifier pro_favorites
    const { data: proData, error: proError } = await supabase
      .from('pro_favorites')
      .select('*')
      .limit(1);
    
    if (proError) {
      console.log('❌ pro_favorites n\'existe toujours pas:', proError.message);
    } else {
      console.log('✅ pro_favorites est accessible');
    }

    // Vérifier shops avec followers_count
    const { data: shopsData, error: shopsError } = await supabase
      .from('shops')
      .select('followers_count')
      .limit(1);
    
    if (shopsError) {
      console.log('❌ followers_count n\'existe pas:', shopsError.message);
    } else {
      console.log('✅ followers_count est accessible');
    }

    console.log('🎉 Processus terminé!');
    
  } catch (err) {
    console.error('Erreur générale:', err);
  }
}

createTablesDirectly();