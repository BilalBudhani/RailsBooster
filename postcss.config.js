const tailwind = require("tailwindcss");

module.exports = {
  plugins: [
    require("postcss-import"),
    require("postcss-flexbugs-fixes"),
    require("postcss-preset-env")({
      autoprefixer: {
        flexbox: "no-2009"
      },
      stage: 3
    }),
    tailwind("./app/javascript/stylesheets/tailwind.config.js")
  ]
};
