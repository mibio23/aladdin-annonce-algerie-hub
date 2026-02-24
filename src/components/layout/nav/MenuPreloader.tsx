import { useEffect } from 'react';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { getCategoryMenu } from "@/data/megaMenu/categoryMenu";
import { logger } from '@/utils/silentLogger';

// Composant invisible qui précharge les menus critiques
const MenuPreloader: React.FC = () => {
  const { language } = useSafeI18nWithRouter();

  useEffect(() => {
    const timeoutId = setTimeout(() => {
      try {
        void getCategoryMenu(language);
      } catch (error) {
        logger.error('Error preloading category menu:', error);
      }
    }, 0);
    return () => clearTimeout(timeoutId);
  }, [language]);

  // Ce composant ne rend rien visuellement
  return null;
};

export default MenuPreloader;
