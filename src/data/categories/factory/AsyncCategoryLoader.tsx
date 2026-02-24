import { MenuCategory } from '../../categoryTypes';

// Gestionnaire de cache pour les modules chargés
class CategoryCache {
  private cache = new Map<string, Record<string, MenuCategory>>();
  
  get(key: string): Record<string, MenuCategory> | undefined {
    return this.cache.get(key);
  }
  
  set(key: string, value: Record<string, MenuCategory>): void {
    this.cache.set(key, value);
  }
  
  clear(): void {
    this.cache.clear();
  }
}

const categoryCache = new CategoryCache();

export class AsyncCategoryLoader {
  private static instance: AsyncCategoryLoader;
  private loadingPromises = new Map<string, Promise<MenuCategory[]>>();

  static getInstance(): AsyncCategoryLoader {
    if (!AsyncCategoryLoader.instance) {
      AsyncCategoryLoader.instance = new AsyncCategoryLoader();
    }
    return AsyncCategoryLoader.instance;
  }

  async loadCategoriesForLanguage(language: string): Promise<MenuCategory[]> {
    const cacheKey = `categories_${language}`;
    
    // Vérifier le cache d'abord
    const cached = categoryCache.get(cacheKey);
    if (cached) {
      return Object.values(cached);
    }

    // Éviter les chargements multiples simultanés
    const existingPromise = this.loadingPromises.get(cacheKey);
    if (existingPromise) {
      return existingPromise;
    }

    const loadPromise = this.performAsyncLoad(language, cacheKey);
    this.loadingPromises.set(cacheKey, loadPromise);

    try {
      return await loadPromise;
    } finally {
      this.loadingPromises.delete(cacheKey);
    }
  }

  private async performAsyncLoad(language: string, cacheKey: string): Promise<MenuCategory[]> {
    // Neutralisé: ne charge plus les catégories depuis megaMenuStructures
    // Retourne un tableau vide et met en cache un module vide
    const emptyCategories: MenuCategory[] = [];
    const emptyModule: Record<string, MenuCategory> = {};
    categoryCache.set(cacheKey, emptyModule);
    return emptyCategories;
  }

  // Préchargement pour les langues critiques
  async preloadCriticalLanguages(): Promise<void> {
    const criticalLanguages = ['english', 'french'];
    
    await Promise.allSettled(
      criticalLanguages.map(lang => this.loadCategoriesForLanguage(lang))
    );
  }

  // Nettoyage du cache si nécessaire
  clearCache(): void {
    categoryCache.clear();
    this.loadingPromises.clear();
  }
}