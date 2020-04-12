require('dotenv').config()

export default {
  mode: 'universal',
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
  css: [
    'aos/dist/aos.css',
    '@/assets/css/aos.css',
    '@/assets/css/tailwind.css'
  ],
  plugins: [
    '~/plugins/axios',
    { src: '@/plugins/axios', ssr: true },
    { src: '@/plugins/aos', ssr: false },
  ],
  modules: [
    '@nuxtjs/proxy',
    '@nuxtjs/dotenv',
    '@nuxtjs/axios',
    '@nuxtjs/markdownit',
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
    '/uploads/': process.env.API_URL,
  },
  build: {
    extend(config, ctx) {}
  }
}
