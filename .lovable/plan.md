

# Plan de correction des erreurs de build et recommandations

## Probleme principal
Le projet ne compile pas : **34 erreurs TypeScript** toutes liees a l'utilisation d'APIs Node.js (`process`, `fs`, `path`, `NodeJS.Timeout`) dans du code frontend Vite (navigateur).

## Corrections a appliquer

### 1. Remplacer `NodeJS.Timeout` par `ReturnType<typeof setTimeout>` (10 fichiers)
Dans un projet Vite/navigateur, le namespace `NodeJS` n'existe pas. La correction standard :

**Fichiers concernes :**
- `src/utils/debounce.ts` (ligne 6)
- `src/components/home/AdvancedSearchBar.tsx` (ligne 38)
- `src/components/home/InteractiveOptionsCarousel.tsx` (lignes 29, 180)
- `src/components/layout/DigitalClock.tsx` (ligne 13)
- `src/components/layout/nav/ModernMegaMenuCategories.tsx` (ligne 32)
- `src/components/security/CSRFProtection.tsx` (ligne 65)
- `src/hooks/useCategoryPrefetch.ts` (ligne 67)
- `src/hooks/useInactivityTimer.ts` (lignes 20, 21)
- `src/hooks/useOptimizedTimeout.ts` (lignes 8, 11, 22)

### 2. Remplacer `process.env.NODE_ENV` par `import.meta.env.MODE` (7 fichiers)
Vite utilise `import.meta.env`, pas `process.env`.

**Fichiers concernes :**
- `src/utils/silentLogger.ts` : `process.env.NODE_ENV` → `import.meta.env.MODE`
- `src/utils/secureLogging.ts` : idem (2 occurrences)
- `src/utils/securityValidators.ts` : idem
- `src/components/performance/CategoryPerformanceMonitor.tsx` : idem
- `src/components/performance/CategoryPerformanceMonitorSafe.tsx` : idem (2 occurrences)
- `src/lib/i18n/hooks/useTranslationAdmin.ts` : idem (2 occurrences)
- `src/components/home/InteractiveOptionsCarousel.tsx` : idem

### 3. Supprimer ou isoler `advanced-validator.ts` (fichier Node.js)
Ce fichier utilise `fs`, `path`, `process.exit()` — c'est un script CLI qui ne peut pas etre bundle dans le navigateur. Il doit etre deplace hors de `src/` (par exemple dans `scripts/`) ou supprime.

### 4. Corriger `window.gc` dans `useSecurityMonitor.ts`
Ajouter un cast : `(window as Window & { gc?: () => void }).gc?.()`

### 5. Corriger l'import `logger` dans `authUtils.ts`
Deplacer `import { logger } from '@/utils/silentLogger'` de la ligne 143 vers le haut du fichier (apres la ligne 2).

### 6. Corriger le client Supabase
Le client actuel passe des chaines vides quand les env vars sont absentes, ce qui cause le crash `supabaseUrl is required`. Ajouter des fallbacks hardcodes avec les valeurs publiques du projet.

---

## Ce qui fonctionne (une fois les erreurs corrigees)
- Routage multilingue 6 langues
- Authentification Supabase (signup, login, reset)
- 82+ tables avec RLS
- 48 categories avec traductions
- 24 Edge Functions deployees
- Systeme de recherche, messagerie, notifications, boutiques

## Ce qui ne fonctionne pas encore
- **Le site ne se charge pas** (ecran blanc) a cause des erreurs de build
- Table `payments` absente de la base
- Fonction `exec_sql` (faille de securite critique) encore presente
- Fichier `create_exec_sql_function.js` expose la cle `service_role`

## Nombre de fichiers a modifier : ~17 fichiers

