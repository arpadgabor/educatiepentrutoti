export default function ({ $axios }) {
  $axios.setBaseURL(process.env.API_URL)
  console.log($axios)
}
