const fs = require('fs');
const path = require('path');

const filePath = process.argv[2];

if (!filePath) {
    console.error('Please provide a file path');
    process.exit(1);
}

const absolutePath = path.resolve(filePath);
let content = fs.readFileSync(absolutePath, 'utf8');

// 1. Collect French translations
const translations = new Map();
// Regex to capture slug and french name. 
// Assumes format: PERFORM insert_category_translations('slug', 'fr', 'Name');
// Handles escaped quotes in name if present (e.g. 'L''agriculture')
const translationRegex = /PERFORM insert_category_translations\('([^']+)',\s*'fr',\s*'((?:[^']|'')*)'\);/g;

let match;
while ((match = translationRegex.exec(content)) !== null) {
    const slug = match[1];
    const name = match[2];
    translations.set(slug, name);
}

console.log(`Found ${translations.size} translations.`);

// 2. Replace UUID declarations with TEXT
content = content.replace(/(\s+[a-z0-9_]+)\s+UUID;/gi, '$1 TEXT;');

// 3. Update INSERT statements
// Pattern matches: INSERT INTO categories (...) VALUES (...) ON CONFLICT (...) DO UPDATE SET ... RETURNING ...;
// We use [\s\S] to match across lines.
const insertRegex = /(INSERT INTO categories\s*\(([\s\S]*?)\)\s*VALUES\s*\(([\s\S]*?)\)\s*ON CONFLICT\s*\(([\s\S]*?)\)\s*DO UPDATE SET\s*([\s\S]*?))(\s*RETURNING[\s\S]*?;)/gi;

content = content.replace(insertRegex, (fullMatch, insertPart, columns, values, conflictTarget, updateSet, returningPart) => {
    // Check if 'name' is already in columns
    if (columns.toLowerCase().includes('name')) {
        return fullMatch;
    }

    // Extract slug to find translation
    // Values usually look like: 'slug', 'slug', ...
    // We assume the first value is the ID which is the slug in our case (or the second is the slug)
    // Let's clean up values string
    const cleanValues = values.replace(/\s/g, '');
    const valParts = cleanValues.split(',');
    let slug = valParts[0].replace(/^'|'$/g, ''); // Remove quotes
    
    // If slug looks like a variable (no quotes), it might be a variable, but here we expect literals for ID/Slug usually?
    // Wait, in the file: VALUES ('agriculture-agroalimentaire', 'agriculture-agroalimentaire', 0)
    // So yes, they are literals.
    
    let name = translations.get(slug);
    
    if (!name) {
        // Try second value if first didn't work (maybe ID != slug ?)
        if (valParts.length > 1) {
             const slug2 = valParts[1].replace(/^'|'$/g, '');
             name = translations.get(slug2);
        }
    }

    if (name) {
        console.log(`Fixing INSERT for: ${slug} -> ${name}`);
        
        // Add 'name' to columns
        const newColumns = `${columns.trim()}, name`;
        
        // Add name value to values
        // Escape single quotes for SQL: ' -> ''
        const sqlName = `'${name.replace(/'/g, "''")}'`;
        const newValues = `${values.trim()}, ${sqlName}`;
        
        // Add name update to ON CONFLICT
        // We also switch to ON CONFLICT (slug) to handle existing UUID rows and update their ID
        // And explicitly update the ID to ensure it matches the new text format
        const newUpdateSet = `id = EXCLUDED.id, ${updateSet.trim()}, name = EXCLUDED.name`;
        
        // Replace conflict target (id) with (slug)
        const newConflictTarget = 'slug';

        return `INSERT INTO categories (${newColumns})\n    VALUES (${newValues})\n    ON CONFLICT (${newConflictTarget}) DO UPDATE SET ${newUpdateSet}${returningPart}`;
    } else {
        console.warn(`No translation found for slug: ${slug}`);
        return fullMatch;
    }
});

fs.writeFileSync(absolutePath, content, 'utf8');
console.log('File updated successfully.');
