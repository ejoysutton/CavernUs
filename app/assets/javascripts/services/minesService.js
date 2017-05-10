angular
    .module('CavernUs')
    .factory('minesService', minesService);

minesService.$inject = ['$http'];

function minesService($http) {
    var factory = {};

    factory.getMine = function(id) {
        return $http.get('/api/mines/' + id);
    }

    factory.updateMine = function(mine) {
        return $http.put('/api/mines/' + mine.id, mine);
    }

    return factory;

}