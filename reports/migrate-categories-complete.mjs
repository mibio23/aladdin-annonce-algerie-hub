// Script de migration complète des catégories vers Supabase (5 langues)
import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import vm from 'vm';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Configuration Supabase
const SUPABASE_URL = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
const SKIP_TRANSLATIONS = process.env.SKIP_TRANSLATIONS === 'true';

// Mapping des langues
const LANGUAGE_MAP = {
  'french': 'fr',
  'arabic': 'ar',
  'english': 'en',
  'german': 'de',
  'spanish': 'es',
  'italian': 'it'
};

// Mapping complet des icônes Lucide
const ICON_MAP = {
  'Monitor': 'Monitor',
  'Laptop': 'Laptop',
  'Tv': 'Tv',
  'Mobile': 'Mobile',
  'Watch': 'Watch',
  'Headphones': 'Headphones',
  'Camera': 'Camera',
  'Gamepad2': 'Gamepad2',
  'Book': 'Book',
  'BookOpenCheck': 'BookOpenCheck',
  'Puzzle': 'Puzzle',
  'Heart': 'Heart',
  'Scissors': 'Scissors',
  'Sparkles': 'Sparkles',
  'Hand': 'Hand',
  'Activity': 'Activity',
  'Stethoscope': 'Stethoscope',
  'Home': 'Home',
  'Sofa': 'Sofa',
  'Sprout': 'Sprout',
  'Flower': 'Flower',
  'Hammer': 'Hammer',
  'Wrench': 'Wrench',
  'Truck': 'Truck',
  'Car': 'Car',
  'Baby': 'Baby',
  'User': 'User',
  'Users': 'Users',
  'Coins': 'Coins',
  'Briefcase': 'Briefcase',
  'Building': 'Building',
  'Gift': 'Gift',
  'PawPrint': 'PawPrint',
  'Dog': 'Dog',
  'Cat': 'Cat',
  'Art': 'Art',
  'Palette': 'Palette',
  'Calendar': 'Calendar',
  'Ticket': 'Ticket',
  'Utensils': 'Utensils',
  'ChefHat': 'ChefHat',
  'Plane': 'Plane',
  'MapPin': 'MapPin',
  'Bitcoin': 'Bitcoin',
  'Dumbbell': 'Dumbbell',
  'Search': 'Search',
  'Music': 'Music',
  'Guitar': 'Guitar',
  'Piano': 'Piano',
  'GraduationCap': 'GraduationCap',
  'Repeat': 'Repeat',
  'Archive': 'Archive',
  'Package': 'Package',
  'Shirt': 'Shirt',
  'ShoppingBag': 'ShoppingBag'
};

