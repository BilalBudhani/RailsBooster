const process = require("process");
const purgecss = require("@fullhuman/postcss-purgecss");
const tailwind = require("tailwindcss");

const postcss = {
  plugins: [
    require("postcss-import"),
    require("postcss-flexbugs-fixes"),
    require("postcss-preset-env")({
      autoprefixer: {
        flexbox: "no-2009"
      },
      stage: 3
    }),
    tailwind("./app/javascript/styles/tailwind.config.js")
  ]
};

if (process.env.RAILS_ENV === "production") {
  postcss.plugins.push(
    purgecss({
      content: ["./app/javascript/**/*.vue"]
    })
  );
}

module.exports = postcss;
