<template>
  <nav class="w-full bg-transparent h-20">
    <div class="container mx-auto h-full flex flex-row justify-between py-4">
      <div class="h-full flex flex-row">
        <nuxt-link to="/" class="h-full">
          <img class="h-full" src="/logo-main.svg" alt="Logo" />
        </nuxt-link>
      </div>
      <div class="h-full flex items-center">
        <nuxt-link to="/@/facebook" class="mr-4">
          <img src="/icons/fb.svg" alt="Facebook" />
        </nuxt-link>
        <a href="mailto:alexandru.luca@ligaac.ro">
          <img src="/icons/email.svg" alt="Scrie-ne pe mail" />
        </a>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
}
</script>

<style></style>
