'use strict';

angular.module('lotusTodo')
  .controller('TodoController', ['$scope', 'Todos', function ($scope, Todos) {

    $scope.todos = Todos.query();
    $scope.todo = new Todos();

    $scope.createTodo = function () {

      $scope.todo.$save(function (response) {
        $scope.todos = Todos.query();
        $scope.todo = new Todos();
      });
    };

  }]);
