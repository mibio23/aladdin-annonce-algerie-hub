// Script d'analyse et de génération SQL pour la migration des catégories
// Ce script analyse la structure actuelle et génère le SQL nécessaire

import { refactoredCategories } from '../src/data/categories';
import { CATEGORIES } from '../src/data/categories';

interface CategoryNode {
  id: string;
  name: string;
  slug: string;
  level: number;
  parentId?: string;
  uuid: string;
}

// Générer un UUID déterministe basé sur le slug
function generateDeterministicUUID(slug: string, level: number, parentSlug?: string): string {
  // Utiliser une approche similaire à notre logique actuelle mais en format UUID valide
  const slugHex = slug
    .split('')
    .map(char => char.charCodeAt(0).toString(16))
    .join('')
    .substring(0, 8)
    .padEnd(8, level.toString());
  
  const levelIndicator = level === 0 ? '0000' : level === 1 ? '1111' : '2222';
  
  return `00000000-${slugHex.substring(0, 4)}-${levelIndicator}-0000-000000000000`;
}

// Extraire toutes les catégories de la structure refactorisée
function extractAllCategories(): CategoryNode[] {
  const categories: CategoryNode[] = [];
  
  refactoredCategories.forEach(module => {
    module.categories.forEach(category => {
      // Catégorie principale
      const mainCategory: CategoryNode = {
        id: category.id,
        name: category.name,
        slug: category.slug,
        level: 0,
        uuid: generateDeterministicUUID(category.slug, 0)
      };
      categories.push(mainCategory);
      
      // Sous-catégories
      if (category.subcategories && category.subcategories.length > 0) {
        category.subcategories.forEach(subcategory => {
          const subCategory: CategoryNode = {
            id: subcategory.id,
            name: subcategory.name,
            slug: subcategory.slug,
            level: 1,
            parentId: category.id,
            uuid: generateDeterministicUUID(subcategory.slug, 1, category.slug)
          };
          categories.push(subCategory);
          
          // Sous-sous-catégories
          if (subcategory.subcategories && subcategory.subcategories.length > 0) {
            subcategory.subcategories.forEach(subSubcategory => {
              const subSubCategory: CategoryNode = {
                id: subSubcategory.id,
                name: subSubcategory.name,
                slug: subSubcategory.slug,
                level: 2,
                parentId: subcategory.id,
                uuid: generateDeterministicUUID(subSubcategory.slug, 2, subcategory.slug)
              };
              categories.push(subSubCategory);
            });
          }
        });
      }
    });
  });
  
  return categories;
}

// Générer le SQL d'insertion
function generateInsertSQL(categories: CategoryNode[]): string {
  let sql = '-- SQL de migration des catégories vers Supabase\n';
  sql += '-- Généré automatiquement le ' + new Date().toISOString() + '\n\n';
  
  sql += '-- Désactiver temporairement les contraintes de clé étrangère\n';
  sql += 'ALTER TABLE categories DISABLE TRIGGER ALL;\n\n';
  
  sql += '-- Supprimer les données existantes (attention: ceci effacera les catégories existantes)\n';
  sql += '-- DELETE FROM categories WHERE level IS NOT NULL;\n\n';
  
  sql += '-- Insertion des catégories\n';
  sql += 'INSERT INTO categories (id_uuid, name, slug, level, parent_id, is_active, sort_order, created_at, updated_at) VALUES\n';
  
  const values = categories.map(cat => {
    const parentId = cat.parentId ? `(SELECT id FROM categories WHERE slug = '${cat.parentId}' LIMIT 1)` : 'NULL';
    const sortOrder = cat.level * 100; // Simple logique de tri
    
    return `(
      '${cat.uuid}',
      '${cat.name.replace(/'/g, "''")}',
      '${cat.slug}',
      ${cat.level},
      ${parentId},
      true,
      ${sortOrder},
      NOW(),
      NOW()
    )`;
  });
  
  sql += values.join(',\n') + ';\n\n';
  
  sql += '-- Réactiver les contraintes de clé étrangère\n';
  sql += 'ALTER TABLE categories ENABLE TRIGGER ALL;\n\n';
  
  sql += '-- Mise à jour des parent_id (nécessaire pour les sous-catégories)\n';
  sql += 'UPDATE categories SET parent_id = (SELECT id FROM categories c2 WHERE c2.slug = categories.parent_id LIMIT 1) WHERE parent_id IS NOT NULL;\n\n';
  
  sql += '-- Vérification finale\n';
  sql += 'SELECT COUNT(*) as total_categories FROM categories WHERE level IS NOT NULL;\n';
  sql += 'SELECT level, COUNT(*) as count FROM categories WHERE level IS NOT NULL GROUP BY level ORDER BY level;\n';
  
  return sql;
}

// Générer un rapport de migration
function generateMigrationReport(categories: CategoryNode[]): string {
  let report = '📊 Rapport de migration des catégories\n';
  report += '=====================================\n\n';
  
  const stats = {
    main: categories.filter(c => c.level === 0).length,
    sub: categories.filter(c => c.level === 1).length,
    subsub: categories.filter(c => c.level === 2).length,
    total: categories.length
  };
  
  report += `Statistiques:\n`;
  report += `- Catégories principales: ${stats.main}\n`;
  report += `- Sous-catégories: ${stats.sub}\n`;
  report += `- Sous-sous-catégories: ${stats.subsub}\n`;
  report += `- Total: ${stats.total}\n\n`;
  
  report += `Exemples de catégories à migrer:\n`;
  const examples = categories.slice(0, 10);
  examples.forEach(cat => {
    const indent = '  '.repeat(cat.level);
    report += `${indent}- ${cat.name} (${cat.slug}) -> UUID: ${cat.uuid}\n`;
  });
  
  if (categories.length > 10) {
    report += `\n... et ${categories.length - 10} autres catégories\n`;
  }
  
  return report;
}

// Fonction principale
function main() {
  console.log('🔍 Analyse de la structure des catégories...\n');
  
  // Extraire toutes les catégories
  const allCategories = extractAllCategories();
  
  // Générer le rapport
  const report = generateMigrationReport(allCategories);
  console.log(report);
  
  // Générer le SQL
  const sql = generateInsertSQL(allCategories);
  
  // Écrire le fichier SQL
  const fs = require('fs');
  const sqlFilePath = 'migration-categories-supabase.sql';
  fs.writeFileSync(sqlFilePath, sql);
  
  console.log(`\n✅ Fichier SQL généré: ${sqlFilePath}`);
  console.log(`📄 Le fichier contient ${sql.split('\n').length} lignes de SQL`);
  
  // Afficher un aperçu du SQL
  console.log('\n📝 Aperçu du SQL généré:');
  console.log(sql.substring(0, 500) + '...');
}

// Exécuter
main();