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
        content: process.env.npm_package_description || ''
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
  buildModules: ['@nuxtjs/eslint-module', '@nuxtjs/tailwindcss'],
  modules: ['@nuxtjs/axios', '@nuxtjs/dotenv'],
  axios: {
    baseURL: 'https://api.educatiepentrutoti.ro'
  },
  build: {
    extend(config, ctx) {}
  }
}
