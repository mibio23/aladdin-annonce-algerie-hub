import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

// Load environment variables
dotenv.config();

// Initialize Supabase client
const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.VITE_SUPABASE_ANON_KEY
);

// Import the Italian source file
import { informatiqueElectroniqueIt } from './src/data/categories/megaMenuStructures/informatiqueElectronique/it.tsx';

async function migrateInformatiqueElectroniqueIT() {
  try {
    console.log('Starting migration of Italian Informatique & Électronique categories...');

    // Insert main category
    const { data: mainCategory, error: mainError } = await supabase
      .from('categories')
      .insert({
        id: informatiqueElectroniqueIt.id,
        name: informatiqueElectroniqueIt.name,
        slug: informatiqueElectroniqueIt.slug,
        level: 0,
        language: 'it'
      })
      .select()
      .single();

    if (mainError) {
      console.error('Error inserting main category:', mainError);
      return;
    }
    console.log('✅ Main category inserted:', mainCategory.name);

    // Insert subcategories (level 1)
    for (const subcategory of informatiqueElectroniqueIt.subcategories || []) {
      const { data: subCat, error: subError } = await supabase
        .from('categories')
        .insert({
          id: subcategory.id,
          name: subcategory.name,
          slug: subcategory.slug,
          parent_id: mainCategory.id,
          level: 1,
          language: 'it'
        })
        .select()
        .single();

      if (subError) {
        console.error('Error inserting subcategory:', subError);
        continue;
      }
      console.log('✅ Subcategory inserted:', subCat.name);

      // Insert sub-subcategories (level 2)
      for (const subSubcategory of subcategory.subcategories || []) {
        const { data: subSubCat, error: subSubError } = await supabase
          .from('categories')
          .insert({
            id: subSubcategory.id,
            name: subSubcategory.name,
            slug: subSubcategory.slug,
            parent_id: subCat.id,
            level: 2,
            language: 'it'
          })
          .select()
          .single();

        if (subSubError) {
          console.error('Error inserting sub-subcategory:', subSubError);
          continue;
        }
        console.log('✅ Sub-subcategory inserted:', subSubCat.name);

        // Insert level 3 categories if they exist
        for (const level3Category of subSubcategory.subcategories || []) {
          const { data: level3Cat, error: level3Error } = await supabase
            .from('categories')
            .insert({
              id: level3Category.id,
              name: level3Category.name,
              slug: level3Category.slug,
              parent_id: subSubCat.id,
              level: 3,
              language: 'it'
            })
            .select()
            .single();

          if (level3Error) {
            console.error('Error inserting level 3 category:', level3Error);
            continue;
          }
          console.log('✅ Level 3 category inserted:', level3Cat.name);
        }
      }
    }

    console.log('✅ Italian Informatique & Électronique migration completed successfully!');
  } catch (error) {
    console.error('Migration failed:', error);
  }
}

// Execute the migration
migrateInformatiqueElectroniqueIT();