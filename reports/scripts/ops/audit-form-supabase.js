import * as dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function auditFormTables() {
  console.log('🔍 AUDIT COMPLET DES TABLES DU FORMULAIRE "DÉPOSER UNE ANNONCE"\n');
  console.log('═'.repeat(70));
  
  const report = {
    timestamp: new Date().toISOString(),
    tables: {},
    issues: [],
    recommendations: []
  };

  // 1. TABLE PRINCIPALE: announcements
  console.log('\n📋 TABLE PRINCIPALE: announcements');
  console.log('-'.repeat(50));
  
  try {
    const { data: announcementsData, error: announcementsError } = await supabase
      .from('announcements')
      .select('*')
      .limit(1);
    
    if (announcementsError) {
      console.log(`❌ Erreur: ${announcementsError.message}`);
      report.issues.push({
        table: 'announcements',
        error: announcementsError.message,
        code: announcementsError.code
      });
    } else if (announcementsData && announcementsData.length > 0) {
      console.log('✅ Table announcements accessible');
      const columns = Object.keys(announcementsData[0]);
      console.log(`📊 Nombre de colonnes: ${columns.length}`);
      console.log('\n📋 Colonnes détectées:');
      columns.forEach(col => {
        const value = announcementsData[0][col];
        const type = value === null ? 'NULL' : typeof value;
        console.log(`   - ${col}: ${type}`);
      });
      report.tables.announcements = {
        status: 'OK',
        columns: columns,
        sample: announcementsData[0]
      };
    } else {
      console.log('ℹ️ Table announcements vide - vérification du schéma...');
      report.tables.announcements = {
        status: 'EMPTY',
        columns: []
      };
    }
  } catch (err) {
    console.log(`❌ Erreur inattendue: ${err.message}`);
    report.issues.push({
      table: 'announcements',
      error: err.message
    });
  }

  // 2. TABLE: categories
  console.log('\n📋 TABLE: categories');
  console.log('-'.repeat(50));
  
  try {
    const { data: categoriesData, error: categoriesError } = await supabase
      .from('categories')
      .select('*')
      .limit(1);
    
    if (categoriesError) {
      console.log(`❌ Erreur: ${categoriesError.message}`);
      report.issues.push({
        table: 'categories',
        error: categoriesError.message
      });
    } else if (categoriesData && categoriesData.length > 0) {
      console.log('✅ Table categories accessible');
      const columns = Object.keys(categoriesData[0]);
      console.log(`📊 Colonnes: ${columns.join(', ')}`);
      
      // Vérifier les colonnes critiques
      const sample = categoriesData[0];
      const criticalColumns = ['id', 'slug', 'name', 'is_active', 'position_order'];
      console.log('\n🔍 Colonnes critiques:');
      criticalColumns.forEach(col => {
        const exists = col in sample;
        console.log(`   - ${col}: ${exists ? '✅' : '❌'}`);
        if (!exists) {
          report.issues.push({
            table: 'categories',
            issue: `Colonne critique manquante: ${col}`
          });
        }
      });
      
      report.tables.categories = {
        status: 'OK',
        columns: columns,
        sample: sample
      };
    }
  } catch (err) {
    console.log(`❌ Erreur inattendue: ${err.message}`);
  }

  // 3. TABLES DE DÉTAILS
  console.log('\n📋 TABLES DE DÉTAILS');
  console.log('-'.repeat(50));
  
  const detailTables = [
    'vehicle_details',
    'real_estate_details',
    'appliance_details',
    'fashion_details',
    'multimedia_details',
    'construction_details',
    'animal_details'
  ];
  
  for (const tableName of detailTables) {
    console.log(`\n📋 Table: ${tableName}`);
    console.log('-'.repeat(30));
    
    try {
      const { data, error } = await supabase
        .from(tableName)
        .select('*')
        .limit(1);
      
      if (error) {
        console.log(`❌ Erreur: ${error.message}`);
        report.issues.push({
          table: tableName,
          error: error.message
        });
        report.tables[tableName] = {
          status: 'ERROR',
          error: error.message
        };
      } else if (data && data.length > 0) {
        console.log('✅ Table accessible');
        const columns = Object.keys(data[0]);
        console.log(`📊 Colonnes (${columns.length}): ${columns.slice(0, 8).join(', ')}...`);
        report.tables[tableName] = {
          status: 'OK',
          columns: columns,
          sample: data[0]
        };
      } else {
        console.log('ℹ️ Table vide mais accessible');
        report.tables[tableName] = {
          status: 'EMPTY',
          columns: []
        };
      }
    } catch (err) {
      console.log(`❌ Erreur inattendue: ${err.message}`);
      report.issues.push({
        table: tableName,
        error: err.message
      });
    }
  }

  // 4. VÉRIFICATION DES CHAMPS DU FORMULAIRE
  console.log('\n📋 VÉRIFICATION DES CHAMPS DU FORMULAIRE');
  console.log('-'.repeat(50));
  
  // Obtenir une catégorie valide pour les tests
  const { data: categorySample } = await supabase
    .from('categories')
    .select('id, slug')
    .eq('is_active', true)
    .limit(1)
    .single();
  
  if (categorySample) {
    console.log(`\n✅ Catégorie de test: ${categorySample.slug} (ID: ${categorySample.id})`);
    
    // Test d'insertion minimal
    console.log('\n🧪 Test d\'insertion minimale...');
    const minimalTest = {
      title: 'TEST AUDIT - Vérification formulaire',
      description: 'Annonce de test pour audit du formulaire',
      price: 100000,
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
      const { data: inserted, error: insertError } = await supabase
        .from('announcements')
        .insert([minimalTest])
        .select()
        .single();
      
      if (insertError) {
        console.log(`❌ Erreur d'insertion: ${insertError.message}`);
        console.log(`   Code: ${insertError.code}`);
        console.log(`   Détails: ${insertError.details || 'N/A'}`);
        report.issues.push({
          test: 'minimal_insert',
          error: insertError.message,
          code: insertError.code,
          details: insertError.details
        });
      } else {
        console.log('✅ Insertion réussie!');
        console.log(`   ID créé: ${inserted.id}`);
        
        // Supprimer l'annonce de test
        await supabase.from('announcements').delete().eq('id', inserted.id);
        console.log('🧹 Annonce de test supprimée');
      }
    } catch (err) {
      console.log(`❌ Erreur inattendue: ${err.message}`);
      report.issues.push({
        test: 'minimal_insert',
        error: err.message
      });
    }
    
    // Test d'insertion avec tous les champs
    console.log('\n🧪 Test d\'insertion complète...');
    const completeTest = {
      title: 'TEST AUDIT COMPLET - Samsung Galaxy S24',
      description: 'Test complet avec tous les champs du formulaire',
      price: 200000,
      currency: 'DZD',
      category_id: categorySample.id,
      category_slug: categorySample.slug,
      subcategory_id: 'smartphones',
      wilaya: 'Alger',
      commune: 'Hydra',
      address: '123 Rue Test, Hydra',
      phone_number: '0550123456',
      email: 'test@example.com',
      condition: 'neuf',
      brand: 'Samsung',
      model: 'Galaxy S24 Ultra',
      color: 'Noir',
      purchase_year: 2024,
      has_invoice: true,
      warranty_duration: '24 mois',
      original_price: 220000,
      cash_discount: 10,
      exchange_possible: false,
      delivery_available: true,
      delivery_areas: ['Alger', 'Oran'],
      delivery_fees: 500,
      packaging_info: 'Boîte originale',
      selling_reason: 'Upgrade',
      availability_date: new Date().toISOString(),
      attributes: {
        storage: '256 Go',
        ram: '12 Go',
        battery_health: '100%',
        accessories: ['Chargeur', 'Câble']
      },
      images: ['https://example.com/image.jpg'],
      image_urls: ['https://example.com/image.jpg'],
      image_url: 'https://example.com/image.jpg',
      is_urgent: true,
      is_featured: true,
      is_negotiable: true,
      user_id: '00000000-0000-0000-0000-000000000000',
      status: 'active',
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    };
    
    try {
      const { data: insertedComplete, error: completeError } = await supabase
        .from('announcements')
        .insert([completeTest])
        .select()
        .single();
      
      if (completeError) {
        console.log(`❌ Erreur d'insertion complète: ${completeError.message}`);
        console.log(`   Code: ${completeError.code}`);
        report.issues.push({
          test: 'complete_insert',
          error: completeError.message,
          code: completeError.code,
          details: completeError.details
        });
        
        // Analyser l'erreur
        if (completeError.message.includes('weight')) {
          console.log('   🔍 Problème détecté: colonne "weight" inexistante');
        }
        if (completeError.message.includes('category_id')) {
          console.log('   🔍 Problème détecté: type UUID pour category_id');
        }
        if (completeError.message.includes('invalid input syntax')) {
          console.log('   🔍 Problème détecté: type de données incorrect');
        }
      } else {
        console.log('✅ Insertion complète réussie!');
        console.log(`   ID créé: ${insertedComplete.id}`);
        
        // Supprimer l'annonce de test
        await supabase.from('announcements').delete().eq('id', insertedComplete.id);
        console.log('🧹 Annonce de test supprimée');
      }
    } catch (err) {
      console.log(`❌ Erreur inattendue: ${err.message}`);
      report.issues.push({
        test: 'complete_insert',
        error: err.message
      });
    }
  } else {
    console.log('❌ Aucune catégorie active trouvée pour les tests');
    report.issues.push({
      test: 'category_sample',
      error: 'Aucune catégorie active disponible'
    });
  }

  // 5. RAPPORT FINAL
  console.log('\n' + '═'.repeat(70));
  console.log('📊 RAPPORT FINAL D\'AUDIT');
  console.log('═'.repeat(70));
  
  console.log(`\n📅 Date: ${report.timestamp}`);
  console.log(`📋 Tables vérifiées: ${Object.keys(report.tables).length}`);
  console.log(`❌ Problèmes détectés: ${report.issues.length}`);
  
  if (report.issues.length > 0) {
    console.log('\n⚠️  PROBLÈMES IDENTIFIÉS:');
    report.issues.forEach((issue, index) => {
      console.log(`\n   ${index + 1}. Table: ${issue.table || issue.test}`);
      console.log(`      Erreur: ${issue.error}`);
      if (issue.code) console.log(`      Code: ${issue.code}`);
    });
  } else {
    console.log('\n✅ AUCUN PROBLÈME DÉTECTÉ - TOUT EST OK!');
  }
  
  console.log('\n💡 RECOMMANDATIONS:');
  if (report.issues.length > 0) {
    console.log('   - Corriger les erreurs identifiées ci-dessus');
    console.log('   - Vérifier les politiques RLS si les insertions échouent');
    console.log('   - S\'assurer que les types de données correspondent');
  } else {
    console.log('   - Le formulaire est prêt à être utilisé');
    console.log('   - Les insertions fonctionnent correctement');
  }
  
  console.log('\n🔗 LIENS DE TEST:');
  console.log('   - Accueil: http://localhost:8080/fr/');
  console.log('   - Déposer une annonce: http://localhost:8080/fr/deposer-une-annonce');
  
  console.log('\n' + '═'.repeat(70));
  console.log('✅ AUDIT TERMINÉ');
  console.log('═'.repeat(70));

  // Sauvegarder le rapport
  const fs = await import('fs');
  fs.writeFileSync('form-audit-report.json', JSON.stringify(report, null, 2));
  console.log('\n💾 Rapport sauvegardé dans: form-audit-report.json');
}

auditFormTables();
