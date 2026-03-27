import { createClient } from '@supabase/supabase-js';
import { readFileSync, readdirSync } from 'fs';
import { join } from 'path';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

const LANGUAGES = ['fr', 'ar', 'en', 'de', 'es', 'it'];

// Fonction pour extraire les données d'une structure de catégorie depuis un fichier .tsx
function extractCategoryFromFile(filePath) {
  try {
    const content = readFileSync(filePath, 'utf-8');
    
    // Extraire l'ID de la catégorie
    const idMatch = content.match(/id:\s*["']([^"']+)["']/);
    if (!idMatch) return null;
    
    const id = idMatch[1];
    
    // Extraire le nom
    const nameMatch = content.match(/name:\s*["']([^"']+)["']/);
    const name = nameMatch ? nameMatch[1] : id;
    
    // Extraire le slug
    const slugMatch = content.match(/slug:\s*["']([^"']+)["']/);
    const slug = slugMatch ? slugMatch[1] : id;
    
    // Extraire les sous-catégories
    const subcategories = [];
    const subcategoriesMatch = content.match(/subcategories:\s*\[([\s\S]*?)\]\s*\}/);
    
    if (subcategoriesMatch) {
      const subcatsContent = subcategoriesMatch[1];
      
      // Pattern pour matcher les sous-catégories de niveau 1
      const subcatPattern = /\{[^}]*id:\s*["']([^"']+)["'][^}]*name:\s*["']([^"']+)["'][^}]*slug:\s*["']([^"']+)["'][^}]*(?:subcategories:\s*\[([\s\S]*?)\])?[^}]*\}/g;
      
      let match;
      while ((match = subcatPattern.exec(subcatsContent)) !== null) {
        const subcat = {
          id: match[1],
          name: match[2],
          slug: match[3],
          subcategories: []
        };
        
        // Si il y a des sous-sous-catégories
        if (match[4]) {
          const subsubPattern = /\{\s*id:\s*["']([^"']+)["'],\s*name:\s*["']([^"']+)["'],\s*slug:\s*["']([^"']+)["']\s*\}/g;
          let subsubMatch;
          while ((subsubMatch = subsubPattern.exec(match[4])) !== null) {
            subcat.subcategories.push({
              id: subsubMatch[1],
              name: subsubMatch[2],
              slug: subsubMatch[3]
            });
          }
        }
        
        subcategories.push(subcat);
      }
    }
    
    return { id, name, slug, subcategories };
  } catch (error) {
    console.error(`Erreur lors de la lecture du fichier ${filePath}:`, error.message);
    return null;
  }
}

// Fonction pour obtenir toutes les catégories d'un dossier
function getCategoriesFromDirectory(dirPath) {
  const categories = {};
  
  try {
    const files = readdirSync(dirPath);
    
    for (const lang of LANGUAGES) {
      const langFile = `${lang}.tsx`;
      if (files.includes(langFile)) {
        const category = extractCategoryFromFile(join(dirPath, langFile));
        if (category) {
          categories[lang] = category;
        }
      }
    }
  } catch (error) {
    console.error(`Erreur lors de la lecture du dossier ${dirPath}:`, error.message);
  }
  
  return categories;
}

