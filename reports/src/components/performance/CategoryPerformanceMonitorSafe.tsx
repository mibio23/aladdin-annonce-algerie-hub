import React, { useEffect, useState, useRef } from 'react';
import { useCategories } from '@/services/supabaseCategoriesService';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface PerformanceMetrics {
  loadTime: number;
  cacheHit: boolean;
  dataSize: number;
  timestamp: number;
}

const CategoryPerformanceMonitorSafe: React.FC = () => {
  const { language } = useSafeI18nWithRouter();
  const { data: categories, isLoading } = useCategories(language);
  const [metrics, setMetrics] = useState<PerformanceMetrics | null>(null);
  const [showMetrics, setShowMetrics] = useState(false);
  
  // Refs pour éviter les boucles
  const hasRunRef = useRef<boolean>(false);

  // Effet ultra-simple qui ne s'exécute qu'une seule fois
  useEffect(() => {
    // Protection absolue contre les boucles infinies
    if (hasRunRef.current || isLoading || !categories) {
      return;
    }

    hasRunRef.current = true;

    try {
      const endTime = performance.now();
      const startTime = performance.getEntriesByName('categories-load-start').pop()?.startTime || endTime;
      const loadTime = endTime - startTime;

      // Vérifier si les données viennent du cache
      const cacheKey = `aladdin_cache_categories_${language}`;
      const cacheHit = !!localStorage.getItem(cacheKey);

      // Calcul simple et sécurisé
      const newMetrics: PerformanceMetrics = {
        loadTime: Math.round(loadTime),
        cacheHit,
        dataSize: categories.length * 150, // Estimation simple
        timestamp: Date.now(),
      };

      console.log('📊 Catégories Performance Metrics:', newMetrics);
      setMetrics(newMetrics);

    } catch (error) {
      console.error('Erreur dans CategoryPerformanceMonitor:', error);
      // Définir des métriques par défaut en cas d'erreur
      setMetrics({
        loadTime: 0,
        cacheHit: false,
        dataSize: 0,
        timestamp: Date.now(),
      });
    }

  }, [categories, isLoading, language]); // Dépendances minimales

  // Fonction pour vider le cache et tester les performances
  const clearCacheAndTest = async () => {
    try {
      localStorage.clear();
      window.location.reload();
    } catch (error) {
      console.error('Erreur lors du vidage du cache:', error);
    }
  };

  // Fonction pour tester le prefetching
  const testPrefetching = async () => {
    try {
      const startTime = performance.now();
      const { fetchCategoriesFromSupabase } = await import('@/services/supabaseCategoriesService');
      await fetchCategoriesFromSupabase(language);
      const endTime = performance.now();
      console.log(`🚀 Prefetching test completed in ${endTime - startTime}ms`);
    } catch (error) {
      console.error('Erreur lors du test de prefetching:', error);
    }
  };

  if (import.meta.env.MODE !== 'development' && !showMetrics) {
    return (
      <button
        onClick={() => setShowMetrics(true)}
        className="fixed bottom-4 right-4 bg-gray-800 text-white p-2 rounded-full text-xs hover:bg-gray-700 z-50"
        title="Afficher les métriques de performance"
      >
        📊
      </button>
    );
  }

  if (!metrics) {
    return (
      <div className="fixed bottom-4 right-4 bg-gray-800 text-white p-4 rounded-lg text-xs z-50 max-w-xs">
        <div className="flex items-center space-x-2">
          <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white"></div>
          <span>Analyse des performances...</span>
        </div>
      </div>
    );
  }

  return (
    <div className="fixed bottom-4 right-4 bg-gray-800 text-white p-4 rounded-lg text-xs z-50 max-w-xs">
      <div className="flex justify-between items-center mb-3">
        <h3 className="font-bold text-sm">📊 Performance Catégories</h3>
        {import.meta.env.MODE === 'development' ? (
          <button
            onClick={() => setShowMetrics(false)}
            className="text-gray-400 hover:text-white"
          >
            ✕
          </button>
        ) : null}
      </div>
      
      <div className="space-y-2">
        <div className="flex justify-between">
          <span>⏱️ Temps de chargement:</span>
          <span className={metrics.loadTime < 100 ? 'text-green-400' : metrics.loadTime < 500 ? 'text-yellow-400' : 'text-red-400'}>
            {metrics.loadTime.toFixed(2)}ms
          </span>
        </div>
        
        <div className="flex justify-between">
          <span>💾 Cache hit:</span>
          <span className={metrics.cacheHit ? 'text-green-400' : 'text-red-400'}>
            {metrics.cacheHit ? 'OUI' : 'NON'}
          </span>
        </div>
        
        <div className="flex justify-between">
          <span>📦 Taille des données:</span>
          <span>{(metrics.dataSize / 1024).toFixed(2)}KB</span>
        </div>
        
        <div className="flex justify-between">
          <span>🌐 Langue:</span>
          <span>{language}</span>
        </div>
        
        <div className="flex justify-between">
          <span>📋 Catégories:</span>
          <span>{categories?.length || 0}</span>
        </div>
      </div>
      
      <div className="mt-3 pt-3 border-t border-gray-700 space-y-2">
        <button
          onClick={clearCacheAndTest}
          className="w-full bg-red-600 hover:bg-red-700 text-white px-2 py-1 rounded text-xs"
        >
          🗑️ Vider cache + recharger
        </button>
        
        <button
          onClick={testPrefetching}
          className="w-full bg-blue-600 hover:bg-blue-700 text-white px-2 py-1 rounded text-xs"
        >
          🚀 Tester prefetching
        </button>
      </div>
      
      <div className="mt-2 text-xs text-gray-400">
        Dernière mise à jour: {new Date(metrics.timestamp).toLocaleTimeString()}
      </div>
    </div>
  );
};

export default CategoryPerformanceMonitorSafe;