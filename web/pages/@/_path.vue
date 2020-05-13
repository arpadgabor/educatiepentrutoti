<template>

</template>

<script>
export default {
  async asyncData({ redirect, store, params, error }) {
    let link = await store.dispatch('getRedirect', params.path)
    if(link) {
      redirect(link.destination)
    } else {
      error({ statusCode: 404, message: 'Pagina de negăsit' })
    }
  }
}
</script>

<style>

</style>
