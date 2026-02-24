import re
import json

def clean_ts_content(content):
    # Remove comments
    content = re.sub(r'//.*', '', content)
    
    # Remove imports
    content = re.sub(r'import .*?;', '', content, flags=re.DOTALL)
    
    # Remove export const ... = 
    content = re.sub(r'export const \w+.*?: MenuCategory =', '', content)
    content = re.sub(r'export const \w+ =', '', content)
    
    # Remove trailing semicolon
    content = content.strip().rstrip(';')
    
    # Remove icon: <...>
    # Pattern: icon: <...>, or icon: <... />
    # We assume it fits on one line or uses balanced tags. 
    # In the file it's: icon: <Wheat className="w-4 h-4" />,
    content = re.sub(r'icon:\s*<[^>]+>,?', '', content)
    
    # Quote keys
    # keys seen: id, name, slug, description, subcategories
    # We need to quote them if they are not quoted.
    # Look for word followed by colon, not inside quotes.
    # Simple approach: blindly replace specific known keys.
    known_keys = ['id', 'name', 'slug', 'description', 'subcategories']
    for key in known_keys:
        content = re.sub(r'\b' + key + r':', f'"{key}":', content)
        
    # Remove trailing commas before closing braces/brackets
    content = re.sub(r',\s*}', '}', content)
    content = re.sub(r',\s*]', ']', content)
    
    return content

def test_parse():
    path = r"c:\Users\PROGSM\Desktop\Aladdin correction avec GEMINI vs code\aladdin-annonce-algerie-hub-master\src\data\categories\megaMenuStructures\vetementHommeFemmeSousVetement\fr.tsx"
    with open(path, 'r', encoding='utf-8') as f:
        raw = f.read()
        
    cleaned = clean_ts_content(raw)
    
    try:
        data = json.loads(cleaned)
        print("SUCCESS! Parsed JSON.")
        print(f"Root ID: {data.get('id')}")
        print(f"Subcategories count: {len(data.get('subcategories', []))}")
        
        # Check depth
        l1 = data['subcategories'][0] # vetements-homme
        l2 = l1['subcategories'][0] # t-shirts
        l3 = l2['subcategories'][0] # basiques
        print(f"Found L3 item: {l3['id']}")
        
    except json.JSONDecodeError as e:
        print("FAILED to parse JSON.")
        print(e)
        # Print context
        start = max(0, e.pos - 50)
        end = min(len(cleaned), e.pos + 50)
        print(f"Context: ...{cleaned[start:end]}...")

if __name__ == "__main__":
    test_parse()
