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
  async asyncData({ store, error }) {
    let status = 'done'
    let events = store.state.events
    let meta

    if(events.length === 0) {
      try {
        let data = await Promise.all([
          store.dispatch('getEvents'),
          store.dispatch('getMeta', '/events')
        ])

        events = data[0]
        meta = data[1][0]

        console.log(data)

        status = 'done'
      } catch (e) {
        error({ statusCode: e.statusCode, message: e.message })
      }
    }

    if(events.length === 0 && status === 'done') {
      status = 'empty'
    }

    return {
      events: events,
      status: status,
      meta: meta
    }
  },
  head () {
    if(this.meta) {
      return {
        title: this.meta.title,
        meta: [
          { hid: 'description', name: 'description', content: this.meta.description },
          { hid: 'og:image', property: 'og:image', content: `${process.env.API_URL}${this.meta.image.url}` }
        ]
      }
    }
  },
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
