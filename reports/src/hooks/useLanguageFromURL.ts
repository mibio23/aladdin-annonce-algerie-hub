import { useEffect, useCallback } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { Language } from '@/lib/i18n/translations';
import { 
  extractLanguageFromPath, 
  addLanguageToPath, 
  detectUserPreferredLanguage,
  isPathForCurrentLanguage
} from '@/lib/i18n/utils/languageDetector';
import { languageConfig } from '@/lib/i18n/config';

/**
 * Hook pour gérer la langue depuis l'URL
 */
export const useLanguageFromURL = () => {
  const location = useLocation();
  const navigate = useNavigate();
  const { language, setLanguage, setLanguageFromURL } = useSafeI18nWithRouter();

  /**
   * Change la langue et redirige vers la même page dans la nouvelle langue
   */
  const changeLanguage = useCallback((newLanguage: Language) => {
    if (newLanguage === language) return;
    setLanguage(newLanguage);
    const newPath = addLanguageToPath(location.pathname, newLanguage);
    navigate(newPath + location.search + location.hash, { replace: true });
  }, [language, setLanguage, location.pathname, location.search, location.hash, navigate]);

  /**
   * Vérifie et corrige la langue dans l'URL
   */
  const validateAndCorrectURL = useCallback(() => {
    const urlLanguage = extractLanguageFromPath(location.pathname);
    if (urlLanguage && urlLanguage !== language) {
      setLanguageFromURL(urlLanguage);
    }
  }, [location.pathname, language, setLanguageFromURL]);

  /**
   * Génère une URL localisée
   */
  const getLocalizedPath = useCallback((path: string, targetLanguage?: Language) => {
    const lang = targetLanguage || language;
    return addLanguageToPath(path, lang);
  }, [language]);

  /**
   * Vérifie si le chemin actuel est pour la langue spécifiée
   */
  const isCurrentPathForLanguage = useCallback((targetLanguage: Language) => {
    return isPathForCurrentLanguage(location.pathname, targetLanguage);
  }, [location.pathname]);

  // Effet pour valider l'URL au chargement - avec dépendances stabilisées
  // Synchroniser la langue du contexte avec la langue de l'URL
  useEffect(() => {
    const urlLanguage = extractLanguageFromPath(location.pathname);
    if (urlLanguage && urlLanguage !== language) {
      setLanguageFromURL(urlLanguage);
    }
  }, [location.pathname, language, setLanguageFromURL]);

  // Effet pour synchroniser la langue avec l'URL - simplifié
  // (supprimé: doublon)

  return {
    changeLanguage,
    getLocalizedPath,
    isCurrentPathForLanguage,
    currentURLLanguage: extractLanguageFromPath(location.pathname),
    validateAndCorrectURL
  };
};

/**
 * Hook pour détecter la langue préférée au premier chargement
 */
export const usePreferredLanguageDetection = () => {
  const { setLanguage } = useSafeI18nWithRouter();

  useEffect(() => {
    // Détecter la langue préférée seulement si aucune langue n'est définie
    const savedLanguage = typeof window !== 'undefined'
      ? localStorage.getItem(languageConfig.localStorageKey)
      : null;
    
    if (!savedLanguage) {
      const preferredLanguage = detectUserPreferredLanguage();
      setLanguage(preferredLanguage);
    }
  }, [setLanguage]);
};
