<script>
import previewNormal from '~/components/articles/preview-normal'
import previewLatest from '~/components/articles/preview-latest'

export default {
  components: {
    previewLatest,
    previewNormal
  },
  layout: 'default',
  middleware: ['meta-loader'],
  async asyncData({ store, error, $http }) {
    let articles
    try {
      articles = await $http.$get('blogs?_sort=created_at:desc')
      store.commit('setArticles', articles)
    } catch (e) {
      error({ statusCode: e.statusCode, message: e.message })
    }
  },
  head () {
    return this.$store.state.pageMeta
  },
}
</script>

<template>
  <main class="w-full pt-16" v-if="$store.state.articles.latest">
    <preview-latest :article="$store.state.articles.latest" />
    <section class="grid sm:grid-cols-2 lg:grid-cols-3 gap-8 my-8">
      <preview-normal v-for="article of $store.state.articles.rest" :key="article.ip" :article="article" />
    </section>
    <section class="py-16">
      <h4 class="text-center font-light text-gray-700">Ai ajuns la sfărșitul listei.</h4>
    </section>
  </main>
</template>

<style scoped lang="postcss">
.grayscale {
  filter: grayscale(100%);
}

.hover-move-up:hover {
  transform: scale(1.01);
}
</style>
