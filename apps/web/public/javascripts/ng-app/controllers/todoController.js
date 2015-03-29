'use strict';

angular.module('lotusTodo')
  .controller('TodoController', ['$scope', 'Todos', function ($scope, Todos) {

    $scope.todos = Todos.query();
    $scope.todo = new Todos();

    $scope.createTodo = function () {
      $scope.todo.$save(function (response) {
        $scope.todos.push($scope.todo);
        $scope.todo = new Todos();
      });
    };

    $scope.deleteTodo = function (todo) {
      todo.$delete(function (response) {

        // Delete the todo from the array of todos
        var index = $scope.todos.indexOf(todo);
        if (index > 1) {
          $scope.todos.splice(index, 1);
        }
      });
    };

  }]);
