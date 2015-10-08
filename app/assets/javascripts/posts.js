var postCenter = angular.module('PostCenter', ['ngResource']);

postCenter.factory("Post", function($resource) {
  return $resource("posts/:id.json", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' },
    update:  { method: 'PUT', responseType: 'json' }
  });
})

postCenter.controller("postsController", function($scope, Post) {
  $scope.posts = Post.index()

  $scope.addPost = function() {
    post = Post.save($scope.newPost)

    $scope.posts.push(post)
    $scope.newPost = {}
  }

  $scope.deletePost = function(index) {

    post = $scope.posts[index]
    Post.delete(post)
    $scope.posts.splice(index, 1);
  }
})
