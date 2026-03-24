# Améliorations et Maintenance du Projet Aladdin

Ce document résume les actions de nettoyage et de sécurisation effectuées le 2026-03-13.

## 1. Sécurité
- Les clés API Supabase ont été retirées du code source (`src/integrations/supabase/client.ts`).
- Elles sont désormais gérées via le fichier `.env` (non versionné).
- **Action requise** : Assurez-vous que vos variables d'environnement `VITE_SUPABASE_URL` et `VITE_SUPABASE_PUBLISHABLE_KEY` sont bien définies dans votre environnement de déploiement (Vercel, Netlify, etc.).

## 2. Organisation des Fichiers
La racine du projet a été nettoyée pour améliorer la lisibilité.
- **Scripts de Maintenance** : Tous les scripts utilitaires (`fix-*.js`, `migrate-*.js`, `check-*.js`) ont été déplacés dans `scripts/maintenance/`.
- **Archives SQL** : Les anciens fichiers de migration SQL qui traînaient à la racine sont maintenant dans `_archive/root_sql_backup/`.
- **Documentation** : Les fichiers Markdown obsolètes ou de documentation technique éparse sont dans `_archive/docs_backup/`.

## 3. Configuration Catégories
- **Refactoring Complet** : Le service hybride a été remplacé par une architecture "Pure Supabase".
- Le code mort (`localCategoriesService`, `extendedCategoriesService`) a été archivé dans `_archive/code_backup/`.
- Le composant de navigation a été mis à jour pour utiliser le nouveau flux de données unifié.
- `VITE_USE_LOCAL_CATEGORIES` est désormais ignoré (le code a été supprimé).

## Comment lancer les scripts de maintenance ?
Au lieu de faire `node fix-quelquechose.js`, faites maintenant :
```bash
node scripts/maintenance/fix-quelquechose.js
```
