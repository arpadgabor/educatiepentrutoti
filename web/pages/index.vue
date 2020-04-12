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
  transition: 'page',
  async asyncData({ store, error }) {
    try {
      let meta = await store.dispatch('getMeta', '/home')

      return {
        meta: meta[0]
      }
    } catch(e) {
      console.log(e)
      error({ statusCode: e.statusCode, message: e.message })
    }
  },
  head () {
    return {
      title: this.meta.title,
      meta: [
        { hid: 'description', name: 'description', content: this.meta.description },
        { hid: 'og:image', property: 'og:image', content: `${process.env.API_URL}${this.meta.image}` }
      ]
    }
  },
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
