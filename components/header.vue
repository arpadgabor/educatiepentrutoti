<template>
  <header class="w-full bg-transparent h-20">
    <div class="container mx-auto h-full flex flex-row justify-between py-4">
      <div class="h-full">
        <nuxt-link to="/" exact class="h-full">
          <img class="h-full" src="/logo-main.svg" alt="Logo" />
        </nuxt-link>
      </div>
      <div class="h-full flex items-center">
        <a href="https://facebook.com/educatiepentrutoti.ro" class="mr-4">
          <img src="/icons/fb.svg" alt="Facebook" />
        </a>
        <a href="mailto:alexandru.luca@ligaac.ro">
          <img src="/icons/email.svg" alt="Scrie-ne pe mail" />
        </a>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          name: 'Viziune',
          to: '#viziune'
        }
      ]
    }
  }
}
</script>

<style></style>
