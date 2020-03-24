import { h, Component } from 'preact';

let collectionTitles;

export const returnCollectionTitles = () => {
  return collectionTitles;
}

export class NewCollectionMenu extends Component {
  constructor() {
    super();
    this.state =
      {
        title: '',
        allCollections: []
      }
  }

  handleChange = e => {
    this.setState({ title: e.target.value });
  }

  createCollection = () => {
    this.setState({ allCollections: [...this.state.allCollections, this.state.title] });
    collectionTitles = this.state.allCollections
    this.setState({ title: '' });
  }

  render() {
    return (
      <section className='new-collection-container'>
        <p className='new-collection-heading'>Create a New Collection</p>
        <input
          className='new-collection-input'
          onChange={this.handleChange}
          value={this.state.title}
          type='text'
          placeholder='name of collection...'
        />
        <button className='new-collection-button' onClick={this.createCollection}>save</button>
      </section>
    )
  }
}

export default NewCollectionMenu;
