require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

// Configuration Supabase
const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;
const serviceRoleKey = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

// Utiliser la clé de service si disponible pour contourner RLS
const supabase = serviceRoleKey 
  ? createClient(supabaseUrl, serviceRoleKey) 
  : createClient(supabaseUrl, supabaseKey);

// Client spécifique pour l'introspection du schéma
const supabaseMeta = serviceRoleKey 
  ? createClient(supabaseUrl, serviceRoleKey, { db: { schema: 'information_schema' } })
  : null;

console.log(serviceRoleKey ? '🔑 Mode Admin (Service Role)' : '👤 Mode Standard (Anon Key)');

if (!supabaseMeta) {
    console.warn("⚠️ Attention: Sans clé de service (Service Role), l'introspection directe de 'information_schema' peut échouer.");
}

// Définition des schémas attendus (Basé sur le code Frontend CreateAnnouncementComplete.tsx)
const expectedSchemas = {
  // TABLE PRINCIPALE
  "announcements": [
    "title", "description", "price", "currency", "condition", "category_id", "subcategory_id", 
    "user_id", "wilaya", "commune", "address", "latitude", "longitude", "phone_number", 
    "email", "website", "images", "image_urls", "image_url", "is_urgent", "is_negotiable", 
    "expires_at", "brand", "model", "color", "dimensions", "weight", "purchase_year", 
    "has_invoice", "warranty_duration", "included_accessories", "selling_reason", 
    "cash_discount", "exchange_possible", "original_price", "delivery_available", 
    "delivery_areas", "delivery_fees", "delivery_location_name", "packaging_info", 
    "availability_date", "product_video", "detail_photos", "documentation", 
    "animal_species", "animal_breed", "animal_age", "animal_age_unit", "animal_gender", 
    "animal_vaccinated", "animal_dewormed", "animal_pedigree", "animal_sterilized", 
    "finance_service_type", "finance_currency", "finance_amount", "finance_exchange_rate", 
    "finance_payment_methods", "service_type", "service_availability", "service_experience", 
    "service_price_model", "service_location_type", "exchange_type", "exchange_offered", 
    "exchange_wanted", "exchange_condition", "exchange_value", "created_at", "status", 
    "contact_count", "view_count", "type", "premium_end_at"
  ],

  // TABLES SPÉCIFIQUES
  "computer_details": ["announcement_id", "processor", "ram", "storage", "screen_size", "graphics_card", "os"],
  "phone_details": ["announcement_id", "brand", "model", "storage", "ram", "screen_size", "os", "color"],
  "home_furniture_details": ["announcement_id", "material", "type", "color", "dimensions", "weight"],
  "bike_details": ["announcement_id", "type", "frame_size", "wheel_size", "frame_material", "electric", "brand", "model"],
  "boat_details": ["announcement_id", "type", "length", "width", "motor_type", "motor_power", "hours", "cabin", "brand", "model"],
  "education_loisirs_details": [
    "announcement_id", "education_subject", "education_level", "education_mode", "sport_type", "sport_brand", 
    "sport_condition", "art_type", "art_material", "book_type", "book_language", "book_condition", 
    "game_type", "game_players", "toy_age_group", "toy_material", "club_association_type", 
    "club_activity_type", "club_sport_type", "club_age_group", "club_audience", "club_theme", 
    "club_format", "club_genre"
  ],
  "construction_details": ["announcement_id", "type", "brand", "model", "year", "hours", "weight", "power"],
  "clothing_details": ["announcement_id", "type", "size", "brand", "gender", "material", "condition"],
  "vehicle_details": [
    "announcement_id", "brand", "model", "version", "registration_date", "mileage", "fuel_type", 
    "fiscal_power", "gearbox", "equipment", "technical_control", "grey_card_crossed"
  ],
  "real_estate_details": [
    "announcement_id", "property_type", "surface", "rooms", "bedrooms", "bathrooms", "floor", 
    "total_floors", "furnished", "parking", "garage", "garden", "pool", "elevator", "balcony", 
    "terrace", "view_type", "facades", "zoning", "with_permit", "capacity", "papers", 
    "payment_period", "specifications"
  ],
  "baby_details": ["announcement_id", "type", "size", "brand", "condition_detail"],
  "fashion_details": ["announcement_id", "clothing_type", "size", "gender", "material", "brand"],
  "bags_details": ["announcement_id", "type", "material", "brand"],
  "appliances_details": ["announcement_id", "type", "brand", "energy_class", "condition_detail"],
  "multimedia_details": ["announcement_id", "device_type", "brand", "technology"],
  "gaming_details": ["announcement_id", "product_type", "platform", "genre"],
  "hardware_details": ["announcement_id", "type", "brand"],
  "agriculture_details": ["announcement_id", "type", "origin"],
  "parapharmacy_details": ["announcement_id", "type", "brand"],
  "beauty_details": ["announcement_id", "type", "brand", "gender"],
  "gastronomy_details": ["announcement_id", "type", "origin", "diet", "unit", "order_mode"],
  "crafts_details": ["announcement_id", "type", "material", "origin"],
  "travel_details": ["announcement_id", "travel_type", "destination", "services", "amenities", "stars"],
  "event_details": ["announcement_id", "event_type", "format", "access_type"],
  "job_details": ["announcement_id", "job_type", "contract_type", "experience_level", "work_regime"]
};

