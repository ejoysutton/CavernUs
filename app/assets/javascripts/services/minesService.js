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

    factory.newMine = function(mine) {
        return $http.post('/api/mines/', mine);
    }

    factory.destroyMine = function(mine) {
        console.log(mine);
        return $http.delete('/api/mines/' + mine.id);
    }

    return factory;

}