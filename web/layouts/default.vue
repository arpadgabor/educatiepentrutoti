<template>
  <main>
    <Header />
    <nuxt />
    <Footer />
  </main>
</template>

<script>
import Header from '~/components/header'
import Footer from '~/components/footer'

export default {
  components: {
    Header,
    Footer
  }
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
