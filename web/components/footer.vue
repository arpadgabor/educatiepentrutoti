<template>
  <footer class="w-full bg-gray-200">
    <div class="container mx-auto flex flex-col md:flex-row justify-between items-center py-8">
      <div class="flex">
        <nuxt-link to="/@/esc">
          <img
            class="h-8 sm:h-12"
            src="/icons/esc-ro.svg"
            alt="Proiect Cofinanțat de Corpul European de Solidaritate al Uniunii Europene"
          />
        </nuxt-link>
      </div>
      <div class="flex">
        <one-signal></one-signal>
      </div>
      <div class="flex">
        <nuxt-link to="/@/facebook" class="mr-4">
          <img src="/icons/fb.svg" alt="Facebook" />
        </nuxt-link>
        <a href="mailto:alexandru.luca@ligaac.ro">
          <img src="/icons/email.svg" alt="Scrie-ne pe mail" />
        </a>
      </div>
    </div>
  </footer>
</template>

<script>
import oneSignal from '@/components/onesignal'
export default {
  components: {
    oneSignal
  }
}
</script>

<style></style>
