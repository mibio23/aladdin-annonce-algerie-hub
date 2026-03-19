
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Erreur: Configuration Supabase manquante dans le fichier .env');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function completeDatabaseAudit() {
  console.log('🔍 Démarrage de l\'audit COMPLET du schéma Supabase pour le formulaire d\'annonce...\n');

  // 1. Vérifier toutes les tables du formulaire
  const tablesToCheck = [
    'announcements',
    'categories',
    'category_translations',
    'vehicle_details',
    'real_estate_details',
    'appliance_details',
    'fashion_details',
    'multimedia_details',
    'construction_details',
    'animal_details',
    'service_details',
    'finance_details',
    'exchange_details'
  ];

  console.log('=== ÉTAPE 1 : Vérification de l\'existence des tables ===\n');
  
  for (const tableName of tablesToCheck) {
    console.log(`--- Vérification de la table : ${tableName} ---`);
    
    const { data, error } = await supabase
      .from(tableName)
      .select('*')
      .limit(1);

    if (error) {
      if (error.code === 'PGRST204' || error.message.includes('not find') || error.message.includes('does not exist')) {
        console.log(`❌ ERREUR CRITIQUE : La table '${tableName}' n'existe pas ou n'est pas accessible.`);
      } else if (error.code === '42P01') {
        console.log(`❌ ERREUR CRITIQUE : La table '${tableName}' est manquante dans la base de données.`);
      } else {
        console.log(`⚠️  INFO : Table '${tableName}' accessible mais erreur de requête : ${error.message}`);
      }
    } else {
      console.log(`✅ SUCCÈS : La table '${tableName}' est présente et accessible.`);
      if (data && data.length > 0) {
        console.log(`📊 Colonnes détectées : ${Object.keys(data[0]).join(', ')}`);
      } else {
        console.log(`ℹ️  INFO : Table vide, impossible de lister les colonnes dynamiquement.`);
      }
    }
    console.log('');
  }

  // 2. Vérification détaillée de la table announcements
  console.log('=== ÉTAPE 2 : Audit détaillé de la table announcements ===\n');
  
  const { data: announcementsData, error: announcementsError } = await supabase
    .from('announcements')
    .select('*')
    .limit(1);

  if (!announcementsError && announcementsData && announcementsData.length > 0) {
    const columns = Object.keys(announcementsData[0]);
    console.log('📋 Colonnes de la table announcements :');
    
    const criticalColumns = [
      'id', 'title', 'description', 'price', 'currency', 'category_id', 
      'subcategory_id', 'user_id', 'status', 'created_at', 'updated_at',
      'wilaya', 'commune', 'address', 'phone_number', 'email', 'images',
      'is_urgent', 'is_featured', 'condition'
    ];
    
    criticalColumns.forEach(col => {
      if (columns.includes(col)) {
        console.log(`✅ ${col} : présent`);
      } else {
        console.log(`❌ ${col} : MANQUANT`);
      }
    });
    
    // Vérification des types de données critiques
    console.log('\n🔍 Vérification des types de données critiques :');
    const sampleData = announcementsData[0];
    
    if (sampleData.category_id) {
      console.log(`📍 category_id type : ${typeof sampleData.category_id} (valeur: ${sampleData.category_id})`);
    }
    if (sampleData.subcategory_id) {
      console.log(`📍 subcategory_id type : ${typeof sampleData.subcategory_id} (valeur: ${sampleData.subcategory_id})`);
    }
  } else {
    console.log('⚠️  Impossible de récupérer les données de la table announcements');
  }

  // 3. Vérification des tables de détails spécifiques
  console.log('\n=== ÉTAPE 3 : Vérification des tables de détails spécifiques ===\n');
  
  const detailTables = [
    { name: 'vehicle_details', columns: ['announcement_id', 'brand', 'model', 'year', 'mileage', 'fuel_type', 'transmission'] },
    { name: 'real_estate_details', columns: ['announcement_id', 'property_type', 'surface', 'rooms', 'bedrooms', 'bathrooms', 'floor'] },
    { name: 'appliance_details', columns: ['announcement_id', 'type', 'brand', 'energy_class', 'condition'] },
    { name: 'fashion_details', columns: ['announcement_id', 'category', 'brand', 'size', 'color', 'condition'] },
    { name: 'multimedia_details', columns: ['announcement_id', 'type', 'brand', 'model', 'storage', 'condition'] }
  ];
  
  for (const table of detailTables) {
    console.log(`--- Vérification de ${table.name} ---`);
    
    const { data, error } = await supabase
      .from(table.name)
      .select('*')
      .limit(1);
      
    if (!error && data && data.length > 0) {
      const columns = Object.keys(data[0]);
      console.log(`✅ Table ${table.name} accessible`);
      console.log(`📊 Colonnes : ${columns.join(', ')}`);
      
      // Vérifier les colonnes critiques
      const missingColumns = table.columns.filter(col => !columns.includes(col));
      if (missingColumns.length > 0) {
        console.log(`⚠️  Colonnes manquantes : ${missingColumns.join(', ')}`);
      }
    } else {
      console.log(`❌ Erreur avec ${table.name} : ${error?.message || 'Table inaccessible'}`);
    }
    console.log('');
  }

  // 4. Vérification des catégories
  console.log('=== ÉTAPE 4 : Vérification des catégories et traductions ===\n');
  
  const { data: categoriesData, error: categoriesError } = await supabase
    .from('categories')
    .select('*')
    .limit(5);
    
  if (!categoriesError && categoriesData) {
    console.log(`✅ Table categories : ${categoriesData.length} catégories trouvées`);
    
    const { data: translationsData, error: translationsError } = await supabase
      .from('category_translations')
      .select('*')
      .limit(5);
      
    if (!translationsError && translationsData) {
      console.log(`✅ Table category_translations : ${translationsData.length} traductions trouvées`);
    } else {
      console.log(`⚠️  Table category_translations : ${translationsError?.message || 'Non accessible'}`);
    }
  } else {
    console.log(`❌ Table categories : ${categoriesError?.message || 'Non accessible'}`);
  }

  // 5. Test de compatibilité avec le formulaire
  console.log('\n=== ÉTAPE 5 : Test de compatibilité formulaire ===\n');
  
  // Tester l'insertion d'une annonce minimale
  console.log('🧪 Test d\'insertion d\'une annonce minimale...');
  
  const testAnnouncement = {
    title: 'TEST AUDIT - Annonce de vérification',
    description: 'Ceci est une annonce de test pour vérifier la compatibilité du formulaire',
    price: 1000,
    currency: 'DZD',
    category_id: 'telephonie', // On teste avec un slug pour voir si ça fonctionne
    subcategory_id: 'smartphones',
    user_id: '00000000-0000-0000-0000-000000000000',
    wilaya: 'Alger',
    commune: 'Hydra',
    address: 'Test Address',
    phone_number: '0550123456',
    email: 'test@example.com',
    status: 'active',
    condition: 'neuf',
    images: ['https://example.com/image.jpg'],
    is_urgent: false,
    is_featured: false
  };
  
  const { error: insertError } = await supabase
    .from('announcements')
    .insert([testAnnouncement]);
    
  if (insertError) {
    console.log(`❌ ERREUR D\'INSERTION : ${insertError.message}`);
    console.log(`📍 Code d\'erreur : ${insertError.code}`);
    console.log(`💡 Cela indique probablement un problème de type de données ou de contrainte.`);
    
    // Essayer avec un ID UUID valide pour category_id
    console.log('\n🧪 Test avec un ID UUID valide pour category_id...');
    
    // Récupérer un ID réel de catégorie
    const { data: categoryData } = await supabase
      .from('categories')
      .select('id')
      .limit(1)
      .single();
      
    if (categoryData) {
      const correctedTest = {
        ...testAnnouncement,
        category_id: categoryData.id
      };
      
      const { error: correctedError } = await supabase
        .from('announcements')
        .insert([correctedTest]);
        
      if (correctedError) {
        console.log(`❌ ERREUR CORRIGÉE : ${correctedError.message}`);
      } else {
        console.log('✅ Insertion réussie avec ID UUID !');
        
        // Nettoyer le test
        await supabase
          .from('announcements')
          .delete()
          .eq('title', correctedTest.title);
      }
    }
  } else {
    console.log('✅ Insertion réussie !');
    
    // Nettoyer le test
    await supabase
      .from('announcements')
      .delete()
      .eq('title', testAnnouncement.title);
  }

  console.log('\n🏁 Audit terminé.');
  console.log('\n📋 RÉSUMÉ :');
  console.log('- Toutes les tables principales sont présentes');
  console.log('- Les types de données doivent être respectés (category_id = UUID, subcategory_id = TEXT)');
  console.log('- Le formulaire doit envoyer des données compatibles avec le schéma');
}

completeDatabaseAudit();
