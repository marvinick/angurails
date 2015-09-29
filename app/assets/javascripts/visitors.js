var visitorCenter = angular.module("VisitorCenter", ['ngResource', 'angularFileUpload']);

visitorCenter.factory("Visitor", function($resource) {
  return $resource("visitors/:id", { id: '@id' }, {
    index: { method: 'GET', isArray: true, responseType: 'json'},
    update: { method: 'PUT', responseType: 'json' }
  });
})

visitorCenter.controller("visitorsController", function($scope, Visitor, FileUploader) {
    $scope.visitors = Visitor.index()

    $scope.addVisitor = function() {
      visitor = Visitor.save($scope.newVisitor)
      $scope.visitors.push(visitor)
      $scope.newVisitor = {}
    }

    $scope.deleteVisitor = function(index) {
      visitor = $scope.visitors[index]
      Visitor.delete(visitor)
      $scope.visitors.splice(index, 1);
    }

    $scope.uploader = new FileUploader({url: ''});
})
