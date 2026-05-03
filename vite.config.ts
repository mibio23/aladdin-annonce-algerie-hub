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
        manualChunks: {
          'react-core': ['react', 'react-dom'],
          'react-router': ['react-router-dom'],
          'supabase': ['@supabase/supabase-js'],
          'react-query': ['@tanstack/react-query'],
          'icons': ['lucide-react'],
          'three-3d': ['three'],
          'charts': ['recharts'],
          'date-utils': ['date-fns'],
          'forms': ['zod'],
          'emoji': ['emoji-picker-react'],
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
      '@react-three/fiber',
      '@react-three/drei',
      'three'
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
