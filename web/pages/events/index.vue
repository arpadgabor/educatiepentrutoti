<template>
  <main class="w-full">
    <h1 class="font-bold text-4xl py-8 text-primary-normal leading-tight">Evenimente viitoare</h1>
    <section v-if="$store.state.events.length > 0" class="grid">
      <event-preview v-for="event of $store.state.events" :key="event.slug" :event="event" class="hover-move-up"/>
    </section>
    <section v-else>
      <h4 class="font-bold text-gray-800 text-center py-12">Nu avem evenimente în viitorul apropiat.</h4>
    </section>
  </main>
</template>

<script>
import eventPreview from '~/components/event-preview'

export default {
  components: {
    eventPreview
  },
  data() {
    return {

    }
  }
}
</script>

<style scoped lang="postcss">
.hover-move-up {
  transition: all .2s ease-in-out;
}

.hover-move-up:hover {
  transform: scale(1.01);
}

.grid {
  display: grid;
  grid-template-columns: 1fr;
  column-gap: 1rem;
}

@screen sm {
  .grid {
    grid-template-columns: 1fr 1fr;
  }
}

@screen md {
  .grid {
    grid-template-columns: 1fr 1fr;
  }
}

@screen lg {
  .grid {
    grid-template-columns: 1fr 1fr 1fr;
  }
}
</style>
