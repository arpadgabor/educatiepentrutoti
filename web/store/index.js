import api from '~/plugins/axios'

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
    state.events.push(...events.data)
  }
}

export const actions = {
  async nuxtServerInit({ commit, dispatch }) {
    await dispatch('getSetting', 'showSubscribe')
    commit('initEvents', await dispatch('getEvents'))
  },
  async subscribe({ commit }, mail) {
    return await api.post('/subscribers', {
      email: mail
    })
  },
  async getSetting({ commit }, setting) {
    const { data } = await api.get(`/settings/?name=${setting}`)
    commit('setSetting', data[0])
  },
  async getEvents({ commit }, slug = null) {
    return await api.get(`/events${ slug ? `/?slug=${slug}` : '' }`)
  }
}
