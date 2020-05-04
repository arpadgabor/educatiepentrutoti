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
    <nuxt-link
      v-for="item of navItems"
      :key="item.id"
      :to="item.path"
      class="menu-item w-full sm:w-auto p-3 hover:underline"
      exact-active-class="menu-item-active"
    >
      {{ item.text }}
    </nuxt-link>
  </div>
</template>

<style>
.menu-item {
  @apply flex items-center h-full font-bold;
}

.menu-item-active {
  @apply text-primary-normal;
}
</style>