// Fonction principale de migration
async function migrateCategories() {
  console.log('🚀 Début de la migration complète des 29 catégories en 6 langues\n');
  console.log('📌 Cette migration respecte les différences entre langues et les multiples niveaux\n');
  
  const basePath = 'src/data/categories/megaMenuStructures';
  const categoryDirs = readdirSync(basePath, { withFileTypes: true })
    .filter(dirent => dirent.isDirectory())
    .map(dirent => dirent.name);
  
  console.log(`📁 ${categoryDirs.length} dossiers de catégories trouvés\n`);
  
  let totalInserted = 0;
  let totalTranslations = 0;
  let categoryCount = 0;
  
  for (const categoryDir of categoryDirs) {
    categoryCount++;
    console.log(`\n${'='.repeat(80)}`);
    console.log(`📂 [${categoryCount}/${categoryDirs.length}] Traitement de: ${categoryDir}`);
    console.log('='.repeat(80));
    
    const categoryPath = join(basePath, categoryDir);
    const categoriesByLang = getCategoriesFromDirectory(categoryPath);
    
    if (Object.keys(categoriesByLang).length === 0) {
      console.log(`   ⚠️  Aucune donnée trouvée pour ${categoryDir}`);
      continue;
    }
    
    // Utiliser la version française comme référence principale
    const frCategory = categoriesByLang['fr'];
    if (!frCategory) {
      console.log(`   ⚠️  Version française manquante pour ${categoryDir}`);
      continue;
    }
    
    console.log(`   📝 Catégorie principale: ${frCategory.name} (${frCategory.slug})`);
    console.log(`   🌍 Langues disponibles: ${Object.keys(categoriesByLang).join(', ')}`);
    
    // Créer un mapping des IDs vers les noms dans chaque langue
    const translations = {};
    for (const lang of LANGUAGES) {
      if (categoriesByLang[lang]) {
        translations[lang] = {
          main: categoriesByLang[lang].name,
          subcats: {},
          subsubcats: {}
        };
        
        // Mapper les sous-catégories
        for (const subcat of categoriesByLang[lang].subcategories) {
          translations[lang].subcats[subcat.id] = subcat.name;
          
          // Mapper les sous-sous-catégories
          if (subcat.subcategories) {
            for (const subsubcat of subcat.subcategories) {
              translations[lang].subsubcats[subsubcat.id] = subsubcat.name;
            }
          }
        }
      }
    }
    
    // Insérer la catégorie principale (niveau 0)
    const { data: mainCategory, error: mainError } = await supabase
      .from('categories')
      .select('id, slug')
      .eq('slug', frCategory.slug)
      .eq('level', 0)
      .maybeSingle();
    
    let mainCategoryId;
    
    if (mainCategory) {
      console.log(`   ✓ Catégorie principale existe déjà (ID: ${mainCategory.id})`);
      mainCategoryId = mainCategory.id;
    } else {
      const { data: inserted, error: insertError } = await supabase
        .from('categories')
        .insert({
          name: frCategory.name,
          slug: frCategory.slug,
          level: 0,
          is_active: true,
          position_order: 0
        })
        .select('id')
        .single();
      
      if (insertError) {
        console.log(`   ❌ Erreur insertion: ${insertError.message}`);
        continue;
      }
      
      mainCategoryId = inserted.id;
      totalInserted++;
      console.log(`   ✓ Catégorie principale insérée (ID: ${mainCategoryId})`);
    }
    
    // Insérer les traductions pour la catégorie principale
    let translationsInserted = 0;
    for (const lang of LANGUAGES) {
      if (translations[lang]) {
        const { error: transError } = await supabase
          .from('category_translations')
          .upsert({
            category_id: mainCategoryId,
            language_code: lang,
            name: translations[lang].main
          }, {
            onConflict: 'category_id,language_code'
          });
        
        if (!transError) {
          totalTranslations++;
          translationsInserted++;
        }
      }
    }
    
    console.log(`   ✓ ${translationsInserted} traductions insérées pour la catégorie principale`);
    
    // Insérer les sous-catégories (niveau 1)
    let subcatCount = 0;
    let subcatTransCount = 0;
    
    for (const subcat of frCategory.subcategories) {
      const { data: existingSubcat } = await supabase
        .from('categories')
        .select('id')
        .eq('slug', subcat.slug)
        .eq('parent_id', mainCategoryId)
        .eq('level', 1)
        .maybeSingle();
      
      let subcatId;
      
      if (existingSubcat) {
        subcatId = existingSubcat.id;
      } else {
        const { data: insertedSubcat, error: subcatError } = await supabase
          .from('categories')
          .insert({
            name: subcat.name,
            slug: subcat.slug,
            parent_id: mainCategoryId,
            level: 1,
            is_active: true,
            position_order: subcatCount
          })
          .select('id')
          .single();
        
        if (subcatError) {
          console.log(`   ⚠️  Erreur sous-catégorie ${subcat.slug}: ${subcatError.message}`);
          continue;
        }
        
        subcatId = insertedSubcat.id;
        totalInserted++;
        subcatCount++;
      }
      
      // Insérer les traductions pour la sous-catégorie
      for (const lang of LANGUAGES) {
        if (translations[lang] && translations[lang].subcats[subcat.id]) {
          await supabase
            .from('category_translations')
            .upsert({
              category_id: subcatId,
              language_code: lang,
              name: translations[lang].subcats[subcat.id]
            }, {
              onConflict: 'category_id,language_code'
            });
          
          totalTranslations++;
          subcatTransCount++;
        }
      }
      
      // Insérer les sous-sous-catégories (niveau 2)
      let subsubcatCount = 0;
      let subsubcatTransCount = 0;
      
      if (subcat.subcategories && subcat.subcategories.length > 0) {
        for (const subsubcat of subcat.subcategories) {
          const { data: existingSubsubcat } = await supabase
            .from('categories')
            .select('id')
            .eq('slug', subsubcat.slug)
            .eq('parent_id', subcatId)
            .eq('level', 2)
            .maybeSingle();
          
          let subsubcatId;
          
          if (existingSubsubcat) {
            subsubcatId = existingSubsubcat.id;
          } else {
            const { data: insertedSubsubcat, error: subsubcatError } = await supabase
              .from('categories')
              .insert({
                name: subsubcat.name,
                slug: subsubcat.slug,
                parent_id: subcatId,
                level: 2,
                is_active: true,
                position_order: subsubcatCount
              })
              .select('id')
              .single();
            
            if (subsubcatError) {
              console.log(`   ⚠️  Erreur sous-sous-catégorie ${subsubcat.slug}: ${subsubcatError.message}`);
              continue;
            }
            
            subsubcatId = insertedSubsubcat.id;
            totalInserted++;
            subsubcatCount++;
          }
          
          // Insérer les traductions pour la sous-sous-catégorie
          for (const lang of LANGUAGES) {
            if (translations[lang] && translations[lang].subsubcats[subsubcat.id]) {
              await supabase
                .from('category_translations')
                .upsert({
                  category_id: subsubcatId,
                  language_code: lang,
                  name: translations[lang].subsubcats[subsubcat.id]
                }, {
                  onConflict: 'category_id,language_code'
                });
              
              totalTranslations++;
              subsubcatTransCount++;
            }
          }
        }
      }
    }
    
    console.log(`   ✓ ${subcatCount} sous-catégories niveau 1 insérées`);
    console.log(`   ✓ ${subcatTransCount} traductions sous-catégories`);
    console.log(`   ✓ Sous-sous-catégories niveau 2 traitées`);
  }
  
  console.log('\n' + '='.repeat(80));
  console.log('✅ MIGRATION TERMINÉE AVEC SUCCÈS');
  console.log('='.repeat(80));
  console.log(`📊 Total catégories insérées: ${totalInserted}`);
  console.log(`🌍 Total traductions insérées: ${totalTranslations}`);
  console.log(`📁 Total catégories principales: ${categoryCount}`);
  console.log(`🎯 Langues supportées: ${LANGUAGES.join(', ')}`);
  console.log('='.repeat(80));
  console.log('\n🎉 Vous pouvez maintenant créer des annonces dans toutes les catégories et langues!');
}

