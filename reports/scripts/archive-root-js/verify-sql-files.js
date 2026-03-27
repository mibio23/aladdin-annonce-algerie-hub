
const fs = require('fs');
const path = require('path');

const files = fs.readdirSync('.').filter(f => f.startsWith('migrate-') && f.endsWith('.sql') && f.includes('-all-langs'));

console.log(`Found ${files.length} SQL migration files.`);

files.forEach(f => {
    const content = fs.readFileSync(f, 'utf8');
    // Check for UUID compatibility
    const hasUuid = content.includes('gen_random_uuid()');
    // Check for correct table names
    const hasTranslationsTable = content.includes('category_translations');
    
    let status = '⚠️ Incompatible Schema';
    let issues = [];
    if (!hasUuid) issues.push('Uses text IDs instead of UUIDs');
    if (!hasTranslationsTable) issues.push('Does not use category_translations table');
    
    console.log(`- ${f}: ${status}`);
    if (issues.length > 0) {
        console.log(`  Issues: ${issues.join(', ')}`);
    }
});
