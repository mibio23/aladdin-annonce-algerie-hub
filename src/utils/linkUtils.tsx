import { Link as RouterLink } from "react-router-dom";
import { useLanguageFromURL } from '@/hooks/useLanguageFromURL';
import { Language } from '@/lib/i18n/translations';
import { useAuth } from '@/contexts/useAuth';

import React from 'react';

/**
 * Composant Link localisé
 */
interface LocalizedLinkProps extends Omit<React.ComponentProps<typeof RouterLink>, 'to'> {
  to: string;
  language?: Language;
  children: React.ReactNode;
}

export const LocalizedLink: React.FC<LocalizedLinkProps> = ({ 
  to, 
  language: targetLanguage, 
  children, 
  ...props 
}) => {
  const { getLocalizedPath } = useLanguageFromURL();
  
  const localizedPath = getLocalizedPath(to, targetLanguage);
  
  return (
    <RouterLink to={localizedPath} {...props}>
      {children}
    </RouterLink>
  );
};

/**
 * Bouton avec navigation localisée
 */
import { Button } from '@/components/ui/button';

interface LocalizedButtonLinkProps {
  to: string;
  language?: Language;
  variant?: 'default' | 'destructive' | 'outline' | 'secondary' | 'ghost' | 'link';
  size?: 'default' | 'sm' | 'lg' | 'icon';
  children: React.ReactNode;
  className?: string;
}

export const LocalizedButtonLink: React.FC<LocalizedButtonLinkProps> = ({
  to,
  language: targetLanguage,
  variant = 'default',
  size = 'default',
  children,
  className = '',
  ...props
}) => {
  const { getLocalizedPath } = useLanguageFromURL();
  const { user } = useAuth();
  
  const localizedPath = getLocalizedPath(to, targetLanguage);
  
  // Vérifier si ce lien nécessite une authentification
  const requiresAuth = [
    '/deposer-offre-metier',
    '/deposer-annonce',
    '/creer-boutique',
    '/mes-annonces',
    '/mes-favoris',
    '/mes-boutiques',
    '/mes-offres-metiers',
    '/messages',
    '/reservations',
    '/parametres'
  ].some(path => localizedPath.includes(path));
  
  const handleClick = (_e: React.MouseEvent) => {
    // Si l'utilisateur n'est pas connecté et que le lien nécessite une authentification
    if (!user && requiresAuth) {
      // Stocker l'URL de redirection pour la redirection après connexion
      sessionStorage.setItem('authRedirectUrl', localizedPath);
    }
  };
  
  return (
    <Button
      asChild
      variant={variant}
      size={size}
      className={className}
      onClick={handleClick}
      {...props}
    >
      <RouterLink to={localizedPath}>
        {children}
      </RouterLink>
    </Button>
  );
};
