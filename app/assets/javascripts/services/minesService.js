angular
    .module('CavernUs')
    .factory('minesService', minesService);

minesService.$inject = ['$http'];

function minesService($http) {
    var factory = {};

    factory.getMine = function(id) {
        return $http.get('/api/mines/' + id);
    }

    factory.updateMine = function(mineId, mine) {
        return $http.put('/api/mines/' + mineId.id, mine);
    }

    return factory;

}