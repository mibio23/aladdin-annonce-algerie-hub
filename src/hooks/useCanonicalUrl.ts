import { useEffect } from 'react';
import { useLocation } from 'react-router-dom';

/**
 * Hook pour gérer les URLs canoniques
 * Met à jour automatiquement la balise link rel="canonical" selon l'URL actuelle
 */
export function useCanonicalUrl(customUrl?: string) {
  const location = useLocation();
  
  useEffect(() => {
    const baseUrl = (import.meta.env.VITE_SITE_URL || window.location.origin).replace(/\/$/, '');
    const fullUrl = customUrl || `${baseUrl}${location.pathname}`;
    
    // Trouver ou créer la balise canonical
    let canonicalLink = document.querySelector('link[rel="canonical"]') as HTMLLinkElement;
    
    if (!canonicalLink) {
      canonicalLink = document.createElement('link');
      canonicalLink.rel = 'canonical';
      document.head.appendChild(canonicalLink);
    }
    
    // Mettre à jour l'URL
    canonicalLink.href = fullUrl;
    
    // Nettoyage
    return () => {
      if (canonicalLink && !customUrl) {
        // Ne pas supprimer si c'est une URL personnalisée
        canonicalLink.remove();
      }
    };
  }, [location.pathname, customUrl]);
}

/**
 * Hook pour gérer plusieurs balises meta SEO
 * Gère les meta tags dynamiques selon la page
 */
export function useSEOMeta({
  title,
  description,
  keywords = [],
  author = 'Aladdin Annonces',
  viewport = 'width=device-width, initial-scale=1'
}: {
  title?: string;
  description?: string;
  keywords?: string[];
  author?: string;
  viewport?: string;
}) {
  useEffect(() => {
    // Mettre à jour le titre
    if (title) {
      document.title = title;
    }
    
    // Fonction helper pour mettre à jour ou créer un meta tag
    const updateMetaTag = (name: string, content: string, isProperty = false) => {
      const selector = isProperty 
        ? `meta[property="${name}"]` 
        : `meta[name="${name}"]`;
      
      let metaTag = document.querySelector(selector) as HTMLMetaElement;
      
      if (!metaTag) {
        metaTag = document.createElement('meta');
        if (isProperty) {
          metaTag.setAttribute('property', name);
        } else {
          metaTag.name = name;
        }
        document.head.appendChild(metaTag);
      }
      
      metaTag.content = content;
    };
    
    // Mettre à jour les meta tags
    if (description) {
      updateMetaTag('description', description);
      updateMetaTag('og:description', description, true);
      updateMetaTag('twitter:description', description, true);
    }
    
    if (keywords.length > 0) {
      updateMetaTag('keywords', keywords.join(', '));
    }
    
    if (author) {
      updateMetaTag('author', author);
    }
    
    if (viewport) {
      updateMetaTag('viewport', viewport);
    }
    
    // Nettoyage
    return () => {
      // Réinitialiser aux valeurs par défaut si nécessaire
      if (title) {
        document.title = 'Aladdin Annonces Algérie';
      }
    };
  }, [title, description, keywords, author, viewport]);
}

export default useCanonicalUrl;