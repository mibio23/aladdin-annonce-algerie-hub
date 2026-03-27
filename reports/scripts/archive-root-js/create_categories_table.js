// Script pour créer la table categories dans Supabase
require('dotenv').config();

const { createClient } = require('@supabase/supabase-js');

// Configuration Supabase
const SUPABASE_URL = "https://smsvybphkdxzvgawzoru.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g";

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

/**
 * Créer la table categories
 */
async function createCategoriesTable() {
    console.log('🏗️  Création de la table categories...\n');
    
    const createTableSQL = `
        CREATE TABLE IF NOT EXISTS categories (
            id TEXT NOT NULL,
            name TEXT NOT NULL,
            slug TEXT NOT NULL,
            parent_id TEXT,
            level INTEGER NOT NULL DEFAULT 0,
            language TEXT NOT NULL,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            
            PRIMARY KEY (id, language),
            CONSTRAINT categories_parent_fk 
                FOREIGN KEY (parent_id, language) 
                REFERENCES categories(id, language) 
                ON DELETE CASCADE
        );
        
        -- Index pour améliorer les performances
        CREATE INDEX IF NOT EXISTS idx_categories_language ON categories(language);
        CREATE INDEX IF NOT EXISTS idx_categories_level ON categories(level);
        CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories(parent_id);
        CREATE INDEX IF NOT EXISTS idx_categories_slug ON categories(slug);
    `;
    
    try {
        // Exécuter le SQL via RPC
        const { data, error } = await supabase.rpc('exec_sql', { 
            sql: createTableSQL 
        });
        
        if (error) {
            console.error('❌ Erreur création table:', error);
            return false;
        }
        
        console.log('✅ Table categories créée avec succès !');
        return true;
        
    } catch (error) {
        console.error('❌ Erreur:', error.message);
        
        // Essayer une méthode alternative
        console.log('\n🔄 Tentative alternative via interface...');
        
        try {
            // Vérifier si la table existe
            const { data: tableExists } = await supabase
                .from('information_schema.tables')
                .select('table_name')
                .eq('table_name', 'categories')
                .single();
                
            if (!tableExists) {
                console.log('⚠️  La table doit être créée manuellement dans l\'interface Supabase');
                console.log('📋 Structure SQL nécessaire:');
                console.log(createTableSQL);
            }
            
        } catch (checkError) {
            console.error('❌ Impossible de vérifier l\'existence de la table');
        }
        
        return false;
    }
}

/**
 * Vérifier l'existence de la table
 */
async function checkTableExists() {
    console.log('🔍 Vérification de l\'existence de la table categories...\n');
    
    try {
        const { data, error } = await supabase
            .from('categories')
            .select('*')
            .limit(1);
            
        if (error) {
            if (error.code === 'PGRST116') {
                console.log('❌ La table categories n\'existe pas');
                return false;
            }
            console.error('❌ Erreur:', error);
            return false;
        }
        
        console.log('✅ La table categories existe');
        console.log(`📊 Nombre de lignes: ${data ? data.length : 0}`);
        return true;
        
    } catch (error) {
        console.error('❌ Erreur connexion:', error.message);
        return false;
    }
}

/**
 * Obtenir la structure actuelle de la base
 */
async function getDatabaseInfo() {
    console.log('📋 Informations sur la base de données:\n');
    
    try {
        // Lister toutes les tables
        const { data: tables } = await supabase
            .rpc('get_tables');
            
        if (tables) {
            console.log('📊 Tables existantes:');
            tables.forEach(table => {
                console.log(`  - ${table.table_name}`);
            });
        }
        
    } catch (error) {
        console.log('ℹ️  Impossible de lister les tables automatiquement');
    }
}

// Fonction principale
async function main() {
    console.log('🚀 VÉRIFICATION ET CRÉATION TABLE CATEGORIES\n');
    console.log('='.repeat(60));
    
    // Vérifier d'abord si la table existe
    const exists = await checkTableExists();
    
    if (!exists) {
        console.log('\n🎯 La table n\'existe pas, création en cours...\n');
        
        const created = await createCategoriesTable();
        
        if (created) {
            console.log('\n✅ Table créée avec succès !');
            console.log('\n🔄 Vous pouvez maintenant lancer la migration:');
            console.log('   node migrate_to_supabase.js');
        } else {
            console.log('\n❌ La création automatique a échoué.');
            console.log('\n📋 Pour créer manuellement:');
            console.log('1. Allez dans votre tableau de bord Supabase');
            console.log('2. Cliquez sur "SQL Editor"');
            console.log('3. Collez le SQL ci-dessous et exécutez:');
            console.log('\n--- SQL À COPIER ---');
            console.log(`
CREATE TABLE categories (
    id TEXT NOT NULL,
    name TEXT NOT NULL,
    slug TEXT NOT NULL,
    parent_id TEXT,
    level INTEGER NOT NULL DEFAULT 0,
    language TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    PRIMARY KEY (id, language),
    CONSTRAINT categories_parent_fk 
        FOREIGN KEY (parent_id, language) 
        REFERENCES categories(id, language) 
        ON DELETE CASCADE
);

CREATE INDEX idx_categories_language ON categories(language);
CREATE INDEX idx_categories_level ON categories(level);
CREATE INDEX idx_categories_parent ON categories(parent_id);
CREATE INDEX idx_categories_slug ON categories(slug);
            `);
        }
    } else {
        console.log('\n✅ La table existe déjà !');
        console.log('\n🔄 Vous pouvez lancer la migration:');
        console.log('   node migrate_to_supabase.js');
    }
}

if (require.main === module) {
    main().then(() => {
        process.exit(0);
    }).catch(error => {
        console.error('❌ Erreur fatale:', error);
        process.exit(1);
    });
}

module.exports = { checkTableExists, createCategoriesTable };