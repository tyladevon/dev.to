import { h, Component } from 'preact';
import PropTypes from 'prop-types';
import { articlePropTypes } from '../../src/components/common-prop-types';

export class SaveButton extends Component {
  constructor() {
    super();
    this.state =
      {
        collectionDropboxValue: 'all articles',
        allCollectionTitles: []
      }
  }

  componentDidMount() {
    fetch('http://localhost:3000/api/user_collections',  {credentials: 'include'})
      .then(response => response.json())
      .then(data => {
        this.setState({ allCollectionTitles: data.collections })
      })
      .catch(error => window.alert(`Opps! Something went wrong! ${error.message}`))
    const { isBookmarked } = this.props;
    this.setState({ buttonText: isBookmarked ? 'SAVED' : 'SAVE!' });
  }

  updateDropboxState = collectionName => {
    this.setState({collectionDropboxValue: collectionName});
  }

  render() {
    const { buttonText } = this.state;
    const { article, isBookmarked, onClick } = this.props;
    const mouseOut = _e => {
      this.setState({ buttonText: isBookmarked ? 'SAVED' : 'SAVE' });
    };
    const mouseOver = _e => {
      if (isBookmarked) {
        this.setState({ buttonText: 'UNSAVE' });
      }
    };

    let printCollectionTitles = this.state.allCollectionTitles.map(title => {
      return <option value={title}>{title}</option>
    })

    if (article.class_name === 'Article') {
      return (
        <div className='save-to-collection-button-container'>
            <div className='collection-dropdown-container'>
              <label className='collection-dropdown-heading'>collection:</label>
              <select className='collection-dropbox' onChange={e => this.updateDropboxState(e.target.value)}>
                {printCollectionTitles}
              </select>
            </div>
          <button
            type="button"
            className={`article-engagement-count engage-button bookmark-button ${
              isBookmarked ? 'selected' : ''
            }`}
            data-initial-feed
            data-reactable-id={article.id}
            onClick={onClick}
            onMouseOver={mouseOver}
            onFocus={mouseOver}
            onMouseout={mouseOut}
            onBlur={mouseOut}
          >
            <span className={isBookmarked ? 'bm-success' : 'bm-initial'}>
              {buttonText}
            </span>
          </button>
        </div>
      );
    }
    if (article.class_name === 'User') {
      return (
        <button
          type="button"
          style={{ width: '122px' }}
          className="article-engagement-count engage-button follow-action-button"
          data-info={`{"id":${article.id},"className":"User"}`}
          data-follow-action-button
        >
          &nbsp;
        </button>
      );
    }
    return null;
  }
}
SaveButton.propTypes = {
  article: articlePropTypes.isRequired,
  isBookmarked: PropTypes.bool.isRequired,
  onClick: PropTypes.func.isRequired,
};
SaveButton.displayName = 'SaveButton';
