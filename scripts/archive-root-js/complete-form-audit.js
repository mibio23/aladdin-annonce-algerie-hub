
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function completeFormAudit() {
  console.log('🔍 Démarrage de l\'audit COMPLET du formulaire d\'annonce...\n');

  // 1. AUDIT DE LA TABLE PRINCIPALE
  console.log('=== 1. AUDIT TABLE PRINCIPALE : announcements ===');
  const { data: announcementsData, error: announcementsError } = await supabase
    .from('announcements')
    .select('*')
    .limit(1);

  if (announcementsError) {
    console.error('❌ Erreur table announcements:', announcementsError.message);
    return;
  }

  if (announcementsData && announcementsData.length > 0) {
    const columns = Object.keys(announcementsData[0]);
    console.log('✅ Colonnes trouvées:', columns.join(', '));
    
    // Vérification spécifique des types
    console.log('📋 Vérification des types critiques:');
    console.log(`  - category_id: ${typeof announcementsData[0].category_id} (${announcementsData[0].category_id})`);
    console.log(`  - subcategory_id: ${typeof announcementsData[0].subcategory_id} (${announcementsData[0].subcategory_id})`);
    console.log(`  - price: ${typeof announcementsData[0].price} (${announcementsData[0].price})`);
  } else {
    console.log('ℹ️ Table announcements vide - impossible de vérifier les colonnes dynamiquement');
  }

  // 2. AUDIT DES TABLES DE CATÉGORIES
  console.log('\n=== 2. AUDIT DES TABLES DE CATÉGORIES ===');
  
  const { data: categoriesData, error: categoriesError } = await supabase
    .from('categories')
    .select('*')
    .limit(1);

  if (categoriesError) {
    console.error('❌ Erreur table categories:', categoriesError.message);
  } else if (categoriesData && categoriesData.length > 0) {
    console.log('✅ Table categories accessible');
    console.log('📋 Colonnes:', Object.keys(categoriesData[0]).join(', '));
  }

  // 3. AUDIT DES TABLES DE DÉTAILS
  console.log('\n=== 3. AUDIT DES TABLES DE DÉTAILS SPÉCIFIQUES ===');
  
  const detailTables = [
    'vehicle_details',
    'real_estate_details', 
    'appliance_details',
    'fashion_details',
    'multimedia_details',
    'construction_details'
  ];

  for (const tableName of detailTables) {
    const { data, error } = await supabase
      .from(tableName)
      .select('*')
      .limit(1);

    if (error) {
      console.log(`❌ Table ${tableName}: ${error.message}`);
    } else if (data && data.length > 0) {
      console.log(`✅ Table ${tableName}: accessible`);
      console.log(`📋 Colonnes: ${Object.keys(data[0]).join(', ')}`);
    } else {
      console.log(`ℹ️ Table ${tableName}: accessible mais vide`);
    }
  }

  // 4. TEST D'INSERTION COMPLET
  console.log('\n=== 4. TEST D\'INSERTION AVEC TOUS LES CHAMPS ===');
  
  // Obtenir un ID de catégorie valide
  const { data: categorySample } = await supabase
    .from('categories')
    .select('id, slug')
    .eq('is_active', true)
    .limit(1)
    .single();

  if (!categorySample) {
    console.error('❌ Aucune catégorie active trouvée');
    return;
  }

  const testAnnouncement = {
    title: 'TEST AUDIT COMPLET - iPhone 15 Pro Max',
    description: 'Annonce de test pour vérifier tous les champs du formulaire',
    price: 185000,
    currency: 'DZD',
    category_id: categorySample.id,
    category_slug: categorySample.slug,
    subcategory_id: 'smartphones',
    wilaya: 'Alger',
    commune: 'Hydra',
    address: 'Place El Qods, Hydra',
    phone_number: '0550123456',
    email: 'test@example.com',
    condition: 'neuf',
    brand: 'Apple',
    model: 'iPhone 15 Pro Max',
    color: 'Titane',
    storage: '256 Go',
    ram: '8 Go',
    is_urgent: true,
    is_featured: true,
    is_negotiable: false,
    has_invoice: true,
    warranty_duration: '12 mois',
    purchase_year: 2024,
    original_price: 200000,
    cash_discount: 5,
    exchange_possible: false,
    delivery_available: true,
    delivery_areas: ['Alger', 'Oran'],
    delivery_fees: 500,
    packaging_info: 'Boîte originale scellée',
    selling_reason: 'Upgrade vers nouveau modèle',
    availability_date: new Date().toISOString(),
    attributes: {
      battery_health: '100%',
      accessories: ['Chargeur', 'Câble', 'Écouteurs'],
      condition_details: 'Neuf jamais utilisé'
    },
    images: ['https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800'],
    image_urls: ['https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800'],
    image_url: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800',
    user_id: '00000000-0000-0000-0000-000000000000',
    status: 'active',
    created_at: new Date().toISOString(),
    updated_at: new Date().toISOString()
  };

  console.log('📝 Test d\'insertion avec tous les champs du formulaire...');
  
  try {
    const { data: insertedData, error: insertError } = await supabase
      .from('announcements')
      .insert([testAnnouncement])
      .select()
      .single();

    if (insertError) {
      console.error('❌ ERREUR D\'INSERTION:', insertError.message);
      console.error('📋 Code:', insertError.code);
      console.error('🎯 Détails:', insertError.details);
      
      // Analyse de l'erreur
      if (insertError.message.includes('weight')) {
        console.error('🔍 Problème détecté: colonne "weight" inexistante');
      }
      if (insertError.message.includes('category_id')) {
        console.error('🔍 Problème détecté: type UUID attendu pour category_id');
      }
      if (insertError.message.includes('subcategory_id')) {
        console.error('🔍 Problème détecté: type pour subcategory_id');
      }
    } else {
      console.log('✅ INSERTION RÉUSSIE!');
      console.log(`🆔 ID de l'annonce créée: ${insertedData.id}`);
      console.log(`📋 Titre: ${insertedData.title}`);
      console.log(`💰 Prix: ${insertedData.price} ${insertedData.currency}`);
      console.log(`📍 Localisation: ${insertedData.wilaya}, ${insertedData.commune}`);
      
      // Nettoyage
      const { error: deleteError } = await supabase
        .from('announcements')
        .delete()
        .eq('id', insertedData.id);
        
      if (!deleteError) {
        console.log('🧹 Annonce de test supprimée avec succès');
      }
    }
  } catch (error) {
    console.error('❌ Erreur inattendue:', error.message);
  }

  // 5. VÉRIFICATION FINALE DES LIENS
  console.log('\n=== 5. VÉRIFICATION DES LIENS DE NAVIGATION ===');
  console.log('🔗 URLs de test disponibles:');
  console.log(`  - Accueil: http://localhost:8080/fr/`);
  console.log(`  - Catégorie: http://localhost:8080/fr/category/${categorySample.slug}`);
  console.log(`  - Sous-catégorie: http://localhost:8080/fr/category/${categorySample.slug}/smartphones`);
  
  console.log('\n✅ Audit terminé avec succès!');
  console.log('\n💡 Conseils:');
  console.log('  - Les annonces créées via le formulaire utiliseront l\'ID de l\'utilisateur connecté');
  console.log('  - Les politiques RLS (Row Level Security) s\'appliqueront pour les insertions réelles');
  console.log('  - Vérifiez que toutes les tables de détails sont créées si nécessaire');
}

completeFormAudit();
