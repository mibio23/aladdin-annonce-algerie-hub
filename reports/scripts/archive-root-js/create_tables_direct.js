const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function createTablesDirectly() {
  console.log('🚀 Début de la création des tables...');
  
  try {
    // 1. Créer la table pro_favorites
    console.log('📋 Création de pro_favorites...');
    
    // Essayer d'abord une requête simple pour voir si la table existe
    const { data: testData, error: testError } = await supabase
      .from('pro_favorites')
      .select('*')
      .limit(1);
    
    if (testError && testError.message.includes('does not exist')) {
      console.log('La table pro_favorites n\'existe pas, création nécessaire...');
      
      // Utiliser une requête SQL brute via le client
      const { error: createError } = await supabase.rpc('exec_sql', {
        sql: `
          CREATE TABLE IF NOT EXISTS public.pro_favorites (
            id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
            user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
            pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
            UNIQUE(user_id, pro_id)
          )
        `
      });
      
      if (createError) {
        console.log('Erreur création pro_favorites:', createError.message);
      } else {
        console.log('✅ pro_favorites créée');
      }
    } else {
      console.log('✅ pro_favorites existe déjà ou est accessible');
    }
    
    // 2. Ajouter la colonne followers_count
    console.log('📋 Ajout de followers_count à shops...');
    
    // Vérifier si la colonne existe déjà
    const { data: shopsData, error: shopsError } = await supabase
      .from('shops')
      .select('followers_count')
      .limit(1);
    
    if (shopsError && shopsError.message.includes('does not exist')) {
      console.log('Erreur shops:', shopsError.message);
    } else if (shopsData) {
      console.log('✅ followers_count existe déjà dans shops');
    } else {
      // La colonne n'existe pas, l'ajouter
      const { error: alterError } = await supabase.rpc('exec_sql', {
        sql: 'ALTER TABLE public.shops ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL'
      });
      
      if (alterError) {
        console.log('Erreur ajout followers_count:', alterError.message);
      } else {
        console.log('✅ followers_count ajouté à shops');
      }
    }
    
    console.log('\n🎉 Processus terminé!');
    
  } catch (err) {
    console.error('Erreur générale:', err);
  }
}

createTablesDirectly();