export default {
  mode: 'universal',
  env: {
    apiUrl: process.env.API_URL || 'http://localhost:1337'
  },
  head: {
    title: 'Educație pentru Toți',
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
  css: ['aos/dist/aos.css', '@/assets/css/aos.css'],
  plugins: [
    { src: '@/plugins/aos', ssr: false },
    { src: '@/plugins/axios', ssr: true }
  ],
  modules: [
    '@nuxtjs/axios', '@nuxtjs/dotenv', '@nuxtjs/markdownit',
    ['vue-scrollto/nuxt', { duration: 400 }]
  ],
  markdownit: {
    injected: true
  },
  buildModules: [
    '@nuxtjs/tailwindcss',
    ['@nuxtjs/google-analytics', { id: 'UA-42555408-5' }],
  ],
  axios: {
    proxy: true
  },
  proxy: {
    '/uploads': 'http://localhost:1337'
  },
  build: {
    extend(config, ctx) {}
  }
}
