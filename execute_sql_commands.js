const { createClient } = require('@supabase/supabase-js');

// Utiliser le service role key pour avoir les permissions nécessaires
const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

const sqlCommands = [
  // 1. Créer la table pro_favorites
  `CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
  );`,
  
  // 2. Ajouter la colonne followers_count
  `ALTER TABLE public.shops 
   ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;`,
  
  // 3. Activer RLS
  `ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;`,
  
  // 4. Créer les politiques
  `CREATE POLICY "Users can view their own pro favorites" ON public.pro_favorites
     FOR SELECT USING (auth.uid() = user_id);`,
  
  `CREATE POLICY "Users can create their own pro favorites" ON public.pro_favorites
     FOR INSERT WITH CHECK (auth.uid() = user_id);`,
  
  `CREATE POLICY "Users can delete their own pro favorites" ON public.pro_favorites
     FOR DELETE USING (auth.uid() = user_id);`,
  
  // 5. Créer les index
  `CREATE INDEX IF NOT EXISTS idx_pro_favorites_user_id ON public.pro_favorites(user_id);`,
  
  `CREATE INDEX IF NOT EXISTS idx_pro_favorites_pro_id ON public.pro_favorites(pro_id);`,
  
  `CREATE INDEX IF NOT EXISTS idx_shops_followers_count ON public.shops(followers_count);`
];

async function executeSQL() {
  console.log('🚀 Début de l\'exécution des commandes SQL...');
  
  for (let i = 0; i < sqlCommands.length; i++) {
    const command = sqlCommands[i];
    console.log(`\n📋 Exécution commande ${i + 1}...`);
    
    try {
      // Essayer d'exécuter via RPC
      const { data, error } = await supabase.rpc('exec_sql', { sql: command });
      
      if (error) {
        console.log(`⚠️  Erreur commande ${i + 1}:`, error.message);
        // Si l'erreur est "already exists", c'est OK
        if (error.message.includes('already exists') || 
            error.message.includes('déjà existe') ||
            error.message.includes('exists')) {
          console.log(`✅ Commande ${i + 1} déjà appliquée ou élément existe déjà`);
        }
      } else {
        console.log(`✅ Commande ${i + 1} exécutée avec succès`);
      }
    } catch (err) {
      console.log(`❌ Erreur exception commande ${i + 1}:`, err.message);
    }
  }
  
  console.log('\n🎉 Toutes les commandes ont été traitées!');
  
  // Vérification finale
  console.log('\n🔍 Vérification finale...');
  
  try {
    const { data: proData, error: proError } = await supabase
      .from('pro_favorites')
      .select('*')
      .limit(1);
    
    if (proError) {
      console.log('❌ pro_favorites:', proError.message);
    } else {
      console.log('✅ pro_favorites est accessible');
    }
    
    const { data: shopsData, error: shopsError } = await supabase
      .from('shops')
      .select('followers_count')
      .limit(1);
    
    if (shopsError) {
      console.log('❌ shops avec followers_count:', shopsError.message);
    } else {
      console.log('✅ shops avec followers_count est accessible');
    }
    
  } catch (err) {
    console.log('Erreur lors de la vérification:', err.message);
  }
}

executeSQL();