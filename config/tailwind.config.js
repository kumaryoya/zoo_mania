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
      colors: {
        "white": "#FFFFFF",
        "brown": "#412E1D",
        "star": "#c76f23",
        "twitter": "#3597DE",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('daisyui'),
  ],
  daisyui: {
    themes: [
      {
      mytheme: {
        "primary": "#412E1D",
        "info": "#412E1D",
        "secondary": "#3597DE",
        "success": "#3597DE",
        "accent": "#A4CC38",
        "warning": "#A4CC38",
        "neutral": "#69031E",
        "error": "#69031E",
      },
      },
    ],
  },
}