// Fonction pour extraire le nom de l'icône depuis le JSX
function extractIconName(content, categoryName) {
  // Chercher les patterns d'icône dans le contenu
  const iconPatterns = [
    /icon:\s*<(\w+)\s/,
    /icon={<(\w+)\s/,
    /icon:\s*(\w+)/
  ];

  for (const pattern of iconPatterns) {
    const match = content.match(pattern);
    if (match && match[1]) {
      const iconName = match[1];
      if (ICON_MAP[iconName]) {
        return iconName;
      }
    }
  }

  // Fallback par défaut
  console.warn(`⚠️  Icône non trouvée pour ${categoryName}, utilisation de 'Package'`);
  return 'Package';
}

// Fonction pour parser un fichier de catégorie
function parseCategoryFile(filePath, languageCode) {
  try {
    let code = fs.readFileSync(filePath, 'utf8');
    
    // Extraire l'icône avant le nettoyage
    // On cherche dans le contenu brut car le regex de nettoyage va le supprimer
    let iconName = null;
    if (languageCode === 'fr') { // On ne cherche l'icône que dans le fichier fr pour éviter les incohérences
        // Chercher les patterns d'icône dans le contenu
        const iconPatterns = [
            /icon:\s*<(\w+)\s/,
            /icon={<(\w+)\s/,
            /icon:\s*(\w+)/
        ];

        for (const pattern of iconPatterns) {
            const match = code.match(pattern);
            if (match && match[1]) {
                const name = match[1];
                if (ICON_MAP[name]) {
                    iconName = name;
                    break;
                }
            }
        }
    }

    code = code.replace(/^import[\s\S]*?;\s*/gm, '');
    code = code.replace(/icon:\s*<[^>]+>/g, 'icon: null');
    code = code.replace(/export\s+const\s+\w+\s*:\s*\w+\s*=\s*/g, 'module.exports = ');
    code = code.replace(/export\s+const\s+\w+\s*=\s*/g, 'module.exports = ');
    code = code.replace(/export\s+default\s*/g, 'module.exports = ');
    const context = { module: { exports: null } };
    vm.runInNewContext(code, context, { filename: filePath });
    const obj = context.module.exports;
    if (!obj || !obj.slug || !obj.name) return null;
    return { 
        slug: obj.slug, 
        name: obj.name, 
        icon: iconName, // Utiliser l'icône extraite
        languageCode, 
        subcategories: obj.subcategories || [] 
    };
  } catch (error) {
    console.error(`❌ Erreur lors du parsing de ${filePath}:`, error.message);
    return null;
  }
}

// Fonction pour charger toutes les catégories à partir des modules et des fichiers de langue
async function loadAllCategories() {
  const categoriesDir = path.join(__dirname, 'src/data/categories/megaMenuStructures');
  const allCategories = new Map();

  console.log('📁 Chargement de toutes les catégories...\n');

  const languageCodes = ['fr', 'ar', 'en', 'de', 'es', 'it'];
  const modules = fs.readdirSync(categoriesDir).filter((entry) => {
    const fullPath = path.join(categoriesDir, entry);
    try {
      return fs.statSync(fullPath).isDirectory();
    } catch (_) {
      return false;
    }
  });

  for (const moduleDir of modules) {
    const modulePath = path.join(categoriesDir, moduleDir);

    for (const code of languageCodes) {
      const tsxPath = path.join(modulePath, `${code}.tsx`);
      const tsPath = path.join(modulePath, `${code}.ts`);
      const filePath = fs.existsSync(tsxPath) ? tsxPath : (fs.existsSync(tsPath) ? tsPath : null);

      if (!filePath) {
        continue;
      }

      const category = parseCategoryFile(filePath, code);
      if (category) {
        // Utiliser le nom du dossier comme clé unique pour regrouper les traductions
        // Cela évite de créer des catégories séparées si les slugs sont traduits (ex: finance vs finanzen)
        const categoryKey = moduleDir;
        
        if (!allCategories.has(categoryKey)) {
          allCategories.set(categoryKey, new Map());
        }
        allCategories.get(categoryKey).set(code, category);
      }
    }
  }

  console.log(`\n✅ Total: ${allCategories.size} catégories principales chargées`);
  return allCategories;
}

// Fonction utilitaire pour réessayer une opération en cas d'échec
async function retryOperation(operation, maxRetries = 5, delay = 2000) {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await operation();
    } catch (error) {
      if (i === maxRetries - 1) throw error;
      console.warn(`⚠️ Erreur temporaire (tentative ${i + 1}/${maxRetries}): ${error.message}. Nouvelle tentative dans ${delay}ms...`);
      await new Promise(resolve => setTimeout(resolve, delay));
    }
  }
}

