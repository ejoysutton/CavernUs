angular
    .module('CavernUs')
    .factory('minesService', minesService);

minesService.$inject = ['$http'];

function minesService($http) {
    var factory = {};

    factory.getMine = function(id) {
        return $http.get('/api/mines/' + id);
    }

    factory.updateMine = function(id, mine) {
        return $http.patch('/api/notes/' + id, mine);
    }



}