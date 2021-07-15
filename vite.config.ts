import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import { createVuePlugin as Vue2Plugin } from 'vite-plugin-vue2'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    Vue2Plugin()
  ],
})
