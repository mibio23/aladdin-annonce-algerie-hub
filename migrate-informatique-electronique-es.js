require('dotenv').config({ path: '.env' });
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.VITE_SUPABASE_ANON_KEY
);

const { informatiqueElectroniqueEs } = require('./src/data/categories/megaMenuStructures/informatiqueElectronique/es.tsx');

async function migrateInformatiqueElectroniqueES() {
  console.log('🚀 Début migration Informatique & Électronique - Espagnol...');
  
  try {
    let totalCategories = 0;

    // Insertion de la catégorie principale
    const mainCategory = {
      name: informatiqueElectroniqueEs.name,
      slug: informatiqueElectroniqueEs.slug,
      language: 'es',
      level: 0,
      icon: 'Laptop',
      is_active: true,
      sort_order: 0
    };

    const { data: insertedMain, error: mainError } = await supabase
      .from('categories')
      .insert(mainCategory)
      .select()
      .single();

    if (mainError) {
      console.error('❌ Erreur insertion catégorie principale:', mainError);
      return;
    }
    
    totalCategories++;
    console.log(`✅ Catégorie principale insérée: ${insertedMain.name}`);

    // Insertion des sous-catégories
    for (const subcategory of informatiqueElectroniqueEs.subcategories) {
      const subCategoryData = {
        name: subcategory.name,
        slug: subcategory.slug,
        language: 'es',
        parent_id: insertedMain.id,
        level: 1,
        is_active: true,
        sort_order: 0
      };

      const { data: insertedSub, error: subError } = await supabase
        .from('categories')
        .insert(subCategoryData)
        .select()
        .single();

      if (subError) {
        console.error('❌ Erreur insertion sous-catégorie:', subError);
        continue;
      }
      
      totalCategories++;
      console.log(`  ✅ Sous-catégorie insérée: ${insertedSub.name}`);

      // Insertion des sous-sous-catégories
      if (subcategory.subcategories && subcategory.subcategories.length > 0) {
        for (const subSubcategory of subcategory.subcategories) {
          // Vérifier s'il y a des sous-catégories niveau 3
          if (subSubcategory.subcategories && subSubcategory.subcategories.length > 0) {
            // Insertion niveau 2
            const subSubData = {
              name: subSubcategory.name,
              slug: subSubcategory.slug,
              language: 'es',
              parent_id: insertedSub.id,
              level: 2,
              is_active: true,
              sort_order: 0
            };

            const { data: insertedSubSub, error: subSubError } = await supabase
              .from('categories')
              .insert(subSubData)
              .select()
              .single();

            if (subSubError) {
              console.error('❌ Erreur insertion sous-sous-catégorie:', subSubError);
              continue;
            }
            
            totalCategories++;
            console.log(`    ✅ Sous-sous-catégorie insérée: ${insertedSubSub.name}`);

            // Insertion niveau 3
            for (const level3Category of subSubcategory.subcategories) {
              const level3Data = {
                name: level3Category.name,
                slug: level3Category.slug,
                language: 'es',
                parent_id: insertedSubSub.id,
                level: 3,
                is_active: true,
                sort_order: 0
              };

              const { data: insertedLevel3, error: level3Error } = await supabase
                .from('categories')
                .insert(level3Data)
                .select()
                .single();

              if (level3Error) {
                console.error('❌ Erreur insertion catégorie niveau 3:', level3Error);
                continue;
              }
              
              totalCategories++;
              console.log(`      ✅ Catégorie niveau 3 insérée: ${insertedLevel3.name}`);
            }
          } else {
            // Insertion niveau 2 sans sous-catégories niveau 3
            const subSubData = {
              name: subSubcategory.name,
              slug: subSubcategory.slug,
              language: 'es',
              parent_id: insertedSub.id,
              level: 2,
              is_active: true,
              sort_order: 0
            };

            const { data: insertedSubSub, error: subSubError } = await supabase
              .from('categories')
              .insert(subSubData)
              .select()
              .single();

            if (subSubError) {
              console.error('❌ Erreur insertion sous-sous-catégorie:', subSubError);
              continue;
            }
            
            totalCategories++;
            console.log(`    ✅ Sous-sous-catégorie insérée: ${insertedSubSub.name}`);
          }
        }
      }
    }

    console.log(`\n🎉 Migration Informatique & Électronique ES terminée!`);
    console.log(`📊 Total catégories migrées: ${totalCategories}`);
    
  } catch (error) {
    console.error('❌ Migration échouée:', error);
  }
}

// Exécuter la migration
migrateInformatiqueElectroniqueES();