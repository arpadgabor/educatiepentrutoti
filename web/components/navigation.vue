<script>
import navItems from './navItems'

export default {
  components: {
    navItems
  },
  data() {
    return {
      showMenu: false
    }
  },
  methods: {
    toggleMenu() {
      this.showMenu = !this.showMenu
    },
    closeMenu() {
      this.showMenu = false
    }
  }
}
</script>

<template>
  <div class="h-full" v-if="$store.state.navItems">
    <nav-items :navItems="$store.state.navItems" class="hidden sm:flex"></nav-items>
    <div class="h-full flex flex-row sm:hidden items-center">
      <button class="p-3 bg-transparent" @click="toggleMenu">
        <i class="gg-menu text-gray-700" v-if="!showMenu"></i>
        <i class="gg-close text-gray-700" v-else></i>
      </button>
    </div>
    <transition name="coolOpen">
      <div class="floating-menu-container mt-20" v-if="showMenu">
        <div class="w-full bg-white shadow-lg rounded-lg flex flex-col">
          <nav-items :navItems="$store.state.navItems"></nav-items>
        </div>
      </div>
    </transition>
  </div>
</template>

<style lang="postcss" scoped>
.floating-menu-container {
  @apply absolute top-0 w-full z-50 left-0 px-2;
}

.floating-menu {
  @apply flex flex-col bg-white shadow-lg rounded-lg w-full;
}


.gg-menu {
    transform: scale(var(--ggs,1))
}
.gg-menu,
.gg-menu::after,
.gg-menu::before {
    box-sizing: border-box;
    position: relative;
    display: block;
    width: 20px;
    height: 2px;
    border-radius: 3px;
    background: currentColor
}
.gg-menu::after,
.gg-menu::before {
    content: "";
    position: absolute;
    top: -6px
}
.gg-menu::after {
    top: 6px
}

.gg-close {
    box-sizing: border-box;
    position: relative;
    display: block;
    transform: scale(var(--ggs,1));
    width: 22px;
    height: 22px;
    border: 2px solid transparent;
    border-radius: 40px
}
.gg-close::after,
.gg-close::before {
    content: "";
    display: block;
    box-sizing: border-box;
    position: absolute;
    width: 16px;
    height: 2px;
    background: currentColor;
    transform: rotate(45deg);
    border-radius: 5px;
    top: 8px;
    left: 1px
}
.gg-close::after {
    transform: rotate(-45deg)
}

.coolOpen-enter-active,
.coolOpen-leave-active {
  transition: all 0.3s ease-in-out;
}
.coolOpen-enter,
.coolOpen-leave-to {
  perspective: 1000;
  transform: scale(0.95) rotateX(20deg) rotateY(3deg);
  @apply opacity-0;
}
</style>
