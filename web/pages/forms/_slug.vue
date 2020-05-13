<script>
import { format ,getHours } from 'date-fns'
import { ro } from 'date-fns/locale'

export default {
  layout: 'default',
  async asyncData({ store, params, error, $http }) {
    let form

    try {
      [form] = await $http.$get(`forms/?slug=${params.slug}`)
      return { form: form }
    } catch (e) {
      return error({ statusCode: e.statusCode, message: e.message })
    }

    return error({ statusCode: 404, message: 'Nu s-a găsit formularul.' })
  },
  data() {
    return {
      form: null
    }
  },
  head () {
    if(this.article) {
      return {
        title: this.article.headline,
        meta: [
          { hid: 'og:title', name: 'og:title', content: this.article.headline },
          { hid: 'og:description', name: 'og:description', content: this.article.excerpt },
          { hid: 'og:image', property: 'og:image', content: this.article.image.url }
        ]
      }
    }
  }
}
</script>

<template>
  <article v-if="article" class="w-full md:w-2/3 lg:w-2/3 mx-auto pb-32">
    <header class="w-full text-center my-8">
      <h1 class="font-bold text-2xl md:text-4xl leading-tight text-secondary-dark">
        {{ article.headline }}
      </h1>
      <p class="max-w-70ch text-center mx-auto">
        {{ article.excerpt }}
      </p>
    </header>
    <figure class="w-full my-8">
      <img
        :src="`${article.image.url}`"
        :alt="`Imagine de fundal eveniment: ${article.name}`"
        class="w-full object-cover rounded-lg shadow-lg"
        style="height: 360px;"
      >
    </figure>
    <main class="max-w-70ch flex flex-col mx-auto px-3">
      <section v-html="$md.render(article.content)" id="html-content">
      </section>
    </main>
  </article>
</template>

<style lang="postcss">
.max-w-70ch {
  max-width: 70ch;
}
</style>
