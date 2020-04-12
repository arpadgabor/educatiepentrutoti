<template>
  <section
    class="w-full mx-auto py-16 flex z-10 relative"
    data-aos="bounce-up"
    data-aos-duration="1000"
    data-aos-delay="800"
    data-aos-once="true"
    data-aos-anchor-placement="bottom-bottom"
  >
    <div class="p-4 bg-white rounded shadow-md w-auto">
      <h4 class="font-bold text-secondary-normal text-xl">
        Dorești să ne urmărești progresul?
      </h4>
      <p>Abonează-te și te vom ține la curent pe mail!</p>
      <div class="mt-4">
        <form
          v-if="!success"
          @submit.prevent="subscribe"
          class="flex flex-col sm:flex-row"
        >
          <input
            id="email"
            v-model="email"
            type="email"
            placeholder="E-mail-ul tău"
            required
          />
          <button type="submit">Abonează-mă!</button>
        </form>
        <div v-if="success">
          <p class="text-secondary-normal font-bold">Ești abonat!</p>
        </div>
        <div v-if="error" class="text-sm text-primary-dark">
          <small>A apărut o eroare!</small>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      email: null,
      error: false,
      success: false
    }
  },
  methods: {
    async subscribe() {
      try {
        await this.$store.dispatch('subscribe', this.email)
        this.error = false
        this.success = true
      } catch (err) {
        this.error = true
      }
    }
  }
}
</script>

<style lang="postcss" scoped>
button {
  @apply mt-2;

  @screen sm {
    @apply ml-2 mt-0;
  }
}
</style>
