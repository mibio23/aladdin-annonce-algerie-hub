import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function detailedCategoryCheck() {
  console.log('🔍 Detailed Category Migration Verification\n');
  
  try {
    // Get total count
    const { count: totalCount } = await supabase
      .from('categories')
      .select('*', { count: 'exact', head: true });
    
    console.log(`📊 Total categories in database: ${totalCount}\n`);
    
    // Get breakdown by language
    const languages = ['fr', 'en', 'ar', 'de', 'es', 'it'];
    
    for (const lang of languages) {
      const { count: langCount } = await supabase
        .from('categories')
        .select('*', { count: 'exact', head: true })
        .like('slug', `%-${lang}`);
      
      console.log(`  ${lang.toUpperCase()}: ${langCount} categories`);
      
      // Show first 3 categories for each language
      const { data: sampleCategories } = await supabase
        .from('categories')
        .select('name, slug')
        .like('slug', `%-${lang}`)
        .limit(3);
      
      if (sampleCategories && sampleCategories.length > 0) {
        sampleCategories.forEach(cat => {
          console.log(`    - ${cat.name} (${cat.slug})`);
        });
      }
      console.log('');
    }
    
    // Check for hierarchical structure (parent-child relationships)
    const { data: childCategories } = await supabase
      .from('categories')
      .select('name, slug, parent_id')
      .not('parent_id', 'is', null);
    
    console.log(`🔗 Child categories with parent relationships: ${childCategories.length}`);
    
    if (childCategories.length > 0) {
      console.log('Sample parent-child relationships:');
      childCategories.slice(0, 5).forEach(cat => {
        console.log(`    - ${cat.name} (${cat.slug}) -> Parent ID: ${cat.parent_id}`);
      });
    }
    
    console.log('\n✅ Migration verification completed!');
    
  } catch (error) {
    console.error('❌ Verification failed:', error);
  }
}

detailedCategoryCheck();