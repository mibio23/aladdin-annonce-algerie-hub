
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';
import { v4 as uuidv4 } from 'uuid';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function createTestAnnouncement() {
  console.log('🚀 Démarrage de la création de l\'annonce factice...');

  try {
    // 1. Trouver l'ID réel de la catégorie 'telephonie'
    const { data: catData, error: catError } = await supabase
      .from('categories')
      .select('id')
      .eq('slug', 'telephonie')
      .single();

    if (catError || !catData) {
      console.error('❌ Erreur: Impossible de trouver la catégorie "telephonie" dans la base de données.');
      return;
    }

    const categoryId = catData.id;
    console.log(`✅ ID trouvé pour la catégorie "telephonie" : ${categoryId}`);

    // 2. Définir les données de l'annonce
    const testAd = {
      id: uuidv4(),
      title: "TEST ALADDIN - iPhone 15 Pro Max 256GB - État Neuf",
      description: "Ceci est une annonce factice de test pour vérifier l'affichage correct sur l'accueil et dans les sous-catégories. Produit scellé, garantie 12 mois.",
      price: 185000,
      currency: 'DZD',
      category_id: categoryId, // On utilise l'ID (UUID ou String selon DB)
      subcategory_id: 'smartphones', // On garde le SLUG (TEXTE) comme convenu
      wilaya: 'Alger',
      commune: 'Hydra',
      address: 'Place El Qods, Hydra',
      phone_number: '0550123456',
      status: 'active',
      condition: 'neuf',
      images: ['https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800'],
      image_url: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800',
      created_at: new Date().toISOString(),
      user_id: '00000000-0000-0000-0000-000000000000',
      is_featured: true,
      is_urgent: true
    };

    console.log(`📝 Insertion de l'annonce dans la table 'announcements'...`);
    const { data, error } = await supabase
      .from('announcements')
      .insert([testAd])
      .select();

    if (error) throw error;

    console.log('✅ Annonce créée avec succès !');
    console.log('--------------------------------------------------');
    console.log(`Titre : ${testAd.title}`);
    console.log(`Catégorie (ID) : ${testAd.category_id}`);
    console.log(`Sous-catégorie (Slug) : ${testAd.subcategory_id}`);
    console.log('--------------------------------------------------');
    console.log('🔗 LIENS DE VÉRIFICATION :');
    console.log(`1. Accueil (Section Téléphonie) : http://localhost:8080/fr/`);
    console.log(`2. Page Catégorie : http://localhost:8080/fr/category/telephonie`);
    console.log(`3. Page Sous-catégorie : http://localhost:8080/fr/category/telephonie/smartphones`);
    console.log('--------------------------------------------------');

  } catch (error) {
    console.error('❌ Erreur lors de la création de l\'annonce :', error.message);
  }
}

createTestAnnouncement();
