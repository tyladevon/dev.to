import { h } from 'preact';
import render from 'preact-render-to-json';
import { SaveButton } from '../components/SaveButton';
import { shallow } from 'preact-render-spy';
import { fetchUserCollections } from '../components/saveButtonAPICalls';

// *NOTE* fetchUserCollections() is tested in saveButtonAPICalls.test.js

describe('SaveButton', () => {

  let wrapper, mockState, mockArticle, mockProps;

  beforeEach(() => {

    let mockResponse = {
      collections: [
        "Default Collection",
        "Collection A",
        "Collection B",
        "Collection C"
      ]
    }

    window.fetch = jest.fn().mockImplementation(() => {
      return Promise.resolve({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      });
    });

    mockState = {
      collectionDropboxValue: 'Default Collection',
      allCollectionTitles: [],
      buttonText: 'SAVE!',
      hasBeenSaved: false
    }

    mockArticle = {
      title: " Consider the Lilies Quod quo",
      path: "/treutelcordell/consider-the-lilies-quod-quo-4f6n",
      id: 22,
      user_id: 10,
      comments_count: 4
    }

    mockProps = {
      article: mockArticle,
      comments_count: 4,
      isBookmarked: false,
      onClick: jest.fn(),
      children: []
    }

    wrapper = render(<SaveButton
      {...mockProps}
    />);

  })

  it('should match the snapshot', () => {
    expect(wrapper).toMatchSnapshot();
  });

  it('should start off with a default state', () => {
    let tree = shallow(<SaveButton
      {...mockProps}
      />)
    tree.fetchUserCollections = jest.fn()
    expect(tree.state()).toEqual(mockState)
  })

  it('should be able to update dropbox state', () => {
    const tree = shallow(<SaveButton
      {...mockProps}
      />)
    tree.fetchUserCollections = jest.fn()
    expect(tree.state('collectionDropboxValue')).toEqual('Default Collection')
    tree.setState({collectionDropboxValue: 'mockCollection'})
    expect(tree.state('collectionDropboxValue')).toEqual('mockCollection')
  })

  it('should be able to update hasBeenSaved state', () => {
    let tree = shallow(<SaveButton
      {...mockProps}
      />)
    tree.fetchUserCollections = jest.fn()
    expect(tree.state('hasBeenSaved')).toEqual(false)
    tree.find('button').simulate('click');
    tree.setState({hasBeenSaved: true})
    expect(tree.state('hasBeenSaved')).toEqual(true)
  })

});
