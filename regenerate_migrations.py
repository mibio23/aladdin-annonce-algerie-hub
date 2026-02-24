import os
import re
import json
import glob

# Configuration
TS_DIR = r"c:\Users\PROGSM\Desktop\Aladdin correction avec GEMINI vs code\aladdin-annonce-algerie-hub-master\src\data\categories\megaMenuStructures"
OUTPUT_DIR = r"c:\Users\PROGSM\Desktop\Aladdin correction avec GEMINI vs code\aladdin-annonce-algerie-hub-master\_archive\generated_sql_migrations"
LANGUAGES = ['fr', 'ar', 'en', 'de', 'es', 'it']

def clean_ts_content(content):
    """Converts TS object literal to JSON-parsable string."""
    # Remove comments
    content = re.sub(r'//.*', '', content)
    # Remove imports
    content = re.sub(r'import .*?;', '', content, flags=re.DOTALL)
    # Remove export
    content = re.sub(r'export const \w+.*?: MenuCategory =', '', content)
    content = re.sub(r'export const \w+ =', '', content)
    # Remove trailing semicolon
    content = content.strip().rstrip(';')
    # Remove icon JSX
    content = re.sub(r'icon:\s*<[^>]+>,?', '', content)
    # Quote keys
    known_keys = ['id', 'name', 'slug', 'description', 'subcategories']
    for key in known_keys:
        content = re.sub(r'\b' + key + r':', f'"{key}":', content)
    # Remove trailing commas
    content = re.sub(r',\s*}', '}', content)
    content = re.sub(r',\s*]', ']', content)
    return content

def parse_file(path):
    if not os.path.exists(path):
        return None
    with open(path, 'r', encoding='utf-8') as f:
        raw = f.read()
    cleaned = clean_ts_content(raw)
    try:
        return json.loads(cleaned)
    except Exception as e:
        print(f"Error parsing {path}: {e}")
        return None

def extract_translations(data, lang, translations_map):
    """Recursively extract (id -> name) for a language."""
    if not data:
        return
    
    cid = data.get('id')
    name = data.get('name')
    
    if cid and name:
        if cid not in translations_map:
            translations_map[cid] = {}
        translations_map[cid][lang] = name
        
    for sub in data.get('subcategories', []):
        extract_translations(sub, lang, translations_map)

def generate_sql_recursive(node, parent_var, current_level, translations_map, sql_lines):
    """
    Generates SQL for a node and its children.
    node: dict (current category data)
    parent_var: string (variable name of parent id, e.g. 'root_id' or 'l1_id')
    current_level: int (0, 1, 2...)
    """
    cid = node.get('id')
    slug = node.get('slug')
    
    # Variable for this current ID
    if current_level == 0:
        current_var = "root_id"
    else:
        current_var = f"l{current_level}_id" # e.g. l1_id, l2_id
    
    # Indentation
    indent = "    " * (current_level + 1)
    
    sql_lines.append(f"")
    sql_lines.append(f"{indent}-- Level {current_level}: {cid}")
    
    # INSERT statement
    # Handle parent_id
    if current_level == 0:
        # Root: No parent_id
        sql_lines.append(f"{indent}INSERT INTO categories (id, slug, level)")
        sql_lines.append(f"{indent}VALUES ('{cid}', '{slug}', {current_level})")
        sql_lines.append(f"{indent}ON CONFLICT (id) DO UPDATE SET level = {current_level}")
        sql_lines.append(f"{indent}RETURNING id INTO {current_var};")
    else:
        # Child: Use parent_var
        sql_lines.append(f"{indent}INSERT INTO categories (id, slug, level, parent_id)")
        sql_lines.append(f"{indent}VALUES ('{cid}', '{slug}', {current_level}, {parent_var})")
        sql_lines.append(f"{indent}ON CONFLICT (id) DO UPDATE SET level = {current_level}, parent_id = {parent_var}")
        sql_lines.append(f"{indent}RETURNING id INTO {current_var};")
    
    # Translations
    # Verify we have translations for all languages
    trans = translations_map.get(cid, {})
    for lang in LANGUAGES:
        name = trans.get(lang, f"MISSING_NAME_{lang}")
        # Escape single quotes
        name_safe = name.replace("'", "''")
        sql_lines.append(f"{indent}PERFORM insert_category_translations('{cid}', '{lang}', '{name_safe}');")
        
    # Recursion for children
    subcategories = node.get('subcategories', [])
    if subcategories:
        # We reuse variable names like l1_id, l2_id.
        # Since the SQL is sequential, overwriting l2_id for the next sibling is fine.
        # BUT we must ensure we don't overwrite the PARENT variable while processing children.
        # 'parent_var' comes from the caller, so it's stable.
        # 'current_var' is what we just set.
        
        for sub in subcategories:
            generate_sql_recursive(sub, current_var, current_level + 1, translations_map, sql_lines)

def generate_migration_file(folder_name, index):
    print(f"Processing {index}. {folder_name}...")
    folder_path = os.path.join(TS_DIR, folder_name)
    
    # 1. Parse FR (Source of Truth for Structure)
    fr_path = os.path.join(folder_path, 'fr.tsx')
    fr_data = parse_file(fr_path)
    if not fr_data:
        print(f"Skipping {folder_name}: Could not parse fr.tsx")
        return
        
    # 2. Build Translations Map
    translations_map = {} # id -> { lang: name }
    
    # Parse all languages to fill translations_map
    for lang in LANGUAGES:
        lang_path = os.path.join(folder_path, f"{lang}.tsx")
        lang_data = parse_file(lang_path)
        if lang_data:
            extract_translations(lang_data, lang, translations_map)
        else:
            print(f"Warning: Could not parse {lang}.tsx for {folder_name}")

    # 3. Determine Max Depth to declare variables
    # We can do a quick traversal or just declare up to l10_id to be safe.
    
    # 4. Generate SQL Content
    sql_lines = []
    sql_lines.append(f"-- Migration: {fr_data.get('name')} (Generated Recursive)")
    sql_lines.append(f"-- Handles arbitrary depth and 6 languages")
    sql_lines.append(f"")
    sql_lines.append(f"DO $$")
    sql_lines.append(f"DECLARE")
    sql_lines.append(f"    root_id UUID;")
    # Declare variables for levels 1 to 10
    for i in range(1, 11):
        sql_lines.append(f"    l{i}_id UUID;")
    sql_lines.append(f"BEGIN")
    
    # Start Recursion
    generate_sql_recursive(fr_data, None, 0, translations_map, sql_lines)
    
    sql_lines.append(f"END $$;")
    
    # 5. Write File
    filename = f"{index}-migrate-{folder_name}-FIXED.sql"
    output_path = os.path.join(OUTPUT_DIR, filename)
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_lines))
    print(f"Generated: {filename}")

def main():
    if not os.path.exists(OUTPUT_DIR):
        os.makedirs(OUTPUT_DIR)
        
    # Get folders and sort them
    folders = [d for d in os.listdir(TS_DIR) if os.path.isdir(os.path.join(TS_DIR, d))]
    folders.sort()
    
    index = 1
    for folder in folders:
        # Skip known empty/dummy folders
        if folder == "modeAccessoires":
            continue
            
        # Only process if fr.tsx exists
        fr_path = os.path.join(TS_DIR, folder, 'fr.tsx')
        if not os.path.exists(fr_path):
             print(f"Skipping {folder}: No fr.tsx found")
             continue
             
        generate_migration_file(folder, index)
        index += 1
        
    print("Done regenerating all migrations.")

if __name__ == "__main__":
    main()
