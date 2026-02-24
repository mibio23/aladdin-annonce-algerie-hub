import os
import re

TS_DIR = r"c:\Users\PROGSM\Desktop\Aladdin correction avec GEMINI vs code\aladdin-annonce-algerie-hub-master\src\data\categories\megaMenuStructures"

def get_max_depth(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # We can estimate depth by indentation of "subcategories: ["
    # Assuming 2 spaces indentation.
    # subcategories: [ -> level X
    #   { ...
    #     subcategories: [ -> level X+1
    
    # Root is level 0.
    # "subcategories: [" at root object is for Level 1 items.
    # Inside L1 item, "subcategories: [" is for Level 2 items.
    # Inside L2 item, "subcategories: [" is for Level 3 items.
    
    # Let's count the max nesting of "subcategories: [" strings?
    # No, regex matching nested structures is hard.
    # But indentation is a good proxy.
    
    lines = content.split('\n')
    max_indent = 0
    
    for line in lines:
        if "subcategories: [" in line:
            indent = len(line) - len(line.lstrip())
            if indent > max_indent:
                max_indent = indent
                
    # Map indent to level.
    # Usually:
    # export const ... = { (0)
    #   subcategories: [ (2 spaces) -> leads to L1 items
    #     {
    #       subcategories: [ (6 spaces?) -> leads to L2 items
    #         {
    #           subcategories: [ (10 spaces?) -> leads to L3 items
    
    return max_indent

def check_depths():
    folders = [d for d in os.listdir(TS_DIR) if os.path.isdir(os.path.join(TS_DIR, d))]
    
    print(f"{'Category':<40} | {'Max Indent':<10} | {'Est. Depth'}")
    print("-" * 65)
    
    for folder in folders:
        fr_path = os.path.join(TS_DIR, folder, 'fr.tsx')
        if os.path.exists(fr_path):
            indent = get_max_depth(fr_path)
            # Heuristic: 2 spaces = L1 start, 6=L2 start, 10=L3 start...
            # If indent >= 10, we likely have L3 items.
            
            # 2 spaces -> subcategories for Root (contains L1)
            # 6 spaces -> subcategories for L1 (contains L2)
            # 10 spaces -> subcategories for L2 (contains L3)
            # 14 spaces -> subcategories for L3 (contains L4)
            
            depth_est = "L2 (Standard)"
            if indent >= 14:
                depth_est = "L4+ (DEEP)"
            elif indent >= 10:
                depth_est = "L3 (Deep)"
            
            print(f"{folder:<40} | {indent:<10} | {depth_est}")

if __name__ == "__main__":
    check_depths()
