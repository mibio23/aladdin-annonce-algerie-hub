
import { allCategoryMenus } from './data/megaMenu/categoryMenu';

const checkDuplicates = () => {
  const languages = ['fr', 'en', 'ar', 'de', 'es', 'it'];
  
  languages.forEach(lang => {
    const categories = allCategoryMenus[lang] || allCategoryMenus['fr'];
    console.log(`Language: ${lang}, Count: ${categories.length}`);
    
    const slugs = categories.map(c => c.slug);
    const uniqueSlugs = new Set(slugs);
    
    if (slugs.length !== uniqueSlugs.size) {
      console.log(`Duplicates found in ${lang}!`);
      const counts: {[key: string]: number} = {};
      slugs.forEach(s => counts[s] = (counts[s] || 0) + 1);
      Object.entries(counts).forEach(([slug, count]) => {
        if (count > 1) console.log(`${slug}: ${count}`);
      });
    } else {
      console.log(`No duplicates in ${lang}.`);
    }
  });
};

checkDuplicates();
