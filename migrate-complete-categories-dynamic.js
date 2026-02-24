import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

// Import all category structures dynamically
const allCategoryStructures = {
  fr: [
    () => import('./src/data/categories/megaMenuStructures/immobilierMaison/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/telephonie/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/informatiqueElectronique/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/vehiculesEquipements/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/veloCyclismeEquipements/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/nautisme/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/btpEnginsConstruction/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/vetementHommeFemmeSousVetement/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/bebePuericulture/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/modeEtAccessoires/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/sacsEtBagages/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/electromenager/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/mobilierEtDecoration/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/imageSonEquipementMusique/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/jeuxVideoConsoles/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/quincaillerieGenerale/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/agricultureAgroalimentaire/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/parapharmacieProduitChimique/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/santeBeaute/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/gastronomieAlimentation/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/artisanatTraditionnelAlgerien/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/voyagesTourisme/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/evenementsBilletterie/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/emploiCarriere/fr.ts'),
    () => import('./src/data/categories/megaMenuStructures/educationLoisirs/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/animauxAccessoires/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/finance/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/servicesSupport/fr.tsx'),
    () => import('./src/data/categories/megaMenuStructures/echangesPartage/fr.tsx')
  ],
  en: [
    () => import('./src/data/categories/megaMenuStructures/immobilierMaison/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/telephonie/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/informatiqueElectronique/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/vehiculesEquipements/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/veloCyclismeEquipements/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/nautisme/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/btpEnginsConstruction/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/vetementHommeFemmeSousVetement/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/bebePuericulture/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/modeEtAccessoires/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/sacsEtBagages/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/electromenager/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/mobilierEtDecoration/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/imageSonEquipementMusique/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/jeuxVideoConsoles/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/quincaillerieGenerale/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/agricultureAgroalimentaire/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/parapharmacieProduitChimique/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/santeBeaute/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/gastronomieAlimentation/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/artisanatTraditionnelAlgerien/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/voyagesTourisme/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/evenementsBilletterie/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/emploiCarriere/en.ts'),
    () => import('./src/data/categories/megaMenuStructures/educationLoisirs/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/animauxAccessoires/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/finance/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/servicesSupport/en.tsx'),
    () => import('./src/data/categories/megaMenuStructures/echangesPartage/en.tsx')
  ]
  // Add other languages similarly...
};

// Function to convert hierarchical structure to flat array
function convertToFlatArray(categories, lang, parentPath = '') {
  const flatArray = [];

  function flattenCategories(categories, parentId = null, level = 0, currentPath = '') {
    categories.forEach(category => {
      // Create unique slug by including parent path
      const uniqueSlug = currentPath ? `${currentPath}-${category.slug}-${lang}` : `${category.slug}-${lang}`;
      
      const categoryData = {
        name: category.name,
        slug: uniqueSlug,
        position_order: level,
        is_active: true,
        // We'll handle parent-child relationships after insertion
        original_id: `${category.id}-${lang}`,
        parent_original_id: parentId ? `${parentId}-${lang}` : null
      };
      
      flatArray.push(categoryData);
      
      if (category.subcategories) {
        const newPath = currentPath ? `${currentPath}-${category.slug}` : category.slug;
        flattenCategories(category.subcategories, category.id, level + 1, newPath);
      }
    });
  }

  flattenCategories(categories);
  
  return flatArray;
}

// Delete all existing categories
async function deleteAllCategories() {
  console.log('🗑️ Deleting all existing categories...');
  
  try {
    const { data: existingCategories } = await supabase
      .from('categories')
      .select('id');
    
    console.log(`📊 Found ${existingCategories.length} categories to delete`);
    
    if (existingCategories.length === 0) {
      console.log('✅ No categories to delete');
      return true;
    }
    
    const { error } = await supabase
      .from('categories')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000');
    
    if (error) {
      console.error('❌ Error deleting categories:', error);
      return false;
    }
    
    console.log('✅ All categories deleted successfully');
    return true;
    
  } catch (error) {
    console.error('❌ Deletion failed:', error);
    return false;
  }
}

// Main migration function
async function migrateCompleteStructure() {
  console.log('🔄 Starting complete category migration...');
  
  try {
    // Delete existing categories first
    const deletionSuccess = await deleteAllCategories();
    if (!deletionSuccess) {
      throw new Error('Failed to delete existing categories');
    }
    
    console.log('\n📋 Starting migration of complete category structure...');
    
    // Languages to migrate
    const languages = ['fr', 'en'];
    let totalInserted = 0;
    
    for (const lang of languages) {
      console.log(`\n🌍 Migrating categories for language: ${lang}`);
      
      if (!allCategoryStructures[lang]) {
        console.log(`⚠️ No structure defined for ${lang}, skipping...`);
        continue;
      }
      
      let categoriesToInsert = [];
      
      // Load all categories for this language
      for (const importFunc of allCategoryStructures[lang]) {
        try {
          const module = await importFunc();
          const categoryData = Object.values(module)[0]; // Get the first export
          if (categoryData) {
            const flattened = convertToFlatArray([categoryData], lang);
            categoriesToInsert = categoriesToInsert.concat(flattened);
          }
        } catch (error) {
          console.error(`❌ Error loading category for ${lang}:`, error.message);
        }
      }
      
      console.log(`📊 Found ${categoriesToInsert.length} categories for ${lang}`);
      
      if (categoriesToInsert.length === 0) {
        console.log(`⚠️ No categories to insert for ${lang}`);
        continue;
      }
      
      // Sort by position_order to ensure parent categories are created first
      categoriesToInsert.sort((a, b) => a.position_order - b.position_order);
      
      // Create a mapping to track inserted categories
      const insertedCategories = {};
      
      // Insert categories one by one to handle parent-child relationships
      for (const category of categoriesToInsert) {
        const categoryData = {
          name: category.name,
          slug: category.slug,
          position_order: category.position_order,
          is_active: category.is_active
        };
        
        // If this category has a parent, set the parent_id
        if (category.parent_original_id && insertedCategories[category.parent_original_id]) {
          categoryData.parent_id = insertedCategories[category.parent_original_id].id;
        }
        
        const { data, error } = await supabase
          .from('categories')
          .insert(categoryData)
          .select();
        
        if (error) {
          console.error(`❌ Error inserting category ${category.name} for ${lang}:`, error);
          throw error;
        }
        
        if (data && data.length > 0) {
          insertedCategories[category.original_id] = data[0];
        }
      }
      
      totalInserted += categoriesToInsert.length;
      console.log(`✅ Successfully migrated ${categoriesToInsert.length} categories for ${lang}`);
    }
    
    console.log(`\n✅ Migration completed successfully!`);
    console.log(`📈 Total categories inserted: ${totalInserted}`);
    
    // Show final summary
    const { data: finalCategories } = await supabase
      .from('categories')
      .select('*');
    
    console.log(`\n📊 Final summary:`);
    console.log(`Total categories in database: ${finalCategories.length}`);
    
    // Group by language based on slug suffix
    languages.forEach(lang => {
      const langCategories = finalCategories.filter(cat => cat.slug.endsWith(`-${lang}`));
      console.log(`  ${lang}: ${langCategories.length} categories`);
    });
    
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  }
}

// Run the migration
migrateCompleteStructure().catch(console.error);