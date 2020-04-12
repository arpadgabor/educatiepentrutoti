<template>
  <main class="w-full" v-if="status === 'done'">
    <h1 class="font-bold text-4xl py-8 text-primary-normal leading-tight">Evenimente viitoare</h1>
    <section v-if="events" class="grid sm:grid-cols-2 md:grid-cols-3 gap-4">
      <event-preview
        v-for="event of events"
        :key="event.slug"
        :event="event"
        class="transition-all duration-300 ease-in-out hover-move-up"
        :class="{ 'grayscale': new Date() > new Date(event.date) }"
      />
    </section>
    <section v-else>
      <h4 class="font-bold text-gray-800 text-center py-12">Nu avem evenimente în viitorul apropiat.</h4>
    </section>
  </main>
  <main v-else-if="status === 'empty'" class="w-full text-center">
    <h1 class="font-bold text-gray-700">
      Nu avem evenimente încă.
    </h1>
  </main>
  <main v-else-if="status === 'error'" class="w-full text-center">
    <div class="alert error">
      <p>
        A apărut o eroare și nu s-au putut încărca evenimentele. Încearcă din nou.
      </p>
    </div>
  </main>
</template>

<script>
import eventPreview from '~/components/event-preview'

export default {
  components: {
    eventPreview
  },
  async asyncData({ store }) {
    let events = store.state.events
    let status = 'done'

    if(events.length === 0) {
      try {
        events = await store.dispatch('getEvents')
        console.log(events)
        status = 'done'
      } catch (e) {
        console.log(e)
        status = 'error'
      }
    }

    if(events.length === 0 && status === 'done') {
      status = 'empty'
    }

    return {
      events: events,
      status: status
    }
  }
}
</script>

<style scoped lang="postcss">
.grayscale {
  filter: grayscale(100%);
  @apply opacity-25;
}

.hover-move-up:hover {
  transform: scale(1.01);
}
</style>
