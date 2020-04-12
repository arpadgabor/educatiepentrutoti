export const state = () => ({
  settings: {},
  events: [],
  eventsCount: 0
})

export const mutations = {
  setSetting(state, { name, value }) {
    state.settings[name] = value
    console.log(state)
  },
  initEvents(state, events) {
    if(events.length > 0)
      state.events.push(...events)
  },
  setEventCount(state, count) {
    state.eventsCount = count
  }
}

export const actions = {
  async nuxtServerInit({ commit, dispatch }, { error }) {
    try {
      const data = await Promise.all([
        dispatch('getSetting', 'showSubscribe'),
        dispatch('countEvents')
      ])

      if(data[0]) commit('setSetting', data[0][0])
      commit('setEventCount', data[1])
    } catch (e) {
      error(500, 'Eroare de server')
    }
  },
  async subscribe({ commit }, mail) {
    return await this.$http.post('subscribers', {
      email: mail
    })
  },
  async getSetting({ commit }, setting) {
    return await this.$http.$get(`settings/?name=${setting}`)
  },
  async getEvents({ commit }, slug = null) {
    let events = await this.$http.$get(`events${ slug ? `/?slug=${slug}` : '' }`)
    commit('initEvents', events)
    return (slug === null ? events : events[0])
  },
  async countEvents() {
    return await this.$http.$get(`events/count`)
  }
}
