/**
 *
 * @param {string} title Title of page
 * @param {string} description Description of page
 * @param {string} image URL to the image
 * @returns {Object} Meta object
 */
const generateMeta = (
  title = 'Bine ai venit!',
  description = 'Accesiblitatea e problema, nu dizabilitatea.',
  image = '/images/og-preview.png'
) => {
  return {
    title: title,
    meta: [
      { hid: 'description', name: 'description', content: description },
      { hid: 'og:title', name: 'og:title', property: 'og:title', content: title },
      { hid: 'og:description', name: 'og:description', property: 'og:description', content: description },
      { hid: 'og:image', name: 'og:image', property: 'og:image', content: image }
    ]
  }
}

export default generateMeta
