var React = require('react'),
    ApiUtil = require('../../util/apiUtil'),
    FamebookConstants = require('../../constants/famebookConstants'),
    PostStore = require('../../stores/postStore'),
    PostForm = require('./form'),
    ReactCSSTransitionGroup = require('react-addons-css-transition-group');


var Posts = React.createClass({
  getInitialState: function () {
    return { posts: PostStore.all() };
  },

  componentDidMount: function () {
    this.postToken = PostStore.addListener(this._onChange);
    ApiUtil.fetchAllPosts();
  },

  componentWillUnmount: function () {
    this.postToken.remove();
  },

  deletePost: function (post_id) {
    var post;
    for (var i = 0; i < this.state.posts.length; i++) {
      if (this.state.posts[i].id === post_id) {
        post = this.state.posts[i];
      }
    }
    ApiUtil.deletePost(post);
  },

  render: function () {
    var deleteButton;
    var posts = this.state.posts.map(function(post){
      if ((parseInt(post.author_id)) === (parseInt(window.currentUserId))) {
        deleteButton = <button onClick={this.deletePost.bind(this, post.id)} className="delete-post-button">Delete</button>;
      } else {
        deleteButton = "";
      }
      return(
        <li key={post.id} className="post group">
          <header className="post-header">
            <section className="post-header-name">
              <a className="post-author-name" href={"#/users/" + post.author_id}>
                { post.author.name }
              </a>
            </section>
          </header>
          <article className="post-body">{ post.body }</article>
          { deleteButton }
        </li>
      );
    }.bind(this));
    return(
      <div key={1} className="feed group">

        <sidebar className="feed-sidebar-left">
          <a href="http://www.bryantcurtis.com/Bolts">
            <section className="feed-sidebar-left-game group">
              <img className="feed-sidebar-left-game-image"></img>
              <p className="feed-sidebar-left-game-text">Bolts</p>
            </section>
          </a>
        </sidebar>

        <section className="feed-main">
          <PostForm />
          <ul>
            <ReactCSSTransitionGroup transitionName="posts" transitionEnterTimeout={500} transitionLeaveTimeout={600}>
              { posts }
            </ReactCSSTransitionGroup>
          </ul>
        </section>

        <sidebar className="feed-sidebar-right">
          <p className="feed-sidebar-right-suggestion">SUGGESTED PAGES</p>
          <section className="feed-sidebar-right-adds"><img src={window.prof}></img></section>
          <section className="feed-sidebar-right-adds"><img src={window.bolts}></img></section>
        </sidebar>

      </div>
    );
  },

  _onChange: function () {
    this.setState({ posts: PostStore.all() });
  }

});

module.exports = Posts;