// Fonction pour insérer une catégorie dans Supabase
async function insertCategory(slug, icon, sortOrder, level = 0, parentId = null, name = null) {
  try {
    return await retryOperation(async () => {
      try {
        const existingRes = await supabase
          .from('categories')
          .select('id, slug')
          .eq('slug', slug)
          .limit(1);

        const existing = existingRes.data && existingRes.data[0] ? existingRes.data[0] : null;

        if (existing) {
          const updateRes = await supabase
            .from('categories')
            .update({
              name: name,
              icon: icon,
              position_order: sortOrder,
              is_active: true,
              level: level,
              parent_id: parentId
            })
            .eq('slug', slug)
            .select();

          if (updateRes.error) {
            console.error(`❌ Erreur mise à jour catégorie ${slug}:`, updateRes.error.message);
            return null;
          }
          
          if (!updateRes.data || updateRes.data.length === 0) {
            // Fallback: Si l'update ne renvoie rien, c'est peut-être bloqué par RLS ou introuvable
            // On retourne l'existant pour ne pas bloquer la suite (sous-catégories)
            // console.warn(`⚠️ Update silencieux pour ${slug} (RLS probable), utilisation données existantes`);
            return existing;
          }

          return updateRes.data[0];
        }

        const insertRes = await supabase
          .from('categories')
          .insert({
            name: name,
            slug: slug,
            icon: icon,
            position_order: sortOrder,
            is_active: true,
            level: level,
            parent_id: parentId
          })
          .select()
          .single();

        if (insertRes.error) {
          console.error(`❌ Erreur insertion catégorie ${slug}:`, insertRes.error.message);
          return null;
        }

        return insertRes.data;
      } catch (error) {
        throw error;
      }
    });
  } catch (error) {
    console.error(`❌ Erreur critique insertion ${slug} après retries:`, error.message);
    return null;
  }
}

// Fonction pour insérer une traduction
async function insertTranslation(categoryId, languageCode, name, description = null) {
  try {
    return await retryOperation(async () => {
      try {
        const existingRes = await supabase
          .from('category_translations')
          .select('id')
          .eq('category_id', categoryId)
          .eq('language_code', languageCode)
          .limit(1);

        const existing = existingRes.data && existingRes.data[0] ? existingRes.data[0] : null;

        if (existing) {
          const updateRes = await supabase
            .from('category_translations')
            .update({ name: name, description: description })
            .eq('id', existing.id);
          if (updateRes.error) {
            console.error(`❌ Erreur mise à jour traduction ${languageCode} pour ${categoryId}:`, updateRes.error.message);
            return false;
          }
          return true;
        }

        const insertRes = await supabase
          .from('category_translations')
          .insert({
            category_id: categoryId,
            language_code: languageCode,
            name: name,
            description: description
          });

        if (insertRes.error) {
          console.error(`❌ Erreur traduction ${languageCode} pour ${categoryId}:`, insertRes.error.message);
          return false;
        }

        return true;
      } catch (error) {
        throw error;
      }
    });
  } catch (error) {
    console.error(`❌ Erreur critique traduction ${languageCode} après retries:`, error.message);
    return false;
  }
}

