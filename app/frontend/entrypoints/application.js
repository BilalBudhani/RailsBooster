import { createInertiaApp } from '@inertiajs/vue3'
import { createApp, h } from 'vue'
import './application.css';
import Layout from "@/components/Layouts/Layout.vue"

createInertiaApp({
  // Set default page title
  // see https://inertia-rails.dev/guide/title-and-meta
  //
  title: title => title ? `${title} - RailsBooster` : 'RailsBooster',

  // Disable progress bar
  //
  // see https://inertia-rails.dev/guide/progress-indicators
  progress: {
    color: "oklch(20.8% 0.042 265.755)", // Tailwind slate-800
  },

  resolve: (name) => {
    const pages = import.meta.glob('../pages/**/*.vue', {
      eager: true,
    })

    // To use a default layout, import the Layout component
    // and use the following lines.
    // see https://inertia-rails.dev/guide/pages#default-layouts
    //
    const page = pages[`../pages/${name}.vue`]
    page.default.layout = page.default.layout || Layout
    return page
  },

  setup({ el, App, props, plugin }) {
    createApp({ render: () => h(App, props) })
      .use(plugin)
      .mount(el)
  },
})
