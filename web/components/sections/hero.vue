<template>
  <!-- eslint-disable prettier/prettier -->
  <section class="container mx-auto flex flex-col justify-start pt-16">
    <div>
      <nuxt-link to="/events" class="mb-4 flex" v-if="nrEvents > 0">
        <span class="py-2 px-3 bg-primary-normal text-white text-xs rounded-full">
          Avem {{ nrEvents }} {{ nrEvents > 1 ? 'evenimente' : 'eveniment'}} în viitorul apropiat!
        </span>
      </nuxt-link>
      <h1 class="motto">
        <span class="text-secondary-normal" data-aos="bounce-up" data-aos-duration="1000" data-aos-delay="0">
          accesibilitatea
        </span>
        <span class="text-primary-normal" data-aos="bounce-up" data-aos-duration="1000" data-aos-delay="200">
          e problema,
        </span>
        <span class="text-secondary-normal" data-aos="bounce-up" data-aos-duration="1000" data-aos-delay="400">
          nu dizabilitatea.
        </span>
      </h1>
      <p data-aos="bounce-up" data-aos-duration="1000" data-aos-delay="800" class="w-10/12 sm:w-1/2 md:w-1/2 lg:w-1/3 mt-8 text-lg">
        Suntem un grup de tineri din Universitatea Politehnica Timișoara și vrem să ajutăm persoanele indiferent de dizabilitate
        pentru a putea avea toți acces egal la educație.
      </p>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      nrEvents: 0
    }
  },
  mounted() {
    this.nrEvents = this.$store.state.events.length
  }
}
</script>

<style lang="postcss" scoped>
.container {
  height: auto;
}

.motto {
  line-height: 1;
  font-size: 2.5em;
  @apply flex flex-col m-0 font-bold;
}

@screen sm {
  .motto {
    font-size: 4em;
  }
}

@screen md {
  .motto {
    font-size: 5em;
  }
}

@screen lg {
  .motto {
    font-size: 6em;
  }
}
</style>
