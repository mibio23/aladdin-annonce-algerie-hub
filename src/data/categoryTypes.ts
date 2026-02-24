
import React from "react";

// Interface pour les catégories dans la barre de recherche avancée
export interface SearchBarCategory {
  id: string;
  name: string;
  icon?: React.ReactNode; // Icône optionnelle
  value?: string; // Added value property to fix the error
}

// Interface pour les wilayas
export interface Wilaya {
  code: number;
  name: string;
  name_ar: string;
  name_fr: string; // Ajouté pour correspondre à l'utilisation
}

// Sous-sous-catégories (par exemple, marques de voitures)
export interface SubSubCategory {
  id: string;
  name: string;
  slug: string;
  icon?: React.ReactNode;
  translations?: {
    fr?: string;
    ar?: string;
    en?: string;
    de?: string;
    es?: string;
  };
  attributes?: Record<string, string[]>; // Attributs spécifiques pour les filtres (ex: niveau, état)
  subcategories?: SubSubCategory[]; // Added this to allow nested subcategories
}

// Sous-catégories
export interface SubCategory {
  id: string;
  name: string;
  slug: string;
  icon?: React.ReactNode;
  translations?: {
    fr?: string;
    ar?: string;
    en?: string;
    de?: string;
    es?: string;
  };
  attributes?: Record<string, string[]>; // Attributs spécifiques pour les filtres
  subcategories?: SubSubCategory[]; // Peut avoir des sous-sous-catégories
  description?: string; // Description de la sous-catégorie
}

// Catégories principales du menu
export interface MenuCategory {
  id: string;
  name: string;
  slug: string;
  icon?: React.ReactNode;
  translations?: {
    fr?: string;
    ar?: string;
    en?: string;
    de?: string;
    es?: string;
  };
  attributes?: Record<string, string[]>; // Attributs spécifiques pour les filtres
  subcategories?: SubCategory[]; // Peut avoir des sous-catégories (optionnel)
  description?: string; // Pour le contenu du menu de navigation
  href?: string; // Pour le lien de navigation
}

// Pour les catégories d'exploration avec image
export interface ExplorerCategory extends MenuCategory {
  imageUrl: string; // Changed from optional to required
  tags?: string[];
}
