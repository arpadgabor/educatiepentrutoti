<template>
  <main class="flex flex-col h-full">
    <Header />
    <div class="container mx-auto h-full min-h-screen">
      <nuxt/>
    </div>
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
