import * as dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Variables environment missing');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyAndTest() {
  console.log('VERIFICATION COMPLETE DE LA BASE DE DONNEES');
  console.log('============================================');
  
  // 1. Verifier les colonnes de announcements
  console.log('\n1. TABLE announcements');
  console.log('-'.repeat(50));
  
  const { data: annData, error: annError } = await supabase
    .from('announcements')
    .select('*')
    .limit(1);
  
  if (annError) {
    console.log('Erreur: ' + annError.message);
  } else if (annData && annData.length > 0) {
    const cols = Object.keys(annData[0]);
    console.log('Colonnes (' + cols.length + '):');
    cols.forEach(c => console.log('  - ' + c));
    
    // Verifier si attributes existe
    if (cols.includes('attributes')) {
      console.log('\n=> OK: Champ attributes (JSONB) present');
    } else {
      console.log('\n=> ATTENTION: Champ attributes ABSENT');
    }
  }

  // 2. Verifier toutes les tables de details
  console.log('\n2. TABLES DE DETAILS');
  console.log('-'.repeat(50));
  
  const tables = [
    'vehicle_details',
    'real_estate_details',
    'appliance_details',
    'fashion_details',
    'multimedia_details',
    'construction_details',
    'animal_details'
  ];
  
  for (const t of tables) {
    const { error } = await supabase.from(t).select('*').limit(1);
    if (error) {
      console.log('ABSENT: ' + t + ' - ' + error.message);
    } else {
      console.log('OK: ' + t);
    }
  }

  // 3. Tester l'insertion avec un utilisateur authentifie (simule)
  console.log('\n3. TEST D\'INSERTION');
  console.log('-'.repeat(50));
  
  // Utiliser la cle service pour contourner RLS
  const supabaseAdmin = createClient(supabaseUrl, process.env.SUPABASE_SERVICE_ROLE_KEY || supabaseKey);
  
  // Obtenir une categorie
  const { data: cat } = await supabase
    .from('categories')
    .select('id, slug')
    .eq('is_active', true)
    .limit(1)
    .single();
  
  if (cat) {
    console.log('Categorie: ' + cat.slug + ' (' + cat.id + ')');
    
    // Test avec tous les champs - en ignorant ceux qui ne sont pas des colonnes
    const testAnnouncement = {
      title: 'TEST - Verification Insertion',
      description: 'Annonce test pour verifier le fonctionnement',
      price: 50000,
      currency: 'DZD',
      category_id: cat.id,
      category_slug: cat.slug,
      subcategory_id: 'test',
      wilaya: 'Alger',
      commune: 'Alger Centre',
      phone_number: '0555123456',
      email: 'test@example.com',
      condition: 'bon',
      status: 'active',
      user_id: '00000000-0000-0000-0000-000000000000',
      created_at: new Date().toISOString()
    };
    
    const { data: inserted, error: insertErr } = await supabaseAdmin
      .from('announcements')
      .insert([testAnnouncement])
      .select()
      .single();
    
    if (insertErr) {
      console.log('Erreur insertion: ' + insertErr.message);
      console.log('Code: ' + insertErr.code);
      if (insertErr.code === 'PGRST204') {
        console.log('=> Les champs comme ram/storage ne sont pas des colonnes');
        console.log('=> Ces donnees doivent etre dans attributes (JSONB)');
      }
    } else {
      console.log('INSERTION REUSSIE! ID: ' + inserted.id);
      
      // Supprimer le test
      await supabaseAdmin.from('announcements').delete().eq('id', inserted.id);
      console.log('Test supprime');
    }
  }

  console.log('\n============================================');
  console.log('RESUME');
  console.log('============================================');
  console.log('- La structure actuelle requiert que les details');
  console.log('  (ram, storage, color, etc.) soient stockes');
  console.log('  dans le champ attributes (JSONB)');
  console.log('- Les colonnes directes dans announcements');
  console.log('  sont: title, description, price, category_id,');
  console.log('  wilaya, phone_number, etc.');
  console.log('- Le formulaire actuel envoie ces champs comme');
  console.log('  colonnes - ce qui cause les erreurs');
}

verifyAndTest();