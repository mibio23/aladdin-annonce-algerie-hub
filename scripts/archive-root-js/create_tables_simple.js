const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.VITE_SUPABASE_SERVICE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function createTables() {
  try {
    // 1. Créer la table pro_favorites
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
      console.log('Étape 1 - pro_favorites peut déjà exister:', error1.message);
    } else {
      console.log('✅ Table pro_favorites créée');
    }

    // 2. Ajouter la colonne followers_count
    const { error: error2 } = await supabase.rpc('exec_sql', {
      sql: `
        ALTER TABLE public.shops 
        ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;
      `
    });
    
    if (error2) {
      console.log('Étape 2 - followers_count peut déjà exister:', error2.message);
    } else {
      console.log('✅ Colonne followers_count ajoutée');
    }

    // 3. Activer RLS
    const { error: error3 } = await supabase.rpc('exec_sql', {
      sql: `
        ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;
      `
    });
    
    if (error3) {
      console.log('Étape 3 - RLS peut déjà être activé:', error3.message);
    } else {
      console.log('✅ RLS activé');
    }

    console.log('🎉 Processus terminé! Vérifiez avec le script de vérification.');
    
  } catch (err) {
    console.error('Erreur générale:', err);
  }
}

createTables();