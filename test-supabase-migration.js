const fs = require('fs');

console.log('🧪 Tests locaux (structure + tables de détails)\n');

const requiredFiles = [
  'verify_migration.js',
  'src/pages/CreateAnnouncementComplete.tsx',
  'supabase/migrations/20240523_create_vehicle_details.sql',
  'supabase/migrations/20250601_create_real_estate_details.sql',
  'supabase/migrations/20251208000000_create_category_details_tables.sql',
  'supabase/migrations/20251209000000_create_additional_category_details_tables.sql',
  'supabase/migrations/20251217000000_fix_education_loisirs_details_relationship.sql',
];

console.log('📁 Test 1: Fichiers requis');
let filesOk = true;
for (const file of requiredFiles) {
  const exists = fs.existsSync(file);
  console.log(`  ${exists ? '✅' : '❌'} ${file}`);
  if (!exists) filesOk = false;
}

console.log('\n🧩 Test 2: Tables de détails référencées par le frontend');
const createAnnouncementPath = 'src/pages/CreateAnnouncementComplete.tsx';
const createAnnouncementContent = fs.readFileSync(createAnnouncementPath, 'utf8');

const detailTables = [
  'computer_details',
  'phone_details',
  'home_furniture_details',
  'bike_details',
  'boat_details',
  'education_loisirs_details',
  'construction_details',
  'clothing_details',
  'vehicle_details',
  'real_estate_details',
  'baby_details',
  'fashion_details',
  'bags_details',
  'appliances_details',
  'multimedia_details',
  'gaming_details',
  'hardware_details',
  'agriculture_details',
  'parapharmacy_details',
  'beauty_details',
  'gastronomy_details',
  'crafts_details',
  'travel_details',
  'event_details',
  'job_details',
];

let tablesReferencedOk = true;
for (const table of detailTables) {
  const referenced = createAnnouncementContent.includes(`.from('${table}')`) || createAnnouncementContent.includes(`.from(\"${table}\")`);
  console.log(`  ${referenced ? '✅' : '❌'} ${table}`);
  if (!referenced) tablesReferencedOk = false;
}

console.log('\n🎉 RÉSUMÉ');
const allOk = filesOk && tablesReferencedOk;
console.log(`  ✅ Résultat: ${allOk ? 'OK' : 'KO'}`);

if (!allOk) process.exit(1);
