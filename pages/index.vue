<template>
  <div class="w-full">
    <braille />
    <hero />
    <follow-us />
  </div>
</template>

<script>
import braille from '~/components/braille'
import hero from '~/components/sections/hero'
import followUs from '~/components/sections/follow-us'

export default {
  components: {
    braille,
    hero,
    followUs
  }
}
</script>

<style></style>
