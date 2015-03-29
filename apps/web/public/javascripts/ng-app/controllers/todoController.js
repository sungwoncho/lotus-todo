'use strict';

angular.module('lotusTodo')
  .controller('TodoController', ['$scope', 'Todos', function ($scope, Todos) {

    $scope.todos = Todos.query();

    $scope.createTodo = function () {
      $scope.todo = new Todos();

      $scope.todo.$save(function (response) {
        // Update the $scope.todos
        $scope.todos = Todos.query();
      });
    };

  }]);
