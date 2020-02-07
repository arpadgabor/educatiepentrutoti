export const actions = {
  async SUBSCRIBE({ commit }, mail) {
    try {
      const response = await this.$axios.$post('/subscribers', {
        email: mail
      })
      return response
    } catch (err) {
      throw new Error(err)
    }
  }
}
