import os
import re

svg_files = [
    'assets/img/faq.svg',
    'assets/img/resource1.svg',
    'assets/img/resource2.svg',
    'assets/img/resource3.svg'
]

# Color map
mappings = {
    # Dark outlines and shadows
    r'(?i)#263238': '#2d3f63', # primary-strong
    r'(?i)#37474f': '#2d3f63',
    r'(?i)#455a64': '#2d3f63',
    
    # Mid-tones
    r'(?i)#707070': '#3a5180', # primary-color
    r'(?i)#a36957': '#3a5180',
    r'(?i)#b78876': '#3a5180',
    
    # Colorful accents (green, orange, purple, pinks) -> Teal
    r'(?i)#92E3A9': '#04bab8', # color-teal
    r'(?i)#FF725E': '#04bab8',
    r'(?i)#BA68C8': '#04bab8',
    r'(?i)#f28f8f': '#04bab8',
    r'(?i)#ffa8a7': '#04bab8',
}

for file in svg_files:
    if not os.path.exists(file):
        print(f"File not found: {file}")
        continue
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Replace colors
    for old_color, new_color in mappings.items():
        content = re.sub(old_color, new_color, content)
        
    with open(file, 'w', encoding='utf-8') as f:
        f.write(content)
    print(f"Updated {file}")
