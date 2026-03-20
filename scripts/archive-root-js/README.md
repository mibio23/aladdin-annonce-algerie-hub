# Archive des scripts racine

Ce dossier contient les scripts JavaScript historiques déplacés depuis la racine du projet pour alléger le dépôt.

## Contexte

- 266 scripts utilitaires et de migration ont été déplacés depuis la racine.
- Les scripts opérationnels actifs ont été déplacés dans `scripts/ops`.

## Scripts conservés à la racine

- `vite.config.js`
- `eslint.config.js`

## Scripts opérationnels déplacés dans `scripts/ops`

- `supabase_migration.js`
- `verify_migration.js`
- `test-supabase-migration.js`
- `generate-sitemap.js`
- `audit-form-supabase.js`
- `verify-complete.js`

## Note

Si un ancien script archivé doit être réutilisé, le lancer depuis ce dossier ou le remettre à la racine selon le besoin.
