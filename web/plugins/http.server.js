export default function ({ $http }) {
  $http.onError(error => {
    console.log(error)
  })
}
