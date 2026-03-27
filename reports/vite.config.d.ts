declare const _default: ({ mode }: {
    mode: string;
}) => {
    server: {
        host: string;
        port: number;
    };
    plugins: (false | import("vite").Plugin<any> | import("vite").Plugin<any>[])[];
    resolve: {
        alias: {
            "@": string;
            react: string;
            "react-dom": string;
        };
        dedupe: string[];
    };
    build: {
        minify: string;
        target: string;
        sourcemap: boolean;
        chunkSizeWarningLimit: number;
        rollupOptions: Record<string, unknown>;
    };
    optimizeDeps: {
        include: string[];
        force: boolean;
    };
    define: {
        'process.env': Record<string, unknown>;
        global: string;
    };
};
export default _default;
