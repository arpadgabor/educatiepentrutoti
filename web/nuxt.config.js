require('dotenv').config()

export default {
  head: {
    title: 'Acasă',
    titleTemplate: '%s | Educație pentru Toți',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      {
        hid: 'description',
        name: 'description',
        content:
          'Un proiect dedicat persoanelor cu dizabilități. Accesiblitatea e problema, nu dizabilitatea.'
      },
      { hid: 'og:image', property: 'og:image', content: '/images/og-preview.png' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.png' },
      { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap' }
    ]
  },
  css: [
    '@/assets/css/tailwind.css'
  ],

  plugins: [
    '~/plugins/http.server',
  ],


  modules: [
    'cookie-universal-nuxt',
    '@nuxtjs/proxy',
    '@nuxtjs/dotenv',
    '@nuxt/http',
    '@nuxtjs/pwa',
    '@nuxtjs/markdownit',
    ['vue-scrollto/nuxt', { duration: 400 }]
  ],
  buildModules: [
    '@nuxtjs/tailwindcss',
    ['@nuxtjs/google-analytics', { id: 'UA-42555408-5' }],
  ],

  loading: true,
  http: {
    proxy: true,
    prefix: '/api'
  },
  proxy: {
    '/api/': {
      target: process.env.API_URL,
      pathRewrite: { '^/api/': '' }
    },
    '/uploads/': {
      target: process.env.API_URL,
      pathRewrite: { '^/uploads/': '/uploads/' }
    }
  },

  markdownit: {
    injected: true,
    html: true,
    linkify: false,
    typographer: true
  },
  tailwindcss: {
    purgeCSSInDev: false,
  },


  build: {
    extend(config, ctx) {}
  }
}
