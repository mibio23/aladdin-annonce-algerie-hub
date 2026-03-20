const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY);

// Function to generate UUID
function generateUUID() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

// Function to convert hierarchical structure to flat array with UUIDs
function convertToFlatArray(categories, lang) {
  const flatArray = [];
  const uuidMap = {};

  function createUUIDs(categories, parentId = null) {
    categories.forEach(category => {
      const categoryId = `${category.id}-${lang}`;
      uuidMap[categoryId] = generateUUID();
      
      if (category.subcategories) {
        createUUIDs(category.subcategories, category.id);
      }
    });
  }

  function flattenCategories(categories, parentId = null, level = 0) {
    categories.forEach(category => {
      const categoryId = `${category.id}-${lang}`;
      const parentCategoryId = parentId ? `${parentId}-${lang}` : null;
      
      const categoryData = {
        id: category.id,
        name: category.name,
        slug: category.slug,
        id_uuid: uuidMap[categoryId],
        parent_id_uuid: parentId ? uuidMap[parentCategoryId] : null,
        level: level,
        language: lang
      };
      
      flatArray.push(categoryData);
      
      if (category.subcategories) {
        flattenCategories(category.subcategories, category.id, level + 1);
      }
    });
  }

  createUUIDs(categories);
  flattenCategories(categories);
  
  return flatArray;
}

// Delete all existing categories
async function deleteAllCategories() {
  console.log('🗑️ Deleting all existing categories...');
  
  try {
    const { data: existingCategories } = await supabase
      .from('categories')
      .select('id_uuid');
    
    console.log(`📊 Found ${existingCategories.length} categories to delete`);
    
    if (existingCategories.length === 0) {
      console.log('✅ No categories to delete');
      return true;
    }
    
    const { error } = await supabase
      .from('categories')
      .delete()
      .neq('id_uuid', '00000000-0000-0000-0000-000000000000');
    
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
    const languages = ['fr', 'en', 'ar', 'de', 'es', 'it'];
    let totalInserted = 0;
    
    for (const lang of languages) {
      console.log(`\n🌍 Migrating categories for language: ${lang}`);
      
      // Get the complete structure for this language
      const categoriesForLang = getCompleteStructureForLanguage(lang);
      
      if (!categoriesForLang || categoriesForLang.length === 0) {
        console.log(`⚠️ No structure defined for ${lang}, skipping...`);
        continue;
      }
      
      const categoriesToInsert = convertToFlatArray(categoriesForLang, lang);
      console.log(`📊 Found ${categoriesToInsert.length} categories for ${lang}`);
      
      if (categoriesToInsert.length === 0) {
        console.log(`⚠️ No categories to insert for ${lang}`);
        continue;
      }
      
      // Sort by level to ensure parent categories are created first
      categoriesToInsert.sort((a, b) => a.level - b.level);
      
      // Insert in batches
      const batchSize = 50;
      for (let i = 0; i < categoriesToInsert.length; i += batchSize) {
        const batch = categoriesToInsert.slice(i, i + batchSize);
        
        const { data, error } = await supabase
          .from('categories')
          .insert(batch)
          .select();
        
        if (error) {
          console.error(`❌ Error inserting batch for ${lang}:`, error);
          throw error;
        }
        
        console.log(`✅ Inserted batch ${Math.floor(i / batchSize) + 1}/${Math.ceil(categoriesToInsert.length / batchSize)} for ${lang}`);
      }
      
      totalInserted += categoriesToInsert.length;
    }
    
    console.log(`\n✅ Migration completed successfully!`);
    console.log(`📈 Total categories inserted: ${totalInserted}`);
    
    // Show final summary
    const { data: finalCategories } = await supabase
      .from('categories')
      .select('*');
    
    console.log(`\n📊 Final summary:`);
    console.log(`Total categories in database: ${finalCategories.length}`);
    
    languages.forEach(lang => {
      const langCategories = finalCategories.filter(cat => cat.language === lang);
      console.log(`  ${lang}: ${langCategories.length} categories`);
    });
    
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  }
}

// Function to get complete structure for a specific language
function getCompleteStructureForLanguage(lang) {
  // This will be populated with the actual structure from the files
  // For now, I'll create a placeholder that will be replaced with actual imports
  
  // Placeholder structure - will be replaced with actual imports
  const placeholderStructure = [
    {
      id: 'immobilier-maison',
      name: lang === 'fr' ? 'Immobilier & Maison' : 
            lang === 'en' ? 'Real Estate & Home' :
            lang === 'ar' ? 'العقارات والمنزل' :
            lang === 'de' ? 'Immobilien & Haus' :
            lang === 'es' ? 'Inmobiliaria & Hogar' :
            'Immobiliare & Casa',
      slug: 'immobilier-maison',
      subcategories: [
        {
          id: 'ventes-immobilieres',
          name: lang === 'fr' ? 'Ventes Immobilières' : 
                lang === 'en' ? 'Real Estate Sales' :
                lang === 'ar' ? 'مبيعات العقارات' :
                lang === 'de' ? 'Immobilienverkäufe' :
                lang === 'es' ? 'Ventas Inmobiliarias' :
                'Vendite Immobiliari',
          slug: 'ventes-immobilieres',
          subcategories: [
            { id: 'appartements-a-vendre', name: 'Appartements à vendre', slug: 'appartements-a-vendre' },
            { id: 'studios', name: 'Studios', slug: 'studios' },
            { id: 'f2', name: 'F2', slug: 'f2' },
            { id: 'f3', name: 'F3', slug: 'f3' },
            { id: 'f4', name: 'F4', slug: 'f4' },
            { id: 'f5-plus', name: 'F5+', slug: 'f5-plus' },
            { id: 'maisons-a-vendre', name: 'Maisons à vendre', slug: 'maisons-a-vendre' },
            { id: 'villas', name: 'Villas', slug: 'villas' },
            { id: 'duplex', name: 'Duplex', slug: 'duplex' },
            { id: 'terrains-constructibles', name: 'Terrains constructibles', slug: 'terrains-constructibles' }
          ]
        }
      ]
    },
    {
      id: 'telephonie',
      name: lang === 'fr' ? 'Téléphonie' : 
            lang === 'en' ? 'Telephony' :
            lang === 'ar' ? 'الاتصالات' :
            lang === 'de' ? 'Telefonie' :
            lang === 'es' ? 'Telefonía' :
            'Telefonia',
      slug: 'telephonie',
      subcategories: [
        {
          id: 'telephones-mobiles',
          name: lang === 'fr' ? 'Téléphones Mobiles' : 
                lang === 'en' ? 'Mobile Phones' :
                lang === 'ar' ? 'الهواتف المحمولة' :
                lang === 'de' ? 'Handys' :
                lang === 'es' ? 'Teléfonos Móviles' :
                'Cellulari',
          slug: 'telephones-mobiles',
          subcategories: [
            { id: 'smartphones', name: 'Smartphones', slug: 'smartphones' },
            { id: 'iphone', name: 'iPhone', slug: 'iphone' },
            { id: 'samsung', name: 'Samsung', slug: 'samsung' },
            { id: 'huawei', name: 'Huawei', slug: 'huawei' },
            { id: 'xiaomi', name: 'Xiaomi', slug: 'xiaomi' }
          ]
        }
      ]
    }
  ];
  
  return placeholderStructure;
}

// Run the migration
migrateCompleteStructure();