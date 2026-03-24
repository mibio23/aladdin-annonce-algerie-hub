

# Plan de correction — Page blanche

## Cause
`src/integrations/supabase/client.ts` appelle `createClient('')` quand les variables d'environnement ne sont pas disponibles, ce qui lance une exception fatale **avant** que React ne puisse s'afficher.

## Correction (1 fichier)

### `src/integrations/supabase/client.ts`
- Lire `VITE_SUPABASE_PUBLISHABLE_KEY` **ou** `VITE_SUPABASE_ANON_KEY` en fallback
- Ajouter des valeurs hardcodees du projet comme dernier fallback (ce sont des cles publiques anon, pas sensibles)
- Ne jamais passer de chaine vide a `createClient`

```typescript
const SUPABASE_URL = import.meta.env.VITE_SUPABASE_URL || "https://smsvybphkdxzvgawzoru.supabase.co";
const SUPABASE_KEY = import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY 
  || import.meta.env.VITE_SUPABASE_ANON_KEY 
  || "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...";

export const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_KEY);
```

Cela garantit que le client Supabase s'initialise toujours correctement, meme si les variables d'environnement ne sont pas injectees dans le preview.

