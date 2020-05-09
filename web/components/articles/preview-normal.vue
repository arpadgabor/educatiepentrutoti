<script>
export default {
  props: {
    article: {
      type: Object,
      required: true
    }
  }
}
</script>

<template>
  <nuxt-link :to="`/blog/${article.slug}`" class="article w-full flex flex-col space-y-4">
    <div class="image-container w-full overflow-hidden rounded-lg shadow-lg">
      <img :src="article.image.url" :alt="article.headline">
    </div>
    <div class="w-full flex flex-col justify-between">
      <div class="w-full pb-4" v-if="article.category">
        <p>
          <small class="uppercase text-primary-normal p-2 bg-gray-100 font-bold rounded-full">{{ article.category.name }}</small>
        </p>
      </div>
      <div>
        <h1 class="text-2xl leading-tight text-secondary-normal mb-4">{{ article.headline }}</h1>
        <p>
          {{ article.excerpt }}
        </p>
      </div>
      <div class="pt-4">
        <p class="py-3 flex flex-row font-bold text-primary-normal items-center">
          <span>Citește articolul</span>
          <i class="gg-arrow-long-right transition-all duration-500 ease-in-out ml-4"></i>
        </p>
      </div>
    </div>

  </nuxt-link>
</template>

<style lang="postcss" scoped>
.article {
  @apply transition-all duration-500 ease-in-out;
}

.image-container {
  height: 240px;
}

.article img {
  @apply transition-all duration-500 ease-in-out w-full h-full object-cover;
}
.article:hover img {
  transform: scale(1.05);
}
.article:hover .gg-arrow-long-right {
  transform: translateX(1em);
}

.gg-arrow-long-right {
    box-sizing: border-box;
    position: relative;
    display: block;
    transform: scale(var(--ggs,1));
    border-top: 2px solid transparent;
    border-bottom: 2px solid transparent;
    box-shadow: inset 0 0 0 2px;
    width: 24px;
    height: 6px
}
.gg-arrow-long-right::after {
    content: "";
    display: block;
    box-sizing: border-box;
    position: absolute;
    width: 6px;
    height: 6px;
    border-top: 2px solid;
    border-right: 2px solid;
    transform: rotate(45deg);
    right: 0;
    bottom: -2px
}
</style>
