<template>
  <main>
    <section class="container mx-auto">
      <div class="my-16">
        <p class="text-gray-500 ">Cod {{ error.statusCode }}</p>
        <h1 class="text-4xl font-bold">
          A apărut o eroare.
        </h1>
      </div>
      <nuxt-link to="/" exact>
        <button>
          Du-mă acasă
        </button>
      </nuxt-link>
    </section>
  </main>
</template>

<script>
export default {
  props: {
    error: {
      type: Object,
      default: () => {},
    },
  },
  head () {
    return {
      title: `Eroare ${this.error.statusCode}`,
      meta: [
        { hid: 'description', name: 'description', content: 'A apărut o eroare încărcând pagina.' },
      ]
    }
  }
}
</script>

<style scoped>
.container {
  height: 70vh;
}
</style>
