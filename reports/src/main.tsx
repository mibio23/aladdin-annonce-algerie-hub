import { createRoot } from 'react-dom/client'
import AppWithLanguageRouter from './AppWithLanguageRouter.tsx'
import './index.css'
import { isSupabaseConfigured } from './integrations/supabase/client'

const container = document.getElementById("root");
if (!container) {
  throw new Error("Root element not found");
}

const root = createRoot(container);

root.render(
  isSupabaseConfigured ? (
    <AppWithLanguageRouter />
  ) : (
    <div style={{ fontFamily: 'system-ui, Arial', padding: 24, maxWidth: 720, margin: '0 auto' }}>
      <h1 style={{ fontSize: 20, fontWeight: 700, margin: '16px 0' }}>Configuration Supabase manquante</h1>
      <p style={{ lineHeight: 1.5, margin: '12px 0' }}>
        Les variables d’environnement Supabase ne sont pas définies. Ajoute au minimum&nbsp;:
      </p>
      <pre style={{ background: '#0b1020', color: '#e6e6e6', padding: 12, borderRadius: 8, overflowX: 'auto' }}>
        VITE_SUPABASE_URL=...
        {'\n'}VITE_SUPABASE_PUBLISHABLE_KEY=...
      </pre>
      <p style={{ lineHeight: 1.5, margin: '12px 0' }}>
        Ensuite relance le build/déploiement Lovable.
      </p>
    </div>
  )
);