// Exécuter la migration
migrateCategories().catch(error => {
  console.error('\n❌ ERREUR FATALE:', error);
  process.exit(1);
});

// Convertir la structure hiérarchique en tableau plat avec UUIDs
function flattenCategories(categories) {
  const flat = [];
  const uuidMap = {}; // Map to store generated UUIDs for each category ID

  function processCategory(category, parentUuid = null) {
    // Generate UUID for this category if not already generated
    if (!uuidMap[category.id]) {
      uuidMap[category.id] = crypto.randomUUID();
    }
    
    const categoryUuid = uuidMap[category.id];
    
    // Add the category to flat array
    flat.push({
      id_uuid: categoryUuid,
      name: category.name,
      slug: category.slug,
      parent_id_uuid: parentUuid,
      level: category.level
    });

    // Process subcategories if they exist
    if (category.subcategories) {
      category.subcategories.forEach(subcategory => {
        processCategory(subcategory, categoryUuid);
      });
    }
  }

  // Process all main categories
  categories.forEach(category => {
    processCategory(category, null);
  });

  return flat;
}

// Fonction pour créer une catégorie (avec gestion des doublons)
async function createCategory(category) {
  try {
    // Vérifier si une catégorie avec le même slug existe déjà
    const { data: existing } = await supabase
      .from('categories')
      .select('id_uuid')
      .eq('slug', category.slug)
      .single();

    if (existing) {
      console.log(`⚠️  Catégorie "${category.name}" existe déjà (slug: ${category.slug})`);
      return { id_uuid: existing.id_uuid, existing: true };
    }

    // Créer la nouvelle catégorie
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: category.name,
        slug: category.slug,
        id_uuid: category.id_uuid,
        parent_id_uuid: category.parent_id_uuid,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) {
      console.error(`❌ Erreur lors de la création de la catégorie "${category.name}":`, error.message);
      return null;
    }

    console.log(`✅ Catégorie créée: ${category.name} (niveau ${category.level})`);
    return { id_uuid: data.id_uuid, existing: false };
  } catch (error) {
    console.error(`❌ Erreur lors de la création de la catégorie "${category.name}":`, error.message);
    return null;
  }
}

// Fonction principale de migration
async function migrateCategories() {
  console.log('🚀 Début de la migration complète des catégories...\n');

  try {
    // Convertir la structure hiérarchique en tableau plat
    const flatCategories = flattenCategories(menuCategories);
    
    // Trier par niveau pour s'assurer que les parents sont créés avant les enfants
    flatCategories.sort((a, b) => a.level - b.level);

    console.log(`📊 Nombre total de catégories à traiter: ${flatCategories.length}\n`);

    let createdCount = 0;
    let existingCount = 0;
    let failureCount = 0;

    // Créer chaque catégorie
    for (const category of flatCategories) {
      const result = await createCategory(category);
      if (result) {
        if (result.existing) {
          existingCount++;
        } else {
          createdCount++;
        }
      } else {
        failureCount++;
      }
    }

    console.log('\n📊 Résumé de la migration:');
    console.log(`✅ Créées: ${createdCount}`);
    console.log(`⚠️  Existaient déjà: ${existingCount}`);
    console.log(`❌ Échecs: ${failureCount}`);
    
    if (failureCount > 0) {
      console.log('⚠️  Certains éléments n\'ont pas pu être migrés.');
    } else {
      console.log('🎉 Migration terminée avec succès!');
    }

  } catch (error) {
    console.error('❌ Erreur lors de la migration:', error.message);
  }
}

// Exécuter la migration
migrateCategories();