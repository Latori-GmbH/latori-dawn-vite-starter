import shopify from 'vite-plugin-shopify';
import cleanup from '@by-association-only/vite-plugin-shopify-clean';

export default {
  build: { 
    emptyOutDir: false,
    // rollupOptions: {
    //   output: {
    //     entryFileNames: "[name].js",
    //     chunkFileNames: "[name].js",
    //     assetFileNames: "[name][extname]",
    //   },
    // },
  }, 
  plugins: [
    cleanup({
      themeRoot: './',
    }),
    shopify({
      themeRoot: './',
      entrypointsDir: '_src/entries',
      sourceCodeDir: '_src',
      snippetFile: '__BUILD__.liquid'
    })
  ]
}