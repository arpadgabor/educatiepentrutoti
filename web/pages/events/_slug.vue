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
    let event = store.state.events.find(ev => ev.slug === params.slug)
    console.log(event)
    let status = 'done'

    if(event === undefined) {
      try {
        event = await store.dispatch('getEvents', params.slug)
        status = 'done'
      } catch (e) {
        console.log(e)
        status = 'error'
      }
    }

    return {
      event: event,
      status: status
    }
  },
  data() {
    return {
      alreadySignedUp: false,
      status: 'loading'
    }
  },
  head () {
    return {
      title: this.event.name,
      meta: [
        { hid: 'description', name: 'description', content: this.event.description_meta },
        { hid: 'og:image', property: 'og:image', content: `${process.env.API_URL}${this.event.image.url}` }
      ]
    }
  },
  mounted() {
    console.log(this.event)
    this.checkSignUp()
  },
  computed: {
    isInFuture() {
      return new Date(this.event.date) > new Date()
    }
  },
  methods: {
    niceifyDate(date) {
      return format(new Date(date), 'd MMMM, HH:mm', { locale: ro })
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
  <article v-if="status === 'done'" class="w-full md:w-2/3 lg:w-2/3 mx-auto">
    <header class="w-full text-center my-8">
      <div class="alert error text-left mb-4" v-if="!isInFuture">
        <p>Evenimentul s-a încheiat.</p>
      </div>
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
            <small class="opacity-75" v-if="event.location">
              <a :href="event.location_url">{{ event.location }}</a>
            </small>
            <p class="text-secondary-normal font-bold">
              {{ niceifyDate(event.date) }}
            </p>
          </div>
          <div v-if="isInFuture">
            <a class="font-bold text-primary-normal" href="#form" v-scroll-to="'#form'" v-if="!alreadySignedUp">Înscrie-te</a>
            <span class="font-bold text-primary-normal" v-else>Ești înscris!</span>
          </div>
        </div>
      </section>
      <section v-html="$md.render(event.description)" id="html-content"  class="mb-8"></section>
      <section class="w-full mb-8" v-if="isInFuture">
        <event-form :eventId="event.id" :eventSlug="event.slug" />
      </section>
    </main>
  </article>
  <article v-else-if="status === 'loading'" class="w-full md:w-2/3 lg:w-2/3 mx-auto">
    <p>Se încarcă</p>
  </article>
  <article v-else-if="status === 'error'" class="w-full md:w-2/3 lg:w-2/3 mx-auto">
    <div class="alert error">
      <p>
        A apărut o eroare la încărcare articolului.
      </p>
    </div>
  </article>
</template>

<style>
</style>
