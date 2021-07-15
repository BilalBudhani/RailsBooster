module.exports = {
  purge: [
    './app/javascript/**/*.vue',
    './app/views/**/*.erb',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
    fontFamily: {
      'sans': ['Montserrat', 'sans-serif']
    }
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms')
  ],
}
