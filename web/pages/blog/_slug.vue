<script>
import { format ,getHours } from 'date-fns'
import { ro } from 'date-fns/locale'
import generateMeta from '@/helpers/meta'

export default {
  layout: 'default',
  transition: 'page',
  async asyncData({ store, params, error, $http}) {
    let article

    // Check if article is already in store, i.e. user comes from /blog
    if(store.state.articles.all) {
      article = store.state.articles.all.find(artcl => {
        return artcl.slug === params.slug
      })
    }
    if(article) return { article: article }

    // If not, get article from backend
    try {
      [article] = await $http.$get(`blogs/?slug=${params.slug}`)

      if(!article)
        return error({ statusCode: 404, message: 'Nu s-a găsit articolul' })
    } catch (e) {
      return error({ statusCode: e.statusCode, message: e.message })
    }

    return { article: article }
  },
  data() {
    return {
      article: null
    }
  },
  head () {
    return generateMeta(this.article.headline, this.article.excerpt, this.article.image.url)
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
      <section v-html="$md.render(article.content)" class="html-content">
      </section>
    </main>
  </article>
</template>

<style lang="postcss">
.max-w-70ch {
  max-width: 70ch;
}
</style>
