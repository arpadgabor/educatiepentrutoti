import AOS from 'aos'
import '~/assets/css/aos.css'

export default ({ app }) => {
  // eslint-disable-next-line
  app.AOS = new AOS.init({ once: true, disable: true })
}
