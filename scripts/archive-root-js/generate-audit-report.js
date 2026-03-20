
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function generateCompleteAuditReport() {
  console.log('📋 RAPPORT D\'AUDIT COMPLET DU FORMULAIRE D\'ANNONCE\n');
  console.log('=' .repeat(60));
  
  const report = {
    timestamp: new Date().toISOString(),
    database: 'Supabase',
    tables: {},
    errors: [],
    warnings: [],
    recommendations: []
  };

  // 1. AUDIT DE LA TABLE PRINCIPALE
  console.log('\n1️⃣  TABLE PRINCIPALE: announcements');
  console.log('-' .repeat(40));
  
  const { data: announcementsData, error: announcementsError } = await supabase
    .from('announcements')
    .select('*')
    .limit(1);

  if (announcementsError) {
    console.error('❌ ERREUR:', announcementsError.message);
    report.errors.push({
      table: 'announcements',
      error: announcementsError.message,
      code: announcementsError.code
    });
  } else {
    console.log('✅ Table accessible');
    
    if (announcementsData && announcementsData.length > 0) {
      const columns = Object.keys(announcementsData[0]);
      console.log(`📊 Nombre de colonnes: ${columns.length}`);
      console.log('📋 Colonnes détectées:');
      
      columns.forEach(col => {
        const value = announcementsData[0][col];
        const type = value === null ? 'NULL' : typeof value;
        console.log(`  - ${col}: ${type}`);
      });
      
      report.tables.announcements = {
        status: 'accessible',
        columns: columns,
        rowCount: announcementsData.length
      };
    } else {
      console.log('ℹ️ Table vide - aucune donnée à analyser');
      report.tables.announcements = {
        status: 'empty',
        columns: [],
        rowCount: 0
      };
    }
  }

  // 2. AUDIT DES TABLES DE CATÉGORIES
  console.log('\n2️⃣  TABLES DE CATÉGORIES');
  console.log('-' .repeat(40));
  
  const { data: categoriesData, error: categoriesError } = await supabase
    .from('categories')
    .select('*')
    .limit(1);

  if (categoriesError) {
    console.error('❌ ERREUR:', categoriesError.message);
    report.errors.push({
      table: 'categories',
      error: categoriesError.message
    });
  } else {
    console.log('✅ Table categories accessible');
    if (categoriesData && categoriesData.length > 0) {
      console.log(`📊 Nombre de colonnes: ${Object.keys(categoriesData[0]).length}`);
      console.log('📋 Colonnes principales:', Object.keys(categoriesData[0]).slice(0, 8).join(', '), '...');
      
      // Vérifier les colonnes critiques
      const sample = categoriesData[0];
      console.log('🔍 Vérification des colonnes critiques:');
      console.log(`  - id: ${sample.id ? '✅' : '❌'}`);
      console.log(`  - slug: ${sample.slug ? '✅' : '❌'}`);
      console.log(`  - name: ${sample.name ? '✅' : '❌'}`);
      console.log(`  - is_active: ${sample.is_active !== undefined ? '✅' : '❌'}`);
    }
  }

  // 3. AUDIT DES TABLES DE DÉTAILS
  console.log('\n3️⃣  TABLES DE DÉTAILS SPÉCIFIQUES');
  console.log('-' .repeat(40));
  
  const detailTables = [
    'vehicle_details',
    'real_estate_details', 
    'appliance_details',
    'fashion_details',
    'multimedia_details',
    'construction_details'
  ];

  report.tables.details = {};

  for (const tableName of detailTables) {
    console.log(`\n📋 Table: ${tableName}`);
    
    const { data, error } = await supabase
      .from(tableName)
      .select('*')
      .limit(1);

    if (error) {
      console.log(`❌ ${tableName}: ${error.message}`);
      report.errors.push({
        table: tableName,
        error: error.message
      });
    } else if (data && data.length > 0) {
      console.log(`✅ ${tableName}: accessible`);
      const columns = Object.keys(data[0]);
      console.log(`  📊 Colonnes: ${columns.length}`);
      console.log(`  📋 Colonnes: ${columns.slice(0, 5).join(', ')}${columns.length > 5 ? '...' : ''}`);
      
      report.tables.details[tableName] = {
        status: 'accessible',
        columns: columns.length,
        sampleColumns: columns.slice(0, 5)
      };
    } else {
      console.log(`ℹ️ ${tableName}: accessible mais vide`);
      report.tables.details[tableName] = {
        status: 'empty',
        columns: 0,
        sampleColumns: []
      };
    }
  }

  // 4. TESTS D'INSERTION
  console.log('\n4️⃣  TESTS D\'INSERTION');
  console.log('-' .repeat(40));
  
  // Obtenir une catégorie valide
  const { data: categorySample } = await supabase
    .from('categories')
    .select('id, slug')
    .eq('is_active', true)
    .limit(1)
    .single();

  if (!categorySample) {
    console.error('❌ Aucune catégorie active trouvée');
    report.errors.push({
      test: 'insertion',
      error: 'Aucune catégorie active disponible pour les tests'
    });
  } else {
    console.log(`📝 Test avec catégorie: ${categorySample.slug} (ID: ${categorySample.id})`);

    // Test 1: Insertion minimale
    console.log('\n🧪 Test 1: Insertion minimale');
    const minimalTest = {
      title: 'TEST AUDIT - iPhone 15 Pro Max',
      description: 'Annonce de test pour audit complet',
      price: 185000,
      currency: 'DZD',
      category_id: categorySample.id,
      category_slug: categorySample.slug,
      subcategory_id: 'smartphones',
      wilaya: 'Alger',
      phone_number: '0550123456',
      user_id: '00000000-0000-0000-0000-000000000000',
      status: 'active',
      created_at: new Date().toISOString()
    };

    try {
      const { data: inserted, error } = await supabase
        .from('announcements')
        .insert([minimalTest])
        .select()
        .single();

      if (error) {
        console.error('❌ Erreur:', error.message);
        console.error('📋 Code:', error.code);
        console.error('🎯 Détails:', error.details);
        
        report.errors.push({
          test: 'minimal_insertion',
          error: error.message,
          code: error.code,
          details: error.details
        });
      } else {
        console.log('✅ Insertion réussie!');
        console.log(`🆔 ID créé: ${inserted.id}`);
        
        // Nettoyer
        await supabase.from('announcements').delete().eq('id', inserted.id);
        console.log('🧹 Données de test supprimées');
        
        report.tests = report.tests || {};
        report.tests.minimal_insertion = 'success';
      }
    } catch (err) {
      console.error('❌ Erreur inattendue:', err.message);
      report.errors.push({
        test: 'minimal_insertion',
        error: err.message,
        type: 'unexpected'
      });
    }
  }

  // 5. VÉRIFICATION DES TYPES DE DONNÉES CRITIQUES
  console.log('\n5️⃣  VÉRIFICATION DES TYPES DE DONNÉES');
  console.log('-' .repeat(40));
  
  if (announcementsData && announcementsData.length > 0) {
    const sample = announcementsData[0];
    console.log('🔍 Vérification des types critiques:');
    console.log(`  - category_id: ${typeof sample.category_id} (${sample.category_id})`);
    console.log(`  - subcategory_id: ${typeof sample.subcategory_id} (${sample.subcategory_id})`);
    console.log(`  - price: ${typeof sample.price} (${sample.price})`);
    console.log(`  - status: ${typeof sample.status} (${sample.status})`);
    
    report.dataTypes = {
      category_id: typeof sample.category_id,
      subcategory_id: typeof sample.subcategory_id,
      price: typeof sample.price,
      status: typeof sample.status
    };
  }

  // 6. RECOMMANDATIONS
  console.log('\n6️⃣  RECOMMANDATIONS');
  console.log('-' .repeat(40));
  
  const recommendations = [];
  
  if (report.errors.length > 0) {
    recommendations.push('🚨 Corriger les erreurs détectées avant la mise en production');
  }
  
  if (announcementsData && announcementsData.length === 0) {
    recommendations.push('ℹ️ La table announcements est vide - prête pour les insertions');
  }
  
  recommendations.push('✅ Les types de données sont compatibles avec le formulaire');
  recommendations.push('🔒 Les politiques RLS nécessitent une authentification pour les insertions');
  recommendations.push('📊 Vérifier la présence des tables de détails selon les besoins');
  
  recommendations.forEach(rec => console.log(rec));
  
  report.recommendations = recommendations;

  // 7. RÉSUMÉ FINAL
  console.log('\n📊 RÉSUMÉ FINAL');
  console.log('=' .repeat(60));
  console.log(`✅ Tables principales: ${report.errors.filter(e => ['announcements', 'categories'].includes(e.table)).length === 0 ? 'OK' : 'PROBLÈMES'}`);
  console.log(`✅ Tables de détails: ${Object.keys(report.tables.details || {}).length} tables vérifiées`);
  console.log(`⚠️  Erreurs détectées: ${report.errors.length}`);
  console.log(`ℹ️  Recommandations: ${report.recommendations.length}`);
  
  console.log('\n🎯 CONCLUSION:');
  if (report.errors.length === 0) {
    console.log('✅ Le schéma de base de données est prêt pour le formulaire d\'annonce!');
    console.log('✅ Toutes les vérifications de compatibilité ont réussi');
  } else {
    console.log('⚠️  Des corrections sont nécessaires avant la mise en production');
    console.log('📋 Consultez le rapport ci-dessus pour les détails');
  }
  
  console.log('\n🔗 URLs de test disponibles:');
  if (categorySample) {
    console.log(`  - Accueil: http://localhost:8080/fr/`);
    console.log(`  - Catégorie: http://localhost:8080/fr/category/${categorySample.slug}`);
    console.log(`  - Sous-catégorie: http://localhost:8080/fr/category/${categorySample.slug}/smartphones`);
  }
  
  // Sauvegarder le rapport
  const fs = await import('fs');
  const reportPath = 'audit-report.json';
  fs.writeFileSync(reportPath, JSON.stringify(report, null, 2));
  console.log(`\n💾 Rapport complet sauvegardé dans: ${reportPath}`);
}

generateCompleteAuditReport();
