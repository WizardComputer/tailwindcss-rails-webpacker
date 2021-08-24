module.exports = {
  // Purge unused TailwindCSS styles
  mode: 'jit',
  purge: {
    enabled: ["production"].includes(process.env.NODE_ENV),
    content: [
      './**/*.html.erb',
      './**/*.scss',
      './app/helpers/**/*.rb',
      './app/javascript/**/*.js',
    ],
  },
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}