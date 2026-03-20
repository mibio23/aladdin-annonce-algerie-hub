// Test de création d'une annonce avec catégorie
const { createClient } = require('@supabase/supabase-js');

// Configuration Supabase
const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function testerCreationAnnonce() {
  try {
    console.log('🔄 Test de création d\'une annonce...');
    
    // 1. D'abord, récupérons une catégorie existante (par exemple: téléphonie en FR)
    const { data: categorie, error: catError } = await supabase
      .from('categories')
      .select('id, name, slug, langue')
      .eq('slug', 'telephonie')
      .eq('langue', 'fr')
      .single();
    
    if (catError) {
      console.log('❌ Erreur lors de la récupération de la catégorie:', catError.message);
      return;
    }
    
    console.log('📋 Catégorie trouvée:', {
      id: categorie.id,
      nom: categorie.name,
      slug: categorie.slug,
      langue: categorie.langue
    });
    
    // 2. Créons une annonce de test
    const annonceTest = {
      titre: 'iPhone 13 Pro Max - Comme neuf',
      description: 'Vends iPhone 13 Pro Max 256GB, très bon état, avec accessoires.',
      prix: 850000, // en centimes (8500 DA)
      categorie_id: categorie.id,
      langue: 'fr',
      localisation: 'Alger',
      type_annonce: 'vente',
      etat: 'occasion',
      utilisateur_id: 'test-user-123',
      est_active: true
    };
    
    // 3. Insérer l'annonce
    const { data: nouvelleAnnonce, error: insertError } = await supabase
      .from('annonces')
      .insert([annonceTest])
      .select()
      .single();
    
    if (insertError) {
      console.log('❌ Erreur lors de la création de l\'annonce:', insertError.message);
      return;
    }
    
    console.log('✅ Annonce créée avec succès!');
    console.log('📱 Détails de l\'annonce:', {
      id: nouvelleAnnonce.id,
      titre: nouvelleAnnonce.titre,
      prix: nouvelleAnnonce.prix / 100 + ' DA',
      categorie: categorie.name,
      localisation: nouvelleAnnonce.localisation
    });
    
    // 4. Récupérer l'annonce avec les détails de la catégorie
    const { data: annonceComplete, error: joinError } = await supabase
      .from('annonces')
      .select(`
        *, 
        categories!inner(name, slug, langue)
      `)
      .eq('id', nouvelleAnnonce.id)
      .single();
    
    if (!joinError && annonceComplete) {
      console.log('🎯 Annonce complète avec catégorie:', {
        titre: annonceComplete.titre,
        categorie: annonceComplete.categories.name,
        slug_categorie: annonceComplete.categories.slug,
        langue: annonceComplete.categories.langue
      });
    }
    
  } catch (error) {
    console.error('💥 Erreur générale:', error);
  }
}

// Vérifier si la table annonces existe
async function verifierStructure() {
  try {
    const { data, error } = await supabase
      .from('annonces')
      .select('*')
      .limit(1);
    
    if (error) {
      console.log('ℹ️ Table annonces non trouvée ou structure différente');
      console.log('📋 Structure attendue pour une annonce:');
      console.log('- titre, description, prix, categorie_id, langue, localisation');
      console.log('- La catégorie détermine où l\'annonce s\'affichera');
    } else {
      console.log('✅ Table annonces trouvée, test possible');
      await testerCreationAnnonce();
    }
    
  } catch (error) {
    console.log('ℹ️ Test de structure uniquement (table annonces non trouvée)');
    console.log('🎯 Concept: L\'annonce sera filtrée par categorie_id et affichée');
    console.log('   dans la section correspondante du site');
  }
}

verifierStructure();