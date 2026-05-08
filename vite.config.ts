import { defineConfig } from "vite";
import react from "@vitejs/plugin-react-swc";
import path from "path";
import { componentTagger } from "lovable-tagger";

// https://vitejs.dev/config/
export default defineConfig(({ mode }) => ({
  server: {
    host: "::",
    port: 8080,
  },
  plugins: [
    react({
      // Désactiver les vérifications TypeScript en production
      tsDecorators: true,
    }),
    mode === 'development' && componentTagger(),
  ].filter(Boolean),
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
      // Explicitly alias React to prevent multiple instances
      "react": path.resolve(__dirname, "./node_modules/react"),
      "react-dom": path.resolve(__dirname, "./node_modules/react-dom"),
    },
    // Force single version of React to avoid conflicts
    dedupe: ['react', 'react-dom'],
  },
  build: {
    minify: 'esbuild',
    target: 'es2019',
    sourcemap: mode === 'development',
    chunkSizeWarningLimit: 5000,
    rollupOptions: {
      output: {
        manualChunks(id) {
          const n = id.replace(/\\/g, '/');

          // ── React core (toujours nécessaire) ──────────────────────────────
          if (n.includes('node_modules/react/') || n.includes('node_modules/react-dom/') || n.includes('node_modules/scheduler/')) {
            return 'react-core';
          }
          // ── Routing ───────────────────────────────────────────────────────
          if (n.includes('node_modules/react-router')) {
            return 'react-router';
          }
          // ── Supabase client ───────────────────────────────────────────────
          if (n.includes('node_modules/@supabase/')) {
            return 'supabase';
          }
          // ── React Query (data fetching) ────────────────────────────────────
          if (n.includes('node_modules/@tanstack/')) {
            return 'react-query';
          }
          // ── Icônes Lucide (grande lib, rarement mise à jour) ──────────────
          if (n.includes('node_modules/lucide-react/')) {
            return 'icons';
          }
          // ── Radix UI primitives (Shadcn) ──────────────────────────────────
          if (n.includes('node_modules/@radix-ui/')) {
            return 'radix-ui';
          }
          // ── Animations ────────────────────────────────────────────────────
          if (n.includes('node_modules/framer-motion/')) {
            return 'framer-motion';
          }
          if (n.includes('node_modules/embla-carousel')) {
            return 'carousel';
          }
          // ── Formulaires & validation ──────────────────────────────────────
          if (n.includes('node_modules/react-hook-form/') || n.includes('node_modules/@hookform/') || n.includes('node_modules/zod/')) {
            return 'forms';
          }
          // ── Dates ────────────────────────────────────────────────────────
          if (n.includes('node_modules/date-fns')) {
            return 'date-utils';
          }
          // ── Charts / graphiques (admin uniquement) ────────────────────────
          if (n.includes('node_modules/recharts/') || n.includes('node_modules/d3-') || n.includes('node_modules/victory-')) {
            return 'charts';
          }
          // ── Maps / géolocalisation (Leaflet) ─────────────────────────────
          if (n.includes('node_modules/leaflet/') || n.includes('node_modules/react-leaflet/') || n.includes('node_modules/@react-leaflet/')) {
            return 'maps';
          }
          // ── QR Code (rarement utilisé) ────────────────────────────────────
          if (n.includes('node_modules/qrcode') || n.includes('node_modules/react-qr')) {
            return 'qrcode';
          }
          // ── PDF / export (admin uniquement) ──────────────────────────────
          if (n.includes('node_modules/jspdf') || n.includes('node_modules/html2canvas') || n.includes('node_modules/xlsx')) {
            return 'pdf-export';
          }
          // ── Emoji picker ──────────────────────────────────────────────────
          if (n.includes('node_modules/emoji-picker-react/')) {
            return 'emoji';
          }
          // ── File type detection ───────────────────────────────────────────
          if (n.includes('node_modules/file-type/') || n.includes('node_modules/strtok3/') || n.includes('node_modules/token-types/')) {
            return 'file-utils';
          }
          // ── Données géographiques (wilayas / communes) ────────────────────
          if (n.includes('/src/data/wilayaData') || n.includes('/src/data/communeData') || n.includes('/src/data/mock/')) {
            return 'geo-data';
          }
          // ── Traductions i18n par langue (évite un méga-chunk i18n) ────────
          if (n.includes('/src/lib/i18n/languages/french/')) {
            return 'i18n-fr';
          }
          if (n.includes('/src/lib/i18n/languages/english/')) {
            return 'i18n-en';
          }
          if (n.includes('/src/lib/i18n/languages/arabic/')) {
            return 'i18n-ar';
          }
          if (n.includes('/src/lib/i18n/languages/spanish/')) {
            return 'i18n-es';
          }
          if (n.includes('/src/lib/i18n/languages/italian/')) {
            return 'i18n-it';
          }
          if (n.includes('/src/lib/i18n/languages/german/')) {
            return 'i18n-de';
          }
          if (n.includes('/src/lib/i18n/categories/')) {
            return 'i18n-categories';
          }
          if (n.includes('/src/lib/i18n/')) {
            return 'i18n-core';
          }
          // ── Données catégories lourdes ────────────────────────────────────
          if (n.includes('/src/data/categories/megaMenuStructures/')) {
            return 'mega-menu-data';
          }
          if (n.includes('/src/data/categories/') || n.includes('/src/data/megaMenu/')) {
            return 'categories-data';
          }
          // ── Panel Admin (rarement visité) ─────────────────────────────────
          if (n.includes('/src/components/admin/') || n.includes('/src/pages/admin/')) {
            return 'admin';
          }
          // ── Messagerie ────────────────────────────────────────────────────
          if (n.includes('/src/components/messaging/') || n.includes('Messages')) {
            return 'messaging';
          }
          // ── Pages lourdes (lazy-loaded, chargées à la demande) ────────────
          if (n.includes('CreateAnnouncementComplete') || n.includes('CreateAnnouncement')) {
            return 'create-ad';
          }
          if (n.includes('AnnouncementDetailsPage')) {
            return 'ad-details';
          }
          if (n.includes('ShopDetails')) {
            return 'shop-details';
          }
          if (n.includes('VehicleSearchResults')) {
            return 'vehicle-search';
          }
          if (n.includes('JobOfferDetailsPage')) {
            return 'job-details';
          }
          // ── Composants home page lourds ───────────────────────────────────
          if (n.includes('/src/components/home/PopularSearchedAnnouncementsSection') || n.includes('/src/components/home/PremiumAnnouncementsSection')) {
            return 'home-heavy';
          }
          // ── Tout le reste de node_modules → vendor générique ─────────────
          if (n.includes('node_modules/')) {
            return 'vendor';
          }
        },
      },
    },
  },
  optimizeDeps: {
    include: [
      'react',
      'react-dom',
      'react-router-dom',
      '@supabase/supabase-js',
      'lucide-react',
    ],
    // Force la résolution d'une seule version
    force: true,
  },
  // Configuration PWA
  define: {
    'process.env': {},
    // S'assurer que React est correctement défini globalement
    'global': 'globalThis',
  },
}));
