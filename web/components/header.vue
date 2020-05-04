<script>
import navigation from './navigation'

export default {
  components: {
    navigation
  }
}
</script>

<template>
  <nav class="w-full bg-transparent h-20">
    <div class="container mx-auto h-full flex flex-row justify-between py-4">
      <div class="h-full flex flex-row">
        <nuxt-link to="/" class="h-full">
          <img class="h-full" src="/logo-main.svg" alt="Logo" />
        </nuxt-link>
      </div>
      <navigation />
    </div>
  </nav>
</template>

<style lang="postcss" scoped>
</style>
