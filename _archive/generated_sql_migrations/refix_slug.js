const fs = require('fs');
const path = require('path');

const filePath = process.argv[2];

if (!filePath) {
    console.error('Please provide a file path');
    process.exit(1);
}

const absolutePath = path.resolve(filePath);
let content = fs.readFileSync(absolutePath, 'utf8');

// Replace ON CONFLICT (id) with ON CONFLICT (slug) and add id update
// The original looks like: ON CONFLICT (id) DO UPDATE SET level = ...
// We want: ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = ...

// Use a regex that captures the start of the update set to be safe
content = content.replace(
    /ON CONFLICT \(id\) DO UPDATE SET/g, 
    'ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id,'
);

fs.writeFileSync(absolutePath, content, 'utf8');
console.log('File updated to handle slug conflicts.');
