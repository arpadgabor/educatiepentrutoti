<template>
  <div class="w-full h-full relative">
    <braille class="relative" />
    <hero />
    <follow-us />
    <interact />
  </div>
</template>

<script>
import braille from '~/components/braille'
import hero from '~/components/sections/hero'
import followUs from '~/components/sections/follow-us'
import interact from '~/components/sections/interact'

export default {
  components: {
    braille,
    hero,
    followUs,
    interact
  },
  transition: 'page'
}
</script>

<style lang="postcss" scoped>
.floating {
  opacity: 0.1;
  width: 70%;
  position: absolute;
  top: 4em;
  right: 0;
}
</style>
