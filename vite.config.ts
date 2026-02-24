import react from "@vitejs/plugin-react-swc";
import path from "path";
import { componentTagger } from "lovable-tagger";

// https://vitejs.dev/config/
export default ({ mode }: { mode: string }) => ({
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
    // Optimisation des chunks pour de meilleures performances
    chunkSizeWarningLimit: 800,
    rollupOptions: {},
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
});
