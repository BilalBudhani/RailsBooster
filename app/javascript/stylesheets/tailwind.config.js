const { colors } = require("tailwindcss/defaultTheme");

module.exports = {
  purge: [
    '../../views/**/*.erb'
  ],
  theme: {
    extend: {
      colors: {
        primary: colors.indigo[500],
        secondary: colors.indigo[600],
        hyperlink: colors.blue[600]
      }
    }
  },
  variants: {},
  plugins: []
};