async function verifyAllSchemas() {
  console.log('\n🔍 Démarrage de l\'audit complet du schéma de base de données...\n');
  
  let totalTables = 0;
  let missingTables = 0;
  let totalColumns = 0;
  let missingColumns = 0;
  const missingReport = [];

  for (const [tableName, expectedColumns] of Object.entries(expectedSchemas)) {
    totalTables++;
    process.stdout.write(`Vérification de la table '${tableName}'... `);

    // 1. Vérifier l'existence de la table
    const { error: tableError } = await supabase
      .from(tableName)
      .select('*')
      .limit(0);

    if (tableError) {
      if (tableError.code === '42P01' || tableError.message.includes('does not exist')) {
        console.log('❌ MANQUANTE');
        missingTables++;
        missingReport.push(`Table MANQUANTE: ${tableName}`);
        // Ajouter toutes les colonnes comme manquantes
        expectedColumns.forEach(col => {
          missingReport.push(`  - Colonne manquante: ${tableName}.${col} (Table absente)`);
          missingColumns++;
        });
        continue;
      } else {
        console.log('❌ ERREUR ACCÈS');
        console.error(`  Erreur Supabase: ${tableError.message}`);
        continue;
      }
    }

    console.log('✅ EXISTE');

    // 2. Vérifier les colonnes
    // On essaie de sélectionner toutes les colonnes attendues
    const { error: columnsError } = await supabase
      .from(tableName)
      .select(expectedColumns.join(','))
      .limit(0);

    if (!columnsError) {
       // Tout est OK
       // console.log(`  ✨ Toutes les colonnes (${expectedColumns.length}) sont présentes.`);
    } else {
       // Si erreur, on vérifie colonne par colonne pour identifier les manquantes
       console.log('  ⚠️  Des colonnes semblent manquantes, analyse détaillée...');
       
       for (const col of expectedColumns) {
         totalColumns++;
         const { error: colError } = await supabase
           .from(tableName)
           .select(col)
           .limit(0);
         
         if (colError) {
            console.log(`  ❌ Colonne manquante: ${col}`);
            missingColumns++;
            missingReport.push(`Colonne MANQUANTE: ${tableName}.${col}`);
         }
       }
    }
  }

  console.log('\n' + '='.repeat(50));
  console.log('RÉSULTAT DE L\'AUDIT');
  console.log('='.repeat(50));
  console.log(`Tables vérifiées: ${totalTables}`);
  console.log(`Tables manquantes: ${missingTables}`);
  console.log(`Colonnes vérifiées: ${totalColumns}`);
  console.log(`Colonnes manquantes: ${missingColumns}`);

  if (missingReport.length > 0) {
    console.log('\n🚨 DÉTAILS DES MANQUEMENTS 🚨');
    missingReport.forEach(item => console.log(item));
    console.log('\n⚠️  ACTION REQUISE: Vous devez créer ces tables ou colonnes dans Supabase.');
  } else {
    console.log('\n🎉 SUCCÈS TOTAL: Le schéma de la base de données correspond parfaitement au code Frontend.');
  }
}

verifyAllSchemas();
