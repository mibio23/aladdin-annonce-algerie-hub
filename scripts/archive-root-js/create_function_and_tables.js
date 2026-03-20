const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function createSupabaseFunction() {
  console.log('🚀 Création de la fonction exec_sql dans Supabase...');
  
  try {
    // Créer la fonction exec_sql via le dashboard
    const functionSQL = `
      CREATE OR REPLACE FUNCTION public.exec_sql(sql text)
      RETURNS void
      LANGUAGE plpgsql
      SECURITY DEFINER
      AS $$
      BEGIN
        EXECUTE sql;
      END;
      $$;
      
      -- Donner les permissions nécessaires
      GRANT EXECUTE ON FUNCTION public.exec_sql(text) TO service_role;
      GRANT EXECUTE ON FUNCTION public.exec_sql(text) TO anon;
      GRANT EXECUTE ON FUNCTION public.exec_sql(text) TO authenticated;
    `;
    
    // Utiliser l'API REST pour créer la fonction
    const response = await fetch('https://smsvybphkdxzvgawzoru.supabase.co/rest/v1/rpc/exec_sql', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
      },
      body: JSON.stringify({ sql: functionSQL })
    });
    
    if (response.ok) {
      console.log('✅ Fonction exec_sql créée avec succès!');
      
      // Maintenant créer les tables
      await createTables();
    } else {
      console.log('Erreur création fonction:', response.status, await response.text());
    }
    
  } catch (err) {
    console.error('Erreur:', err);
  }
}

async function createTables() {
  console.log('\n📋 Création des tables fonctionnelles...');
  
  try {
    // 1. Créer la table des favoris professionnels (pro_favorites)
    console.log('📋 Création de la table favoris professionnels (pro_favorites)...');
    
    const { error: proFavError } = await supabase.rpc('exec_sql', {
      sql: `
        CREATE TABLE IF NOT EXISTS public.pro_favorites (
          id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
          user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
          pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
          created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
          UNIQUE(user_id, pro_id)
        );
        
        -- Activer RLS
        ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;
        
        -- Créer des politiques RLS
        CREATE POLICY "Les utilisateurs peuvent voir leurs propres favoris pros" ON public.pro_favorites
          FOR SELECT USING (auth.uid() = user_id);
          
        CREATE POLICY "Les utilisateurs peuvent créer leurs propres favoris pros" ON public.pro_favorites
          FOR INSERT WITH CHECK (auth.uid() = user_id);
          
        CREATE POLICY "Les utilisateurs peuvent supprimer leurs propres favoris pros" ON public.pro_favorites
          FOR DELETE USING (auth.uid() = user_id);
      `
    });
    
    if (proFavError) {
      console.log('Erreur création pro_favorites:', proFavError.message);
    } else {
      console.log('✅ Table favoris professionnels créée!');
    }
    
    // 2. Ajouter le compteur d\'abonnés (followers_count) à la table shops
    console.log('📋 Ajout du compteur d\'abonnés (followers_count) à la table commerces (shops)...');
    
    const { error: followersError } = await supabase.rpc('exec_sql', {
      sql: `
        -- Vérifier si la table shops existe d\'abord
        DO $$
        BEGIN
          IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'shops') THEN
            -- Ajouter la colonne compteur d\'abonnés
            ALTER TABLE public.shops 
            ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;
            
            -- Créer un trigger pour mettre à jour automatiquement le compteur
            CREATE OR REPLACE FUNCTION update_shop_followers_count()
            RETURNS TRIGGER AS $$
            BEGIN
              IF TG_OP = 'INSERT' THEN
                UPDATE public.shops SET followers_count = followers_count + 1 WHERE id = NEW.pro_id;
                RETURN NEW;
              ELSIF TG_OP = 'DELETE' THEN
                UPDATE public.shops SET followers_count = followers_count - 1 WHERE id = OLD.pro_id;
                RETURN OLD;
              END IF;
              RETURN NULL;
            END;
            $$ LANGUAGE plpgsql;
            
            -- Créer le trigger
            DROP TRIGGER IF EXISTS update_shop_followers ON public.pro_favorites;
            CREATE TRIGGER update_shop_followers
              AFTER INSERT OR DELETE ON public.pro_favorites
              FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();
          ELSE
            RAISE NOTICE 'La table shops n\'existe pas encore';
          END IF;
        END $$;
      `
    });
    
    if (followersError) {
      console.log('Erreur ajout followers_count:', followersError.message);
    } else {
      console.log('✅ Compteur d\'abonnés ajouté!');
    }
    
    console.log('\n🎉 Tables fonctionnelles créées avec succès!');
    
  } catch (err) {
    console.error('Erreur création tables:', err);
  }
}

// Exécuter
createSupabaseFunction();