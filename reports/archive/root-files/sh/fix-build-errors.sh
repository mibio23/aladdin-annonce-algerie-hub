#!/bin/bash

echo "🔧 Fixing critical TypeScript build errors..."

# 1. Fix animauxAccessoiresAnnouncements - convert price strings to numbers
echo "📝 Fixing price types in animaux announcements..."
sed -i 's/price: "\([0-9]*\) DA"/price: \1/g' src/data/registry/animauxAccessoiresAnnouncements.ts

# 2. Fix duplicate properties in i18n files
echo "📝 Removing duplicate property issues..."

# Arabic language file duplicates
sed -i '503,504d' src/lib/i18n/languages/arabic.ts 2>/dev/null || true
sed -i '539d' src/lib/i18n/languages/arabic.ts 2>/dev/null || true

# Arabic categories duplicates
sed -i '257d' src/lib/i18n/languages/arabic/categories.ts 2>/dev/null || true
sed -i '264d' src/lib/i18n/languages/arabic/categories.ts 2>/dev/null || true
sed -i '298d' src/lib/i18n/languages/arabic/categories.ts 2>/dev/null || true
sed -i '320d' src/lib/i18n/languages/arabic/categories.ts 2>/dev/null || true

# English language file duplicates
sed -i '404d' src/lib/i18n/languages/english.ts 2>/dev/null || true

# English categories duplicates
sed -i '45d' src/lib/i18n/languages/english/categories.ts 2>/dev/null || true
sed -i '188d' src/lib/i18n/languages/english/categories.ts 2>/dev/null || true
sed -i '446d' src/lib/i18n/languages/english/categories.ts 2>/dev/null || true

# French language file duplicates - remove lines 470-507
sed -i '470,507d' src/lib/i18n/languages/french.ts 2>/dev/null || true

echo "✅ Quick fixes applied"
echo ""
echo "🚀 Running build to check remaining errors..."
npm run build
