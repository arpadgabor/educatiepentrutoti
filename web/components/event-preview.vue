<template>
  <nuxt-link :to="`/events/${event.slug}`" :title="`Link către eveniment: ${event.name}`">
    <article class="w-full flex flex-col">
      <img
        :src="`${event.image.url}`"
        :alt="`Imagine de fundal eveniment: ${event.name}`"
        class="w-full h-56 object-cover rounded-lg shadow-lg"
      >
      <div class="p-3">
        <small class="text-primary-normal">{{ niceifyDate(event.date) }} la ora {{ getHour(event.date) }}</small>
        <h4 class="text-xl font-bold">{{ event.name }}</h4>
        <p class="text-gray-700 mt-2">{{ event.description_meta }}</p>
      </div>
    </article>
  </nuxt-link>
</template>

<script>
import { getHours, formatDistance } from 'date-fns'
import { ro } from 'date-fns/locale'

export default {
  props: ['event'],
  methods: {
    niceifyDate(date) {
      return formatDistance(new Date(date), new Date(), { locale: ro, addSuffix: true })
    },
    getHour(date) {
      return getHours(new Date(date))
    }
  }
}
</script>

<style scoped lang="postcss">

</style>
