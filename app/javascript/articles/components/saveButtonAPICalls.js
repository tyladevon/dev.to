export const fetchUserCollections = () => {
  return fetch('http://localhost:3000/api/user_collections',  {credentials: 'include'})
  .then(response => {
    if (!response.ok) {
      throw Error('200 status code not found: fetchUserCollections throw error')
    }
    return response.json()
  })
}
