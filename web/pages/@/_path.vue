<template>

</template>

<script>
export default {
  async asyncData({ redirect, store, params, error }) {
    let link = await store.dispatch('getRedirect', params.path)
    if(link && link.length > 0) {
      await store.dispatch('incrementRedirect', { id: link[0].id, inc: link[0].views + 1 })
      redirect(link[0].destination)
    } else {
      error({ statusCode: 404, message: 'Pagina de negăsit' })
    }
  }
}
</script>

<style>

</style>
