
const { createClient } = require('@supabase/supabase-js');
const path = require('path');
const fs = require('fs');
require('dotenv').config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('❌ Erreur: VITE_SUPABASE_URL ou SUPABASE_SERVICE_KEY manquant dans le fichier .env');
  console.log('Vérifiez que le fichier .env contient bien ces variables.');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function checkShopsSchema() {
  console.log('🔍 Vérification de la table "shops" en direct sur Supabase...');
  console.log(`📡 URL: ${supabaseUrl}`);

  // Liste des colonnes critiques que nous avons ajoutées récemment
  const columnsToCheck = [
    'name',
    'description',
    'shop_status',
    'wilaya',
    'commune',
    'address',
    'postal_code',
    'gps_coordinates',
    'phone_numbers',
    'landline_phone',
    'whatsapp_number',
    'secondary_email',
    'website',
    'social_media',
    'logo_url',
    'banner_url',
    'product_image_urls',
    'product_video_urls',
    'presentation_video',
    'interior_photos',
    'catalog_pdf',
    'useful_links',
    'is_online',
    'is_physical',
    'is_verified',
    'opening_hours',
    'delivery_options',
    'payment_methods',
    'warranty_info',
    'after_sales_service',
    'main_category',
    'subcategories',
    'keywords',
    'brands_distributed',
    'view_count',
    'shop_number'
  ];

  try {
    // Tentative de sélection de toutes ces colonnes sur 0 ligne
    // Si une colonne n'existe pas, Supabase (PostgREST) renverra une erreur 400
    const { data, error } = await supabase
      .from('shops')
      .select(columnsToCheck.join(','))
      .limit(1);

    if (error) {
      console.error('\n❌ ERREUR DE SCHÉMA DÉTECTÉE :');
      console.error('Message Supabase:', error.message);
      
      // Essayer de détecter quelle colonne pose problème (souvent Supabase le dit)
      if (error.message.includes('column') && error.message.includes('does not exist')) {
         console.log('\n💡 DIAGNOSTIC : Il manque des colonnes dans votre base de données.');
         console.log('👉 ACTION REQUISE : Exécutez le script SQL "update_shops_schema.sql" dans l\'interface Supabase.');
      } else if (error.code === 'PGRST100') { // Code générique d'erreur de parsing query
         console.log('\n💡 DIAGNOSTIC : Erreur de requête, probablement une colonne manquante.');
      }
      return false;
    }

    console.log('\n✅ SUCCÈS : Toutes les colonnes vérifiées existent bien dans la base de données !');
    console.log(`📊 ${columnsToCheck.length} colonnes validées.`);
    return true;

  } catch (err) {
    console.error('❌ Erreur inattendue lors de la vérification :', err);
    return false;
  }
}

checkShopsSchema();
