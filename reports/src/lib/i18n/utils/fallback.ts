import { Language } from '../translations';
import translations from '../translations';
import { languageConfig } from '../config';
import { i18nOptimizer } from '../../../utils/i18nPerformanceOptimizer';

/**
 * Intelligent fallback system for missing translations
 */
export class TranslationFallback {
  private static instance: TranslationFallback;
  private missingKeys: Map<string, Set<Language>> = new Map();
  private fallbackChain: Language[] = [languageConfig.fallbackLanguage, 'en', 'de', 'es', 'ar'];

  static getInstance(): TranslationFallback {
    if (!TranslationFallback.instance) {
      TranslationFallback.instance = new TranslationFallback();
    }
    return TranslationFallback.instance;
  }

  /**
   * Get translation with intelligent fallback and caching
   */
  getTranslation(key: string, language: Language): string {
    // Vérifier le cache d'abord
    const cachedTranslation = i18nOptimizer.getCachedTranslation(key, language);
    if (cachedTranslation) {
      return cachedTranslation;
    }

    // Vérifier si la traduction est marquée comme manquante
    /* if (i18nOptimizer.isCachedAsMissing(key, language)) {
      // Essayer directement les fallbacks pour éviter les logs répétés
      return this.getFallbackTranslation(key, language, false);
    } */

    // Try primary language
    const primaryTranslation = this.getNestedValue(translations[language], key);
    if (primaryTranslation) {
      // Mettre en cache la traduction réussie
      i18nOptimizer.cacheTranslation(key, language, primaryTranslation);
      return primaryTranslation;
    }

    // Marquer comme manquant et essayer les fallbacks
    i18nOptimizer.cacheMissingTranslation(key, language);
    return this.getFallbackTranslation(key, language, true);
  }

  /**
   * Récupère une traduction via le système de fallback
   */
  private getFallbackTranslation(key: string, language: Language, shouldLog: boolean): string {
    if (shouldLog) {
      this.logMissingKey(key, language);
    }

    // Try fallback chain
    for (const fallbackLang of this.fallbackChain) {
      if (fallbackLang === language) continue;
      
      const fallbackTranslation = this.getNestedValue(translations[fallbackLang], key);
      if (fallbackTranslation) {
        // Mettre en cache la traduction de fallback
        i18nOptimizer.cacheTranslation(key, language, fallbackTranslation);
        // No logging in production for performance
        return fallbackTranslation;
      }
    }

    // Last resort: return the key itself
    // Only log in development to avoid performance issues
    return key;
  }

  /**
   * Get nested object value by dot notation key
   */
  private getNestedValue(obj: unknown, key: string): string | null {
    if (!obj || typeof obj !== 'object') return null;

    const root = obj as Record<string, unknown>;

    // Handle direct key access
    if (root[key] !== undefined) {
      return typeof root[key] === 'string' ? (root[key] as string) : null;
    }

    // Handle dot notation (e.g., "search.advanced.title")
    const keys = key.split('.');
    let current: unknown = obj;

    for (const k of keys) {
      if (current && typeof current === 'object' && (current as Record<string, unknown>)[k] !== undefined) {
        current = (current as Record<string, unknown>)[k];
      } else {
        return null;
      }
    }

    return typeof current === 'string' ? (current as string) : null;
  }

  /**
   * Log missing translation key (DÉSACTIVÉ pour performance)
   */
  private logMissingKey(key: string, language: Language): void {
    // Logs complètement désactivés pour éviter les ralentissements
    // Les clés manquantes sont quand même trackées pour les rapports
    const existing = this.missingKeys.get(key);
    if (existing) {
      existing.add(language);
    } else {
      const set = new Set<Language>();
      set.add(language);
      this.missingKeys.set(key, set);
    }
    // Aucun log console - améliore drastiquement les performances
  }

  private loggedKeys?: Set<string>;

  /**
   * Get report of missing translations
   */
  getMissingTranslationsReport(): { key: string; languages: Language[] }[] {
    const report: { key: string; languages: Language[] }[] = [];
    
    for (const [key, languages] of this.missingKeys.entries()) {
      report.push({
        key,
        languages: Array.from(languages)
      });
    }

    return report.sort((a, b) => b.languages.length - a.languages.length);
  }

  /**
   * Clear missing keys log and reset i18n caches
   */
  clearMissingKeys(): void {
    this.missingKeys.clear();
    if (this.loggedKeys) {
      this.loggedKeys.clear();
    }
    // Nettoyer aussi les caches de l'optimiseur
    i18nOptimizer.clearAllCaches();
  }

  /**
   * Set custom fallback chain
   */
  setFallbackChain(chain: Language[]): void {
    this.fallbackChain = chain;
  }

  /**
   * Check if translation exists
   */
  hasTranslation(key: string, language: Language): boolean {
    return this.getNestedValue(translations[language], key) !== null;
  }

  /**
   * Get all available languages that have this key
   */
  getAvailableLanguagesForKey(key: string): Language[] {
    const availableLanguages: Language[] = [];
    
    for (const lang of Object.keys(translations) as Language[]) {
      if (this.hasTranslation(key, lang)) {
        availableLanguages.push(lang);
      }
    }

    return availableLanguages;
  }
}

// Export singleton instance
export const translationFallback = TranslationFallback.getInstance();

// Utility functions
export function getTranslationWithFallback(key: string, language: Language): string {
  return translationFallback.getTranslation(key, language);
}

export function checkTranslationCoverage(keys: string[]): Map<string, Language[]> {
  const coverage = new Map<string, Language[]>();
  
  for (const key of keys) {
    coverage.set(key, translationFallback.getAvailableLanguagesForKey(key));
  }
  
  return coverage;
}