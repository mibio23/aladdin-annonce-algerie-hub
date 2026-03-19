import { createClient } from '@supabase/supabase-js';
import * as fs from 'fs';
import * as path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

console.log('🗺️  Génération du sitemap XML...');

// Charger les variables d'environnement
const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

console.log('🔍 Configuration:');
console.log(`  - URL Supabase: ${supabaseUrl ? '✅ Présente' : '❌ Manquante'}`);
console.log(`  - Clé API: ${supabaseKey ? '✅ Présente' : '❌ Manquante'}`);

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

try {
  const supabase = createClient(supabaseUrl, supabaseKey);
  const baseUrl = 'http://localhost:8080';
  
  // Récupérer les catégories actives
  console.log('📊 Récupération des catégories...');
  const { data: categories, error: categoriesError } = await supabase
    .from('categories')
    .select('slug, name, description')
    .eq('is_active', true)
    .order('position_order', { ascending: true });
  
  if (categoriesError) {
    console.error('❌ Erreur récupération catégories:', categoriesError.message);
    process.exit(1);
  }
  
  console.log(`✅ Catégories trouvées: ${categories?.length || 0}`);
  
  // Récupérer les annonces actives
  console.log('📋 Récupération des annonces...');
  const { data: announcements, error: announcementsError } = await supabase
    .from('announcements')
    .select('id, category_slug, subcategory_id, created_at, title')
    .eq('status', 'active')
    .order('created_at', { ascending: false })
    .limit(1000); // Limiter à 1000 annonces pour le sitemap
  
  if (announcementsError) {
    console.error('❌ Erreur récupération annonces:', announcementsError.message);
    process.exit(1);
  }
  
  console.log(`✅ Annonces trouvées: ${announcements?.length || 0}`);
  
  // Construire le sitemap
  let sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
        http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">`;
  
  // Page d'accueil
  sitemap += `
  <url>
    <loc>${baseUrl}/fr</loc>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
    <lastmod>${new Date().toISOString()}</lastmod>
  </url>`;
  
  // Pages de catégories
  if (categories && categories.length > 0) {
    categories.forEach(category => {
      sitemap += `
  <url>
    <loc>${baseUrl}/fr/category/${category.slug}</loc>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
    <lastmod>${new Date().toISOString()}</lastmod>
  </url>`;
    });
  }
  
  // Pages d'annonces
  if (announcements && announcements.length > 0) {
    announcements.forEach(annonce => {
      sitemap += `
  <url>
    <loc>${baseUrl}/fr/announcement/${annonce.id}</loc>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
    <lastmod>${annonce.created_at}</lastmod>
  </url>`;
    });
  }
  
  sitemap += '\n</urlset>';
  
  // Créer le dossier public s'il n'existe pas
  const publicDir = path.join(process.cwd(), 'public');
  if (!fs.existsSync(publicDir)) {
    fs.mkdirSync(publicDir, { recursive: true });
  }
  
  // Écrire le fichier sitemap
  const sitemapPath = path.join(publicDir, 'sitemap.xml');
  fs.writeFileSync(sitemapPath, sitemap);
  
  console.log(`✅ Sitemap généré avec succès !`);
  console.log(`📊 Statistiques:`);
  console.log(`  - Catégories: ${categories?.length || 0}`);
  console.log(`  - Annonces: ${announcements?.length || 0}`);
  console.log(`  - Total URLs: ${1 + (categories?.length || 0) + (announcements?.length || 0)}`);
  console.log(`📁 Fichier: ${sitemapPath}`);
  
  // Générer également robots.txt
  const robotsTxt = `User-agent: *
Allow: /

# Sitemaps
Sitemap: ${baseUrl}/sitemap.xml

# Crawl-delay pour éviter la surcharge
Crawl-delay: 1`;
  
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log(`🤖 Robots.txt généré avec succès !`);
  
} catch (error) {
  console.error('❌ Erreur lors de la génération du sitemap:', error);
  process.exit(1);
}

console.log('✅ Génération du sitemap terminée');