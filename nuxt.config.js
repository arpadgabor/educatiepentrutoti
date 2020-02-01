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
      { property: 'og:image', content: '/images/og-preview.png' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.png' },
      { rel: 'preload', as: 'font', href: '/fonts/inter.css' }
    ]
  },
  loading: { color: '#fff' },
  css: ['aos/dist/aos.css', '@/assets/css/aos.css'],
  plugins: [{ src: '@/plugins/aos', ssr: false }],
  buildModules: [
    '@nuxtjs/eslint-module',
    '@nuxtjs/tailwindcss',
    ['@nuxtjs/google-analytics', { id: 'UA-42555408-5' }]
  ],
  modules: ['@nuxtjs/axios', '@nuxtjs/dotenv'],
  axios: {
    baseURL: 'https://api.educatiepentrutoti.ro'
  },
  build: {
    extend(config, ctx) {}
  }
}
