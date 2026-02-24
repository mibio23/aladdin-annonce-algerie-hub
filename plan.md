# Plan de Corrections Techniques (Iso-fonctionnel)

Ce plan vise à nettoyer, stabiliser et sécuriser le projet sans modifier l'interface utilisateur ni les fonctionnalités existantes.

## Phase 1 : Nettoyage et Assainissement du Code
*Objectif : Supprimer le code mort et les fichiers temporaires.*

1.  **Suppression des scripts de migration obsolètes** :
    *   Supprimer les fichiers JS/SQL de migration "test", "quick-check", "temp" qui polluent la racine.
    *   Conserver uniquement `migrate-categories-complete.js` comme référence.
2.  **Nettoyage des composants React** :
    *   Dans `HeaderDesktopNav.tsx`, supprimer les commentaires de code mort liés à l'ancien MegaMenu.
    *   Vérifier et supprimer les imports inutilisés dans les fichiers principaux.

## Phase 2 : Stabilisation Technique (Refactoring invisible)
*Objectif : Améliorer la robustesse du code existant.*

1.  **Standardisation des appels API** :
    *   S'assurer que tous les appels à Supabase passent par le client typé (`src/integrations/supabase/client.ts`).
    *   Remplacer les `console.log` par le `silentLogger` pour la production.
2.  **Gestion des erreurs** :
    *   Vérifier que `AppErrorBoundary` englobe bien tous les composants critiques.

## Phase 3 : Sécurisation et Intégrité des Données (Supabase)
*Objectif : Renforcer la sécurité et la structure de la base de données.*

1.  **Structure de la base de données** :
    *   Ajouter la colonne `level` à la table `categories` (via migration SQL).
    *   Ajouter des index sur `categories(slug)` et `categories(parent_id)` pour les performances.
2.  **Revue des Edge Functions** :
    *   Ajouter une validation stricte des types pour les entrées de `create-payment` et `verify-payment`.
3.  **Politiques RLS (Row Level Security)** :
    *   Vérifier et appliquer des politiques RLS strictes sur les tables `profiles` et `payments` pour isoler les données utilisateurs.

## Phase 4 : Optimisation et Monitoring
*Objectif : Améliorer les performances techniques.*

1.  **Optimisation du Lazy Loading** :
    *   Vérifier et corriger les décalages de mise en page (CLS) causés par le chargement différé.
2.  **Configuration du Build** :
    *   Vérifier `vite.config.ts` pour l'optimisation de la production.