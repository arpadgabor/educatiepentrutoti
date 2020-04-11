import axios from 'axios'

const api = axios.create({
  baseURL: process.env.apiUrl
})

export default api
