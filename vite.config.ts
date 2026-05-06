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
    chunkSizeWarningLimit: 1000,
    rollupOptions: {
      output: {
        manualChunks(id) {
          const normalizedId = id.replace(/\\/g, '/');
          // React core
          if (normalizedId.includes('node_modules/react/') || normalizedId.includes('node_modules/react-dom/')) {
            return 'react-core';
          }
          // React Router
          if (normalizedId.includes('node_modules/react-router')) {
            return 'react-router';
          }
          // Supabase
          if (normalizedId.includes('node_modules/@supabase/')) {
            return 'supabase';
          }
          // React Query
          if (normalizedId.includes('node_modules/@tanstack/')) {
            return 'react-query';
          }
          // Radix UI primitives (shared across all Shadcn components)
          if (normalizedId.includes('node_modules/@radix-ui/')) {
            return 'radix-ui';
          }
          // Icons (lucide-react is very large)
          if (normalizedId.includes('node_modules/lucide-react/')) {
            return 'icons';
          }
          // Three.js / 3D (lazy loaded only if needed)
          if (normalizedId.includes('node_modules/three/') || normalizedId.includes('node_modules/@react-three/')) {
            return 'three-3d';
          }
          // Maps (Leaflet)
          if (normalizedId.includes('node_modules/leaflet/') || normalizedId.includes('node_modules/react-leaflet/')) {
            return 'maps';
          }
          // File type detection
          if (normalizedId.includes('node_modules/file-type/') || normalizedId.includes('node_modules/strtok3/') || normalizedId.includes('node_modules/token-types/')) {
            return 'file-utils';
          }
          // Charts
          if (normalizedId.includes('node_modules/recharts/') || normalizedId.includes('node_modules/d3-')) {
            return 'charts';
          }
          // Date utilities
          if (normalizedId.includes('node_modules/date-fns')) {
            return 'date-utils';
          }
          // Forms & validation
          if (normalizedId.includes('node_modules/zod/') || normalizedId.includes('node_modules/react-hook-form/') || normalizedId.includes('node_modules/@hookform/')) {
            return 'forms';
          }
          // Emoji picker
          if (normalizedId.includes('node_modules/emoji-picker-react/')) {
            return 'emoji';
          }
          // Animation libraries
          if (normalizedId.includes('node_modules/framer-motion/') || normalizedId.includes('node_modules/embla-carousel')) {
            return 'animations';
          }
          // i18n translation data (our own, changes often)
          if (normalizedId.includes('/src/lib/i18n/translations/') || normalizedId.includes('/src/lib/i18n/locales/')) {
            return 'i18n-data';
          }
          // Wilaya/commune data
          if (normalizedId.includes('/src/data/wilayaData') || normalizedId.includes('/src/data/communeData') || normalizedId.includes('/src/data/mock/')) {
            return 'geo-data';
          }
          // Admin panel (rarely visited, large code)
          if (normalizedId.includes('/src/components/admin/') || normalizedId.includes('/src/pages/admin/')) {
            return 'admin';
          }
          // Create announcement (large form, only visited when posting)
          if (normalizedId.includes('CreateAnnouncementComplete') || normalizedId.includes('CreateAnnouncement')) {
            return 'create-ad';
          }
          // Announcement details (heavy per-page component)
          if (normalizedId.includes('AnnouncementDetailsPage')) {
            return 'ad-details';
          }
          // Shop details (heavy per-page component)
          if (normalizedId.includes('ShopDetails')) {
            return 'shop-details';
          }
          // Vehicle search results (heavy per-page component)
          if (normalizedId.includes('VehicleSearchResultsPage')) {
            return 'vehicle-search';
          }
          // Messaging (separate feature)
          if (normalizedId.includes('/src/components/messaging/')) {
            return 'messaging';
          }
          // Catch-all: all remaining node_modules go to vendor chunk
          if (normalizedId.includes('node_modules/')) {
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
