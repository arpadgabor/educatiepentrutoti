export const state = () => ({
  settings: {},
  events: []
})

export const mutations = {
  setSetting(state, { name, value }) {
    state.settings[name] = value
    console.log(state)
  },
  initEvents(state, events) {
    if(events.length > 0)
      state.events.push(...events)
  }
}

export const actions = {
  async nuxtServerInit({ commit, dispatch }) {
    this.$axios.setBaseURL(process.env.API_URL)
    try {
      await dispatch('getSetting', 'showSubscribe')
      commit('initEvents', await dispatch('getEvents'))
    } catch (e) { console.log(e) }
  },
  async subscribe({ commit }, mail) {
    return await this.$axios.$post('/subscribers', {
      email: mail
    })
  },
  async getSetting({ commit }, setting) {
    try {
      const { data } = await this.$axios.$get(`/settings/?name=${setting}`)
      if(data)
        commit('setSetting', data)
    } catch (e) { console.log(e) }
  },
  async getEvents({ commit }, slug = null) {
    try {
      return await this.$axios.$get(`/events${ slug ? `/?slug=${slug}` : '' }`)
    } catch (e) { console.log(e) }
  }
}
