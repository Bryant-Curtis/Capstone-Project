var ApiActions = require('../actions/famebookAction');

var ApiUtil = {

  fetchAllPosts: function () {
    $.ajax({
      method:   "GET",
      url:      "/api/posts",
      success: function (data) {
        ApiActions.receiveAllPosts(data);
      },
      error: function () {
        return "Were not able to get the posts! :`)";
      }
    });
  },

  createPost: function (post) {
    $.ajax({
      method:   "POST",
      url:      "api/posts",
      dataType: "json", // What is the dataType to create it? Note: this is the dataType of the object I am sending to the DB.
      data:     {post: post}, // What goes in data?, Why do we send in the form of a hash?
      success: function (data) {
        ApiActions.getNewPost(data);
      },
      error: function () {
        return "We were not able to create your post! :`)";
      }
    });
  },

  deletePost: function (post) {
    $.ajax({
      method:   "DELETE",
      url:      "api/posts/" + post.id,
      dataType: "json", // What is the dataType to create it? Note: this is the dataType of the object I am sending to the DB.
      data:     {post: post}, // What goes in data?, Why do we send in the form of a hash?
      success: function (data) {
        ApiActions.getDeletedPost(data);
      },
      error: function () {
        return "We were not able to remove your post! :`)";
      }
    });
  },

  fetchAllUsers: function () {
    $.ajax({
      method:   "GET",
      url:      "api/users",
      success: function (data) {
        ApiActions.receiveAllUsers(data);
      },
      error: function () {
        return "Was not able to access the users! :`)";
      }
    });
  },

  fetchOneUser: function (userId) {
    $.ajax({
      method: "GET",
      url:    "/api/users/" + userId,
      success: function (data) {
        ApiActions.receiveOneUser(data);
      },
      error: function () {
        return "Was not able to access the user's information! :`)";
      }
    });
  },

  createFriendship: function (requestorId, requesteeId) {
    $.ajax({
      method:   "POST",
      url:      "api/friendships",
      dataType: "json",
      data:     { friendship: { friend_id: requestorId, self_id: requesteeId} },
      success: function (data) {
        ApiActions.receiveRequestee(data);
      }
    });
  },

  deleteFriendship: function (friendshipId, requestor_id, requestee_id) {
    $.ajax({
      method:   "DELETE",
      url:      "api/friendships/" + friendshipId,
      dataType: "json",
      data:     { friendship: { friend_id: requestor_id, self_id: requestee_id} },
      success: function (data) {
        ApiActions.receiveRequestee(data);
      },
      error: function () {
        return "Was not able to delete friend! :`)";
      }
    });
  },

  createFriendRequest: function (requestorId, requesteeId) {
    $.ajax({
      method:   "POST",
      url:      "/api/friend_requests",
      dataType: "json",
      data:     { friend_request: {requestee_id: requesteeId, requestor_id: requestorId} },
      success: function (data) {
        ApiActions.receiveRequestee(data);
      },
      error: function () {
        return "Was not able to request friend! :`)";
      }
    });
  },

  deleteFriendRequest: function (friendRequestId, requestorId, requesteeId) {
    $.ajax({
      method:   "DELETE",
      url:      "api/friend_requests/" + friendRequestId,
      dataType: "json",
      data:     { friend_request: { id: friendRequestId } },
      success: function (data) {
        ApiActions.receiveRequestee(data);
      }
    });
  },
  
  // declineFriendRequest: function (friendRequestId) {
  //   $.ajax({
  //     method:   "DELETE",
  //     url:      "api/friend_requests/" + friendRequestId,
  //     dataType: "json",
  //     data:     { friend_request: { id: friendRequestId } },
  //     success: function (data) {
  //       ApiActions.receiveRequestee(data);
  //     },
  //     error: function () {
  //       return "Was not able to delete friend! :`)";
  //     }
  //   });
  // },

  createPhoto: function (formData, callback) {
    $.ajax({
      method:   "POST",
      url:      "api/photos/",
      processData: false,
      contentType: false,
      dataType: "json",
      data:     formData,
      success: function (data) {
        ApiActions.receiveRequestee(data);
        callback && callback();
      },
      error: function () {
        return "Was not able to add photo! :`)";
      }
    });
  }

  // logOut: function (callback) {
  //   $.ajax({
  //     method: "DELETE",
  //     url: '/session',
  //     success: function (data) {
  //       callback && callback();
  //     }
  //   });
  // }
};

module.exports = ApiUtil;
