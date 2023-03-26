const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      backgroundColor: {
        "dark-theme": "#181A1B",
      },
      colors: {
        "danger": {
          500: "#F87171",
          600: "#ef4444",
        },
        "primary": {
          500: "#0369A1",
          600: "#075985",
        },
        "secondary": "#D9D9D9",
        "tertiary": "#181A1B",
        "link-hover-color": "#60A5FA",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/container-queries'),
  ]
}
