require('dotenv').config()

export default {
  mode: 'universal',
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
      { rel: 'preload', as: 'font', href: '/fonts/inter.css' }
    ]
  },
  css: [
    'aos/dist/aos.css',
    '@/assets/css/aos.css',
    '@/assets/css/tailwind.css'
  ],


  plugins: [
    '~/plugins/http.server',
    { src: '@/plugins/aos', ssr: false },
  ],


  oneSignal: {
    init: {
      appId: process.env.ONESIGNAL_ID,
      allowLocalhostAsSecureOrigin: true,
      welcomeNotification: {
        disable: true
      }
    }
  },


  modules: [
    '@nuxtjs/proxy',
    '@nuxtjs/dotenv',
    '@nuxt/http',
    '@nuxtjs/onesignal',
    '@nuxtjs/pwa',
    '@nuxtjs/markdownit',
    ['vue-scrollto/nuxt', { duration: 400 }]
  ],
  buildModules: [
    '@nuxtjs/tailwindcss',
    ['@nuxtjs/google-analytics', { id: 'UA-42555408-5' }],
  ],


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
    }
  },

  markdownit: {
    injected: true
  },
  tailwindcss: {
    purgeCSSInDev: false,
  },


  build: {
    extend(config, ctx) {}
  }
}
