export const state = () => ({
  navItems: null
})

export const mutations = {
  setNavItems(state, items) {
    state.navItems = items
  }
}

export const actions = {
  async nuxtServerInit({ dispatch }) {
    await dispatch('getNavItems')
  },

  async subscribe(_, mail) {
    return await this.$http.post('subscribers', {
      email: mail
    })
  },

  async getEvents({ commit }, slug = null) {
    let events = await this.$http.$get(`events${ slug ? `/?slug=${slug}` : '' }`)

    return (slug === null ? events : events[0])
  },
  async getPages({ commit }, slug = null) {
    let pages = await this.$http.$get(`pages${ slug ? `/?slug=${slug}` : '' }`)
    return (slug === null ? pages : pages[0])
  },
  async getMeta(_, path) {
    return await this.$http.$get(`metas?path=${path}`)
  },

  async getRedirect(_, path) {
    return await this.$http.$get(`redirects?path=${path}`)
  },
  async incrementRedirect(_, { id, inc }) {
    return await this.$http.$put(`redirects/${id}`, {
      views: inc
    })
  },

  async getNavItems({ commit }) {
    const items = await this.$http.$get('navigations')
    commit('setNavItems', items)
  },
}
