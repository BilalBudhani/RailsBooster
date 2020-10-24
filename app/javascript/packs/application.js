import Vue from "vue/dist/vue.esm";
import { Inertia } from "@inertiajs/inertia"
import { App, plugin } from '@inertiajs/inertia-vue'
import axios from "axios";
import "nprogress/nprogress.css";
import "../stylesheets/application.scss";

Vue.use(plugin)

// Workaround for Rails CSRF
Inertia.on('start', () => {
  const csrfToken = document.querySelector("meta[name=csrf-token]").content
  axios.defaults.headers.common['X-CSRF-Token'] = csrfToken
});

const el = document.getElementById('app')

// Shared Components
const files = require.context('../components/common', true, /\.vue$/i)
files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

new Vue({
  render: h => h(App, {
    props: {
      initialPage: JSON.parse(el.dataset.page),
      resolveComponent: name => require(`../pages/${name}`).default,
    },
  }),
}).$mount(el)