angular
    .module('CavernUs')
    .factory('tripsService', tripsService);

tripsService.$inject = ['$http'];

function tripsService($http) {
    var factory = {};

    factory.getTrip = function(id) {
        return $http.get('/api/trips/' + id);
    }

    factory.updateTrip = function(trip) {
        return $http.put('/api/trips/' + trip.id, trip);
    }

    factory.newTrip = function(trip) {
        return $http.post('/api/trips/', trip);
    }

    factory.destroyTrip = function(trip) {
        console.log(trip);
        return $http.delete('/api/trips/' + trip.id);
    }

    return factory;

}