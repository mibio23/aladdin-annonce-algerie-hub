// Script de migration intelligent avec gestion des contraintes
require('dotenv').config();

const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Configuration Supabase
const SUPABASE_URL = "https://smsvybphkdxzvgawzoru.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g";

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

/**
 * Convertir un ID texte en numérique unique par langue
 */
function textToNumericId(textId, language) {
    // Créer un hash différent pour chaque langue
    let hash = 0;
    const str = textId + language;
    
    for (let i = 0; i < str.length; i++) {
        const char = str.charCodeAt(i);
        hash = ((hash << 5) - hash) + char;
        hash = hash & hash; // Convertir en 32-bit
    }
    
    // Préfixer par un code langue pour garantir l'unicité
    const langCode = {
        'fr': 1, 'ar': 2, 'en': 3, 'es': 4, 'de': 5, 'it': 6
    }[language] || 9;
    
    // Prendre les 6 derniers chiffres du hash
    const hashPart = Math.abs(hash % 1000000);
    
    // Combiner code langue + hash (ex: 1000123 pour FR)
    return langCode * 1000000 + hashPart;
}

/**
 * Parser un fichier SQL et extraire les INSERT statements
 */
function parseSQLFile(filePath) {
    try {
        const content = fs.readFileSync(filePath, 'utf8');
        
        // Extraire tous les INSERT statements
        const insertRegex = /INSERT INTO categories \([^)]+\) VALUES \([^)]+\)/g;
        const matches = content.match(insertRegex) || [];
        
        return matches.map(stmt => {
            // Extraire les valeurs - pattern pour 6 colonnes
            const valuesMatch = stmt.match(/VALUES \('([^']*)',\s*'([^']*)',\s*'([^']*)',\s*([^,]*),\s*(\d+),\s*'([^']*)'\)/);
            
            if (valuesMatch) {
                const [, id, name, slug, parentId, level, language] = valuesMatch;
                
                // Convertir l'ID texte en numérique unique par langue
                const numericId = textToNumericId(id, language);
                
                // Convertir le parent_id aussi
                let numericParentId = null;
                if (parentId !== 'NULL') {
                    const parentTextId = parentId.startsWith('\'') ? parentId.slice(1, -1) : parentId;
                    numericParentId = textToNumericId(parentTextId, language);
                }
                
                return {
                    id: numericId,
                    name: name.replace(/''/g, "'"), // Dé-échapper les quotes
                    slug: slug,
                    parent_id: numericParentId,
                    level: parseInt(level),
                    langue: language,
                    // Valeurs par défaut pour les autres colonnes
                    description: '',
                    icon: null,
                    image_url: null,
                    position_order: 0,
                    is_active: true,
                    id_uuid: null,
                    parent_id_uuid: null
                };
            }
            return null;
        }).filter(Boolean);
    } catch (error) {
        console.error(`❌ Erreur lecture ${filePath}:`, error.message);
        return [];
    }
}

/**
 * Vérifier si une catégorie existe déjà
 */
async function categoryExists(id, langue) {
    const { data, error } = await supabase
        .from('categories')
        .select('id')
        .eq('id', id)
        .eq('langue', langue)
        .single();
        
    return !error && data;
}

/**
 * Migrer un fichier SQL vers Supabase
 */
async function migrateFile(filePath) {
    const categories = parseSQLFile(filePath);
    const fileName = path.basename(filePath);
    
    console.log(`📄 ${fileName}: ${categories.length} catégories à migrer`);
    
    let successCount = 0;
    let errorCount = 0;
    let skippedCount = 0;
    
    // Migrer une par une pour mieux gérer les erreurs
    for (let i = 0; i < categories.length; i++) {
        const category = categories[i];
        
        // Vérifier si elle existe déjà
        const exists = await categoryExists(category.id, category.langue);
        if (exists) {
            skippedCount++;
            process.stdout.write(`⏩ ${i + 1}/${categories.length} déjà existante\r`);
            continue;
        }
        
        try {
            const { data, error } = await supabase
                .from('categories')
                .insert([category])
                .select();
                
            if (error) {
                console.error(`❌ Catégorie ${category.id} (${category.langue}):`, error.message);
                errorCount++;
            } else {
                successCount++;
                process.stdout.write(`✅ ${i + 1}/${categories.length} créée\r`);
            }
        } catch (error) {
            console.error(`❌ Erreur catégorie ${category.id}:`, error.message);
            errorCount++;
        }
    }
    
    console.log(`\n✅ ${fileName}: ${successCount} créées, ${skippedCount} ignorées, ${errorCount} erreurs`);
    return { successCount, errorCount, skippedCount, total: categories.length };
}

