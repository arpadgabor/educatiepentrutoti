<script>
import { format ,getHours } from 'date-fns'
import { ro } from 'date-fns/locale'

import eventForm from '~/components/event-form'

export default {
  layout: 'default',
  components: {
    eventForm
  },
  async asyncData({ store, params }) {
    const findEventInStore = store.state.events.find(ev => ev.slug === params.slug)
    if(!findEventInStore) {
      const event = store.dispatch('getEvents', route.params.slug)
      return {
        event: event
      }
    } else {
      return {
        event: findEventInStore
      }
    }
  },
  data() {
    return {
      event: null,
      alreadySignedUp: false
    }
  },
  head () {
    return {
      title: this.event.name,
      meta: [
        { hid: 'description', name: 'description', content: this.event.description_meta },
        { hid: 'og:image', property: 'og:image', content: this.event.image.url }
      ]
    }
  },
  mounted() {
    this.checkSignUp()
  },
  methods: {
    niceifyDate(date) {
      return format(new Date(date), 'd MMMM, HH:mm', { locale: ro })
    },
    getEventFromStore() {
      this.event = this.$store.state.events.find(ev => ev.slug === this.$route.params.slug)
      return this.event
    },
    checkSignUp() {
      const value = window.localStorage.getItem(this.event.slug)
      if(value) {
        this.alreadySignedUp = true
      }
    }
  }
}
</script>

<template>
  <article v-if="event" class="w-full md:w-2/3 lg:w-2/3 mx-auto">
    <header class="w-full text-center my-8">
      <h1 class="font-bold text-4xl text-secondary-dark">
        {{ event.name }}
      </h1>
    </header>
    <figure class="w-full my-8">
      <img
        :src="`${event.image.url}`"
        :alt="`Imagine de fundal eveniment: ${event.name}`"
        class="w-full h-64 object-cover rounded-lg shadow-lg"
      >
    </figure>
    <main class="flex flex-col w-full md:w-2/3 mx-auto px-3">
      <section name="Data și ora eveniment" class="mb-8">
        <div class="bg-gray-100 rounded w-full p-4 flex flex-row justify-between items-center">
          <div>
            <small class="opacity-75">
              <a :href="event.location_url">{{ event.location }}</a>
            </small>
            <p class="text-secondary-normal font-bold">
              {{ niceifyDate(event.date) }}
            </p>
          </div>
          <div>
            <a class="font-bold text-primary-normal" href="#form" v-scroll-to="'#form'" v-if="!alreadySignedUp">Înscrie-te</a>
            <span class="font-bold text-primary-normal" v-else>Ești înscris!</span>
          </div>
        </div>
      </section>
      <section v-html="$md.render(event.description)" id="html-content"  class="mb-8"></section>
      <section class="w-full mb-8">
        <event-form :eventId="event.id" :eventSlug="event.slug" />
      </section>
    </main>
  </article>
</template>

<style>
</style>
