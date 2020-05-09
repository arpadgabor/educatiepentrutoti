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
  <div class="flex flex-col sm:flex-row items-center">
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