/**
 * Migration complète de tous les fichiers
 */
async function migrateAll() {
    console.log('🚀 DÉBUT DE LA MIGRATION VERS SUPABASE\n');
    console.log(`URL: ${SUPABASE_URL}`);
    console.log('='.repeat(60) + '\n');
    
    // Récupérer tous les fichiers SQL
    const sqlFiles = fs.readdirSync('.')
        .filter(file => file.startsWith('migrate-') && file.endsWith('-all-langs.sql'))
        .sort();
    
    console.log(`📁 ${sqlFiles.length} fichiers SQL trouvés\n`);
    
    const results = {
        totalFiles: sqlFiles.length,
        successfulFiles: 0,
        failedFiles: 0,
        totalCategories: 0,
        successfulCategories: 0,
        failedCategories: 0,
        skippedCategories: 0
    };
    
    // Traiter chaque fichier
    for (let i = 0; i < sqlFiles.length; i++) {
        const file = sqlFiles[i];
        console.log(`\n[${i + 1}/${sqlFiles.length}] Traitement: ${file}`);
        console.log('-'.repeat(50));
        
        try {
            const result = await migrateFile(file);
            results.totalCategories += result.total;
            results.successfulCategories += result.successCount;
            results.failedCategories += result.errorCount;
            results.skippedCategories += result.skippedCount;
            
            if (result.errorCount === 0) {
                results.successfulFiles++;
            } else {
                results.failedFiles++;
            }
        } catch (error) {
            console.error(`❌ Erreur fatale sur ${file}:`, error.message);
            results.failedFiles++;
        }
    }
    
    // Résumé final
    console.log('\n' + '='.repeat(60));
    console.log('📊 RÉSUMÉ FINAL DE LA MIGRATION');
    console.log('='.repeat(60));
    console.log(`📁 Fichiers traités: ${results.totalFiles}`);
    console.log(`✅ Fichiers réussis: ${results.successfulFiles}`);
    console.log(`❌ Fichiers avec erreurs: ${results.failedFiles}`);
    console.log(`\n📝 Catégories totales: ${results.totalCategories}`);
    console.log(`✅ Catégories créées: ${results.successfulCategories}`);
    console.log(`⏩ Catégories ignorées (déjà existantes): ${results.skippedCategories}`);
    console.log(`❌ Catégories en échec: ${results.failedCategories}`);
    console.log(`📊 Taux de réussite: ${((results.successfulCategories / results.totalCategories) * 100).toFixed(1)}%`);
    
    if (results.failedFiles > 0) {
        console.log('\n⚠️  Certains fichiers ont échoué. Vérifiez les logs ci-dessus.');
    }
    
    return results;
}

/**
 * Vérification rapide de la migration
 */
async function quickVerify() {
    console.log('\n🔍 VÉRIFICATION RAPIDE DE LA MIGRATION\n');
    
    const languages = ['fr', 'ar', 'en', 'es', 'de', 'it'];
    const expectedCategories = 29; // Nombre de catégories principales
    
    for (const lang of languages) {
        const { data, error } = await supabase
            .from('categories')
            .select('id', { count: 'exact' })
            .eq('langue', lang)
            .eq('level', 0); // Catégories principales uniquement
            
        if (error) {
            console.error(`❌ Erreur ${lang}:`, error.message);
        } else {
            const count = data?.length || 0;
            const status = count >= expectedCategories ? '✅' : '⚠️';
            console.log(`${status} ${lang.toUpperCase()}: ${count}/${expectedCategories} catégories principales`);
        }
    }
}

// Exécution principale
if (require.main === module) {
    const command = process.argv[2];
    
    if (command === 'verify') {
        quickVerify().then(() => process.exit(0));
    } else {
        migrateAll().then(async (results) => {
            if (results.failedCategories === 0) {
                console.log('\n🎉 Migration réussie ! Vérification en cours...');
                await quickVerify();
            }
            process.exit(results.failedFiles > 0 ? 1 : 0);
        }).catch(error => {
            console.error('❌ Erreur fatale:', error);
            process.exit(1);
        });
    }
}

module.exports = { migrateAll, quickVerify };