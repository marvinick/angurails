// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var post = angular.module('Post', ['ngResource']);

post.factory("Post", function($resource) {
  return $resource("posts/:id", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' },
    update:  { method: 'PUT', responseType: 'json' }
  });
})

post.controller("PostsController", function($scope, Post) {
  $scope.Posts = Post.index()

  $scope.addPost = function() {
    post = Post.save($scope.newPost)

    $scope.posts.push(post)
    $scope.newVisitor = {}
  }

  $scope.deletePost = function(index) {

    post = $scope.posts[index]
    Post.delete(post)
    $scope.posts.splice(index, 1);
  }
})
