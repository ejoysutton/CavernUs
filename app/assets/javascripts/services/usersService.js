angular
    .module('CavernUs')
    .factory('usersService', usersService);

usersService.$inject = ['$http'];

function usersService($http) {
    var factory = {};

    factory.getUser = function(id) {
        return $http.get('/api/users/' + id);
    }

    factory.updateUser = function(user) {
        return $http.put('/api/users/' + user.id, user);
    }

    factory.newUser = function(user) {
        return $http.post('/api/users/', user);
    }

    factory.destroyUser = function(user) {
        console.log(user);
        return $http.delete('/api/users/' + user.id);
    }

    return factory;

}