import { fetchUserCollections } from '../components/saveButtonAPICalls';

describe('fetchUserCollections', () => {
  let mockResponse = {
      collections: [
        "Default Collection",
        "Collection A",
        "Collection B",
        "Collection C"
        ]
      }

  beforeEach(() => {
    window.fetch = jest.fn().mockImplementation(() => {
      return Promise.resolve({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      });
    });
  });

  it('should call fetch with the correct url', () => {
    fetchUserCollections();
    expect(window.fetch).toHaveBeenCalledWith('http://localhost:3000/api/user_collections',  {credentials: 'include'})
  });

  it('should return an array of collections', () => {
    let mockCollections = {
        collections: [
          "Default Collection",
          "Collection A",
          "Collection B",
          "Collection C"
          ]
        }
    fetchUserCollections()
      .then(userCollections => expect(userCollections).toEqual(mockCollections));
  });

  it('should return an error if the response is not okay', () => {
    window.fetch = jest.fn().mockImplementation(() => {
      return Promise.reject(Error('200 status code not found: fetchUserCollections throw error'))
    })
    expect(fetchUserCollections()).rejects.toEqual(Error('200 status code not found: fetchUserCollections throw error'))
  });

});