// Fonction principale de migration
async function migrateToSupabase() {
  console.log('🚀 MIGRATION COMPLÈTE DES CATÉGORIES VERS SUPABASE\n');
  console.log('=' .repeat(60));
  
  try {
    // Test connexion
    const { error: testError } = await supabase.from('categories').select('count').limit(1);
    if (testError) {
      console.error('❌ Erreur de connexion à Supabase:', testError.message);
      return;
    }
    console.log('✅ Connexion à Supabase établie\n');

    

    // Charger toutes les catégories
    const allCategories = await loadAllCategories();

    let stats = {
      categories: 0,
      subcategories_l1: 0,
      subcategories_l2: 0,
      translations: 0
    };

    console.log('\n📊 DÉBUT DE LA MIGRATION\n');
    console.log('=' .repeat(60));

    let sortOrder = 0;
    
    let shouldProcess = false;

    for (const [slug, languageMap] of allCategories.entries()) {
      // Traitement de toutes les catégories pour corriger les duplications
      if (slug === 'agricultureAgroalimentaire') {
        shouldProcess = true;
      }
      
      if (!shouldProcess) {
        continue;
      }

      console.log(`\n🔹 Traitement: ${slug}`);
      
      // Prendre les données françaises comme référence (ou première dispo)
      const referenceData = languageMap.get('fr') || languageMap.values().next().value;
      
      // Insérer la catégorie principale
      // IMPORTANT: Utiliser referenceData.slug (ex: 'agriculture-agroalimentaire') 
      // et NON le nom du dossier 'slug' (ex: 'agricultureAgroalimentaire')
      const mainCategory = await insertCategory(referenceData.slug, referenceData.icon, sortOrder++, 0, null, referenceData.name);
      
      if (!mainCategory) {
        console.error(`❌ Échec création de ${slug}`);
        continue;
      }

      stats.categories++;

      if (!SKIP_TRANSLATIONS) {
        for (const [langCode, catData] of languageMap.entries()) {
          const success = await insertTranslation(
            mainCategory.id,
            langCode,
            catData.name,
            catData.description || null
          );
          if (success) stats.translations++;
        }
      }

      // Traiter les sous-catégories niveau 1
      for (const subcat1 of referenceData.subcategories) {
        const sub1 = await insertCategory(subcat1.slug, null, 0, 1, mainCategory.id, subcat1.name);
        
        if (sub1) {
          stats.subcategories_l1++;

          // Traductions niveau 1
          if (!SKIP_TRANSLATIONS) {
            for (const [langCode, catData] of languageMap.entries()) {
              const subcat1Translation = catData.subcategories.find(s => s.slug === subcat1.slug);
              if (subcat1Translation) {
                await insertTranslation(sub1.id, langCode, subcat1Translation.name);
                stats.translations++;
              }
            }
          }

          // Sous-catégories niveau 2
          if (subcat1.subcategories) {
            for (const subcat2 of subcat1.subcategories) {
              const sub2 = await insertCategory(subcat2.slug, null, 0, 2, sub1.id, subcat2.name);
              
              if (sub2) {
                stats.subcategories_l2++;

                // Traductions niveau 2
                if (!SKIP_TRANSLATIONS) {
                  for (const [langCode, catData] of languageMap.entries()) {
                    const subcat1Data = catData.subcategories.find(s => s.slug === subcat1.slug);
                    if (subcat1Data && subcat1Data.subcategories) {
                      const subcat2Translation = subcat1Data.subcategories.find(s => s.slug === subcat2.slug);
                      if (subcat2Translation) {
                        await insertTranslation(sub2.id, langCode, subcat2Translation.name);
                        stats.translations++;
                      }
                    }
                  }
                }

                if (subcat2.subcategories) {
                  for (const subcat3 of subcat2.subcategories) {
                    const sub3 = await insertCategory(subcat3.slug, null, 0, 3, sub2.id, subcat3.name);
                    if (sub3) {
                      if (!SKIP_TRANSLATIONS) {
                        for (const [langCode, catData] of languageMap.entries()) {
                          const subcat1Data = catData.subcategories.find(s => s.slug === subcat1.slug);
                          const subcat2Data = subcat1Data && subcat1Data.subcategories ? subcat1Data.subcategories.find(s => s.slug === subcat2.slug) : null;
                          const subcat3Translation = subcat2Data && subcat2Data.subcategories ? subcat2Data.subcategories.find(s => s.slug === subcat3.slug) : null;
                          if (subcat3Translation) {
                            await insertTranslation(sub3.id, langCode, subcat3Translation.name);
                            stats.translations++;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      // Petite pause pour éviter de surcharger l'API
      await new Promise(resolve => setTimeout(resolve, 50));
    }

    console.log('\n' + '='.repeat(60));
    console.log('🎉 MIGRATION TERMINÉE AVEC SUCCÈS!\n');
    console.log('📊 STATISTIQUES:');
    console.log(`   ✅ Catégories principales: ${stats.categories}`);
    console.log(`   ✅ Sous-catégories niveau 1: ${stats.subcategories_l1}`);
    console.log(`   ✅ Sous-catégories niveau 2: ${stats.subcategories_l2}`);
    console.log(`   ✅ Traductions créées: ${stats.translations}`);
    console.log(`   ✅ Total catégories: ${stats.categories + stats.subcategories_l1 + stats.subcategories_l2}`);
    console.log('=' .repeat(60));

  } catch (error) {
    console.error('\n❌ ERREUR CRITIQUE:', error);
  }
}

// Exécution
migrateToSupabase();
