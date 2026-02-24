/**
 * Utilitaires d'optimisation des performances pour Aladdin
 */

// Lazy loading des images avec intersection observer
export const lazyLoadImage = (imgElement: HTMLImageElement, src: string): void => {
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          imgElement.src = src;
          imgElement.classList.add('loaded');
          observer.unobserve(imgElement);
        }
      });
    },
    {
      rootMargin: '50px',
    }
  );
  observer.observe(imgElement);
};

// Optimisation du debounce pour les recherches
export const debounce = <T extends (...args: unknown[]) => void>(
  func: T,
  wait: number
): ((...args: Parameters<T>) => void) => {
  let timeout: ReturnType<typeof setTimeout>;
  return (...args: Parameters<T>) => {
    clearTimeout(timeout);
    timeout = setTimeout(() => func(...args), wait);
  };
};

// Throttle pour les scroll events
export const throttle = <T extends (...args: unknown[]) => void>(
  func: T,
  limit: number
): ((...args: Parameters<T>) => void) => {
  let inThrottle: boolean;
  return (...args: Parameters<T>) => {
    if (!inThrottle) {
      func(...args);
      inThrottle = true;
      setTimeout(() => (inThrottle = false), limit);
    }
  };
};

// Monitoring des performances
export const measurePerformance = (name: string, fn: () => void): void => {
  if (typeof window !== 'undefined' && 'performance' in window) {
    const start = performance.now();
    fn();
    const end = performance.now();
    logger.info(`${name} took ${end - start} milliseconds`);
  } else {
    fn();
  }
};

// Optimisation de la mémoire
export const cleanupMemory = (): void => {
  if (typeof window !== 'undefined' && 'gc' in window) {
    const win = window as unknown as { gc?: () => void };
    win.gc?.();
  }
};

// Préchargement des images critiques
export const preloadCriticalImages = (imageUrls: string[]): void => {
  imageUrls.forEach((url) => {
    const link = document.createElement('link');
    link.rel = 'preload';
    link.as = 'image';
    link.href = url;
    document.head.appendChild(link);
  });
};

// Optimisation du chargement des polices
export const preloadFonts = (fontUrls: string[]): void => {
  fontUrls.forEach((url) => {
    const link = document.createElement('link');
    link.rel = 'preload';
    link.as = 'font';
    link.type = 'font/woff2';
    link.crossOrigin = 'anonymous';
    link.href = url;
    document.head.appendChild(link);
  });
};
import { logger } from '@/utils/silentLogger';
