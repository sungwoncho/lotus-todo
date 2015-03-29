'use strict';

angular.module('lotusTodo')
  .factory('Todos', ['$resource', function ($resource) {
    return $resource('/api/todo/:id', { id: '@id', format: 'json' })
  }]);
