<script>
import eventPreview from '~/components/event-preview'

export default {
  components: {
    eventPreview
  },
  async asyncData({ store, error }) {
    let status = 'done'
    let events
    let meta

    try {
      let data = await Promise.all([
        store.dispatch('getEvents'),
        store.dispatch('getMeta', '/events')
      ])

      events = data[0]
      meta = data[1][0]

      status = 'done'
    } catch (e) {
      error({ statusCode: e.statusCode, message: e.message })
    }

    let futureEvents = []
    let pastEvents = []

    for(let event of events) {
      if(new Date(event.date) > new Date()) {
        futureEvents.push(event)
      }
      else {
        pastEvents.push(event)
      }
    }

    return {
      pastEvents: pastEvents,
      futureEvents: futureEvents,
      status: status,
      meta: meta
    }
  },
  head () {
    if(this.meta) {
      return {
        title: this.meta.title,
        meta: [
          { hid: 'og:title', name: 'og:title', content: this.meta.title },
          { hid: 'og:description', name: 'og:description', content: this.meta.description },
          { hid: 'og:image', property: 'og:image', content: `${this.meta.image.url}` }
        ]
      }
    }
  },
}
</script>

<template>
  <main class="w-full" v-if="status === 'done'">
    <h1 class="font-bold text-4xl my-8 text-primary-normal leading-tight">Evenimente viitoare</h1>
    <section v-if="futureEvents.length > 0" class="grid sm:grid-cols-2 md:grid-cols-3 gap-4">
      <event-preview
        v-for="event of futureEvents"
        :key="event.slug"
        :event="event"
        class="transition-all duration-300 ease-in-out hover-move-up"
      />
    </section>
    <section v-else>
      <h4 class="font-bold text-gray-700">Nu avem evenimente în viitorul apropiat.</h4>
    </section>

    <h1 class="font-bold text-2xl mt-16 mb-8 text-secondary-normal leading-tight">Evenimente trecute</h1>
    <section v-if="pastEvents.length > 0" class="grid sm:grid-cols-2 md:grid-cols-3 gap-4">
      <event-preview
        v-for="event of pastEvents"
        :key="event.slug"
        :event="event"
        class="transition-all duration-300 ease-in-out hover-move-up"
        :class="{ 'grayscale': new Date() > new Date(event.date) }"
      />
    </section>
  </main>
  <main v-else-if="status === 'error'" class="w-full text-center">
    <div class="alert error">
      <p>
        A apărut o eroare și nu s-au putut încărca evenimentele. Încearcă din nou.
      </p>
    </div>
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
