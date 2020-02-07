<template>
  <div class="w-full">
    <braille />
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
  }
}
</script>

<style></style>
