<template>
  <main class="flex flex-col h-full">
    <Navigation />
    <div class="container mx-auto h-full min-h-screen">
      <nuxt/>
    </div>
    <CookieBar />
    <Footer />
  </main>
</template>

<script>
import Navigation from '~/components/header'
import Footer from '~/components/footer'
import CookieBar from '~/components/cookies'

export default {
  components: {
    Navigation,
    Footer,
    CookieBar
  },
  transition: 'page'
}
</script>

<style lang="postcss">
body {
  font-family: 'Inter' !important;
  @apply text-gray-800;
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}
</style>
