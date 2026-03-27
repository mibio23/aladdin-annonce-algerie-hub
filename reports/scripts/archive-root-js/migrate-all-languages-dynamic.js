import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

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

// Function to delete all existing categories
async function deleteAllCategories() {
  console.log('🗑️ Deleting all existing categories...');
  
  try {
    // First, let's check what we have
    const { data: existingCategories, error: checkError } = await supabase
      .from('categories')
      .select('id, name, slug');
    
    if (checkError) {
      console.error('❌ Error checking existing categories:', checkError);
      return false;
    }
    
    console.log(`📊 Found ${existingCategories.length} existing categories`);
    
    if (existingCategories.length === 0) {
      console.log('✅ No categories to delete');
      return true;
    }
    
    // Delete all categories (Supabase will handle cascade delete for parent_id references)
    const { error: deleteError } = await supabase
      .from('categories')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all rows
    
    if (deleteError) {
      console.error('❌ Error deleting categories:', deleteError);
      return false;
    }
    
    console.log('✅ Successfully deleted all existing categories');
    return true;
    
  } catch (error) {
    console.error('❌ Error in deleteAllCategories:', error);
    return false;
  }
}

// Main migration function
async function migrateAllLanguages() {
  console.log('🔄 Starting complete category migration for all languages...');
  
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
      
      if (!allCategoryMenus[lang]) {
        console.log(`⚠️ No structure defined for ${lang}, skipping...`);
        continue;
      }
      
      const categoriesToInsert = convertToFlatArray(allCategoryMenus[lang], lang);
      console.log(`📊 Found ${categoriesToInsert.length} categories for ${lang}`);
      
      if (categoriesToInsert.length === 0) {
        console.log(`⚠️ No categories to insert for ${lang}`);
        continue;
      }
      
      // Sort by position_order to ensure parent categories are created first
      categoriesToInsert.sort((a, b) => a.position_order - b.position_order);
      
      // Create a mapping of original_id to actual database ID
      const idMapping = {};
      let insertedCount = 0;
      
      // Insert categories in batches to handle parent-child relationships
      for (const category of categoriesToInsert) {
        try {
          // Prepare the data for insertion
          const insertData = {
            name: category.name,
            slug: category.slug,
            position_order: category.position_order,
            is_active: category.is_active,
            parent_id: category.parent_original_id ? idMapping[category.parent_original_id] : null
          };
          
          const { data: insertedCategory, error: insertError } = await supabase
            .from('categories')
            .insert(insertData)
            .select('id')
            .single();
          
          if (insertError) {
            console.error(`❌ Error inserting category '${category.name}':`, insertError);
            continue;
          }
          
          // Store the mapping of original_id to actual database ID
          idMapping[category.original_id] = insertedCategory.id;
          insertedCount++;
          
          if (insertedCount % 50 === 0) {
            console.log(`⏳ Inserted ${insertedCount}/${categoriesToInsert.length} categories for ${lang}...`);
          }
          
        } catch (error) {
          console.error(`❌ Error inserting category '${category.name}':`, error);
        }
      }
      
      console.log(`✅ Successfully inserted ${insertedCount} categories for ${lang}`);
      totalInserted += insertedCount;
    }
    
    console.log(`\n🎉 Migration completed successfully!`);
    console.log(`📊 Total categories inserted across all languages: ${totalInserted}`);
    
    // Final verification
    const { data: finalCategories, error: finalError } = await supabase
      .from('categories')
      .select('id, name, slug, position_order, parent_id')
      .order('position_order');
    
    if (finalError) {
      console.error('❌ Error in final verification:', finalError);
    } else {
      console.log(`\n📋 Final verification: ${finalCategories.length} total categories in database`);
      
      // Group by language (based on slug suffix)
      const langCounts = {};
      finalCategories.forEach(cat => {
        const lang = cat.slug.split('-').pop();
        langCounts[lang] = (langCounts[lang] || 0) + 1;
      });
      
      console.log('📊 Categories per language:');
      Object.entries(langCounts).forEach(([lang, count]) => {
        console.log(`  ${lang}: ${count} categories`);
      });
    }
    
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  }
}

// Run the migration
migrateAllLanguages().catch(console.error);