<script>
import { format ,getHours } from 'date-fns'
import { ro } from 'date-fns/locale'
import oneSignal from '@/components/onesignal'

export default {
  layout: 'default',
  components: {
    oneSignal
  },
  async asyncData({ store, params, error }) {
    let status = 'done'
    let page
    try {
      page = await store.dispatch('getPages', params.slug)
      if(!page)
        return error({ statusCode: 404, message: 'Nu s-a găsit articolul' })

      status = 'done'
    } catch (e) {
      error({ statusCode: e.statusCode, message: e.message })
    }

    return {
      page: page,
      status: status
    }
  },
  data() {
    return {
      status: 'loading'
    }
  },
  head () {
    if(this.page) {
      let image
      if(!this.page.image) {
        this.page.image = {
          url: '/images/og-preview.png'
        }
      }
      return {
        title: this.page.title,
        meta: [
          { hid: 'og:title', name: 'og:title', content: this.page.title },
          { hid: 'og:description', name: 'og:description', content: this.page.description_meta },
          { hid: 'og:image', property: 'og:image', content: this.page.image.url }
        ]
      }
    }
  }
}
</script>

<template>
  <article v-if="status === 'done'" class="w-full md:w-3/4 lg:w-2/3 mx-auto">
    <header class="w-full text-center my-8">
      <h1 class="font-bold text-4xl text-secondary-dark">
        {{ page.title }}
      </h1>
    </header>
    <figure class="w-full my-8" v-if="page.showImage">
      <img
        :src="`${page.image.url}`"
        :alt="`Imagine de fundal eveniment: ${page.title}`"
        class="w-full h-64 object-cover rounded-lg shadow-lg"
      >
    </figure>
    <main class="flex flex-col w-full mx-auto px-3">
      <section v-html="$md.render(page.content)" class="mb-8 html-content"></section>
    </main>
  </article>
</template>

<style lang="postcss">

</style>
