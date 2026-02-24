import React, { useState, useEffect, ReactNode } from "react";
import { Language } from "./types/comprehensive";
import { translationFallback } from "./utils/fallback";
import { logger } from "@/utils/silentLogger";
import {
  extractLanguageFromPath,
  detectUserPreferredLanguage,
  saveLanguagePreference
} from "./utils/languageDetector";
import { languageConfig } from "./config";
import { I18nContextWithRouter, I18nContextWithRouterType } from "./i18nHooks";
export { useSafeI18nWithRouter, useI18nWithRouter } from "./i18nHooks";

interface I18nProviderWithRouterProps {
  children: ReactNode;
  initialLanguage?: Language;
}

export const I18nProviderWithRouter: React.FC<I18nProviderWithRouterProps> = ({
  children,
  initialLanguage
}) => {
  logger.debug('I18nProviderWithRouter: Starting initialization...');

  // Get initial language with proper error handling
  const getInitialLanguage = (): Language => {
    try {
      // Priorité 1: Langue initiale passée en prop
      if (initialLanguage && languageConfig.supportedLanguages.includes(initialLanguage)) {
        return initialLanguage;
      }
      
      // Priorité 2: Langue détectée depuis l'URL (si disponible)
      if (typeof window !== 'undefined') {
        const urlLanguage = extractLanguageFromPath(window.location.pathname);
        if (urlLanguage) {
          return urlLanguage;
        }
        
        // Priorité 3: Langue sauvegardée
        const savedLanguage = localStorage.getItem(languageConfig.localStorageKey);
        if (savedLanguage && languageConfig.supportedLanguages.includes(savedLanguage as Language)) {
          return savedLanguage as Language;
        }
      }
    } catch (error) {
      logger.warn('Error getting initial language', error);
    }
    
    // Priorité 4: Langue préférée détectée
    return detectUserPreferredLanguage();
  };

  const [language, setLanguageState] = useState<Language>(getInitialLanguage);

    // Determine if current language is RTL
    const isRTL = language === 'ar';

    // Function to change language and save it (avec navigation sans rechargement)
  const setLanguage = (lang: Language) => {
    logger.debug('Setting language to:', lang);
    setLanguageState(lang);
    saveLanguagePreference(lang);
    if (typeof window !== 'undefined') {
      const opt = (window as unknown as { i18nOptimizer?: { forceReloadTranslations(lang: Language): void } }).i18nOptimizer;
      opt?.forceReloadTranslations(lang);
      document.documentElement.dir = lang === 'ar' ? 'rtl' : 'ltr';
      document.documentElement.lang = lang;
    }
  };

    // Function to set language from URL (sans sauvegarder dans localStorage)
  const setLanguageFromURL = (urlLanguage: Language) => {
    logger.debug('Setting language from URL:', urlLanguage);
    setLanguageState(urlLanguage);
    if (typeof window !== 'undefined') {
      const opt = (window as unknown as { i18nOptimizer?: { forceReloadTranslations(lang: Language): void } }).i18nOptimizer;
      opt?.forceReloadTranslations(urlLanguage);
      document.documentElement.dir = urlLanguage === 'ar' ? 'rtl' : 'ltr';
      document.documentElement.lang = urlLanguage;
    }
  };

    // Initialize language on component mount
  useEffect(() => {
    logger.debug('I18nProviderWithRouter initializing...');
    if (typeof window !== 'undefined') {
      const opt = (window as unknown as { i18nOptimizer?: { forceReloadTranslations(lang: Language): void } }).i18nOptimizer;
      opt?.forceReloadTranslations(language);
      document.documentElement.dir = language === 'ar' ? 'rtl' : 'ltr';
      document.documentElement.lang = language;
    }
    logger.debug('I18nProviderWithRouter initialized with language:', language);
  }, [language]);

    // Intelligent translation function with fallback
  const t = (key: string, defaultValue?: string): string => {
    try {
      const translation = translationFallback.getTranslation(key, language);
      return translation === key && defaultValue ? defaultValue : translation;
    } catch (error) {
      logger.error('Translation error', error);
      return key;
    }
  };

  const contextValue: I18nContextWithRouterType = { 
    language, 
    setLanguage, 
    t, 
    isRTL,
    setLanguageFromURL
  };

  return (
    <I18nContextWithRouter.Provider value={contextValue}>
      {children}
    </I18nContextWithRouter.Provider>
  );
};
