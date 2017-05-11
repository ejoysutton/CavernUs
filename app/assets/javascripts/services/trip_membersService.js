angular
    .module('CavernUs')
    .factory('tripMembersService', tripMembersService);

tripMembersService.$inject = ['$http'];

function tripMembersService($http) {
    var factory = {};

    factory.getTripMember = function(id) {
        return $http.get('/api/trip_members/' + id);
    }

    factory.updateTripMember = function(trip_member) {
        return $http.put('/api/trip_members/' + trip_member.id, trip);
    }

    factory.newTripMember = function(trip_member) {
        return $http.post('/api/trip_members/', trip_member);
    }

    factory.destroyTripMember = function(member_id) {

        return $http.delete('/api/trip_members/' + member_id);
    }

    return factory;

}