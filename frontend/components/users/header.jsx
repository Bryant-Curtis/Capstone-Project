var React = require('react'),
    ApiUtil = require('../../util/apiUtil'),
    FamebookConstants = require('../../constants/famebookConstants'),
    UserStore = require('../../stores/userStore'),
    PostStore = require('../../stores/postStore');

var Header = React.createClass({

  render: function () {
    var username = this.props.user.first_name + " " + this.props.user.last_name;
    return(
      <header className="profile-header">
        <figure className="profile-header-photo"></figure>
        <figure className="profile-user-photo"></figure>
        <figure className="profile-username">{ username }</figure>
        <nav className="profile-nav">
          <ul className="group">
            <li className="profile-nav-timeline">Timeline</li>
            <li className="profile-nav-about">About</li>
            <li className="profile-nav-friends">Friends</li>
            <li className="profile-nav-photos">Photos</li>
          </ul>
        </nav>
      </header>
    );
  }
});

module.exports = Header;
