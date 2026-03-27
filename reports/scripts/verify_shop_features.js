
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
const path = require('path');

// Load environment variables from .env file
dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_KEY || process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase credentials in .env file');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyShopFeatures() {
  console.log('🔍 Starting verification of Shop Features (Favorites & Ratings)...');
  console.log('-------------------------------------------------------------');

  let allChecksPassed = true;

  // 1. Verify 'shops' table columns
  console.log('\n1️⃣  Verifying public.shops columns...');
  // We select columns. If one is missing, Supabase API (PostgREST) usually returns an error like "Could not find the '...' column of 'shops' in the schema cache"
  const { data: shopsColumns, error: shopsError } = await supabase
    .from('shops')
    .select('followers_count, rating, review_count, commune')
    .limit(1);

  if (shopsError) {
    console.error('❌ Error checking shops columns:', shopsError.message);
    console.error('   Hint: Did you run the migrations to add "followers_count", "rating", etc.?');
    allChecksPassed = false;
  } else {
    console.log('✅ Columns (followers_count, rating, review_count, commune) exist in shops table.');
  }

  // 2. Verify 'shop_favorites' table
  console.log('\n2️⃣  Verifying public.shop_favorites table...');
  const { error: favoritesError } = await supabase
    .from('shop_favorites')
    .select('id')
    .limit(1);

  if (favoritesError && favoritesError.code !== 'PGRST116') {
    console.error('❌ Error accessing shop_favorites:', favoritesError.message);
    allChecksPassed = false;
  } else {
    console.log('✅ Table public.shop_favorites exists and is accessible.');
  }

  // 3. Verify 'shop_reviews' table
  console.log('\n3️⃣  Verifying public.shop_reviews table...');
  const { error: reviewsError } = await supabase
    .from('shop_reviews')
    .select('id')
    .limit(1);

  if (reviewsError && reviewsError.code !== 'PGRST116') {
    console.error('❌ Error accessing shop_reviews:', reviewsError.message);
    allChecksPassed = false;
  } else {
    console.log('✅ Table public.shop_reviews exists and is accessible.');
  }

  console.log('-------------------------------------------------------------');
  if (allChecksPassed) {
    console.log('🎉 ALL CHECKS PASSED! Database schema is ready.');
  } else {
    console.error('⚠️  SOME CHECKS FAILED. Please review the errors above.');
    process.exit(1);
  }
}

verifyShopFeatures().catch(err => {
  console.error('Unexpected error:', err);
  process.exit(1);
});
