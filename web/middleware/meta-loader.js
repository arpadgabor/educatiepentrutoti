import generateMeta from '@/helpers/meta'

export default async ({ store, route, error }) => {
  let meta
  try {
    [meta] = await store.dispatch(`getMeta`, route.path)
  } catch(e) {
    return error({ statusCode: e.statusCode, message: 'A aparut o problema.' })
  }

  if(!meta) return store.commit('setMeta', generateMeta())
  return store.commit('setMeta', generateMeta(meta.title, meta.description, meta.image ? meta.image.url : undefined))
}
