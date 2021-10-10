const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  mode: "jit",
  prefix: "tw-",
  purge: ["index.html", "./src/**/*.{elm,js,ts}"],
  darkMode: true,
  theme: {
    extend: {
      dropShadow: {
        hotPink: "#eb64b9 0px 1px 30px",
      },
    },
    fontFamily: {
      // https://www.youtube.com/watch?v=sOnBG2wUm1s
      mono: ["DM Mono", ...defaultTheme.fontFamily.mono],
      sans: ["Poppins", ...defaultTheme.fontFamily.sans],
      serif: ["Lora", ...defaultTheme.fontFamily.serif],
    },
  },
  variants: {
    extend: {},
  },
  plugins: [require("@tailwindcss/forms"), require("@tailwindcss/typography")],
};
