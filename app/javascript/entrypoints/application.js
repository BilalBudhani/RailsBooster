// To see this message, follow the instructions for your Ruby framework.
//
// When using a plain API, perhaps it's better to generate an HTML entrypoint
// and link to the scripts and stylesheets, and let Vite transform it.
// console.log('Vite ⚡️ Ruby')

// Example: Import a stylesheet in <sourceCodeDir>/index.css

import Vue from "vue";
import { createInertiaApp } from '@inertiajs/inertia-vue'
import { InertiaProgress } from '@inertiajs/progress'
import axios from "axios";
import "~/stylesheets/application.css"

axios.defaults.xsrfHeaderName = 'X-CSRF-Token';

InertiaProgress.init({
  // The delay after which the progress bar will
  // appear during navigation, in milliseconds.
  delay: 250,

  // The color of the progress bar.
  color: '#29d',

  // Whether to include the default NProgress styles.
  includeCSS: true,

  // Whether the NProgress spinner will be shown.
  showSpinner: false,
})

const pages = import.meta.glob("../Pages/**/*.vue")

const resolveComponent = (name) => {
  const importPage = pages[`../Pages/${name}.vue`]
  if (!importPage) throw new Error(`Unknown page ${name}. Is it located under Pages with a .vue extension?`)
  return importPage().then(module => module.default)
}

createInertiaApp({
  resolve: resolveComponent,
  setup({ el, app, props }) {
    new Vue({
      render: h => h(app, props),
    }).$mount(el)
  },
})