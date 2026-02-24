"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var plugin_react_swc_1 = require("@vitejs/plugin-react-swc");
var path_1 = require("path");
var lovable_tagger_1 = require("lovable-tagger");
// https://vitejs.dev/config/
exports.default = (function (_a) {
    var mode = _a.mode;
    return ({
        server: {
            host: "::",
            port: 8080,
        },
        plugins: [
            (0, plugin_react_swc_1.default)({
                // Désactiver les vérifications TypeScript en production
                tsDecorators: true,
            }),
            mode === 'development' && (0, lovable_tagger_1.componentTagger)(),
        ].filter(Boolean),
        resolve: {
            alias: {
                "@": path_1.resolve(__dirname, "./src"),
                // Explicitly alias React to prevent multiple instances
                "react": path_1.resolve(__dirname, "./node_modules/react"),
                "react-dom": path_1.resolve(__dirname, "./node_modules/react-dom"),
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
});
