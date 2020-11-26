<script>
export default {
  props: {
    navItems: {
      type: Array,
      required: true
    }
  }
}
</script>

<template>
  <div class="flex flex-col sm:flex-row items-center p-4 sm:p-0">
    <span
      v-for="item of navItems"
      :key="item.id"
      class="h-full"
    >
      <nuxt-link
        v-if="item.enabled"
        :to="item.path"
        class="menu-item h-full w-full sm:w-auto p-3 hover:underline"
        exact-active-class="menu-item-active"
      >
        {{ item.text }}
      </nuxt-link>
    </span>
    <span class="h-full">
      <a
        href="https://galerie.educatiepentrutoti.ro/?utm_source=ept_menu&utm_medium=website&utm_campaign=galerie"
        class="menu-item h-full w-full sm:w-auto p-3 bg-primary-normal text-white rounded"
        exact-active-class="menu-item-active"
      >
        Galeria Incluziunii
      </a>
    </span>
  </div>
</template>

<style scoped lang="postcss">
.menu-item {
  @apply flex items-center h-full font-bold;
}

.menu-item-active {
  @apply text-primary-normal;
}
</style>
