angular
    .module('CavernUs')
    .factory('postsService', postsService);

postsService.$inject = ['$http'];

function postsService($http) {
    var factory = {};

    factory.getPost = function(id) {
        return $http.get('/api/posts/' + id);
    }

    factory.updatePost = function(post) {
        return $http.put('/api/posts/' + post.id, post);
    }

    factory.newPost = function(post) {
        return $http.post('/api/posts/', post);
    }

    factory.destroyPost = function(post) {
        console.log(post);
        return $http.delete('/api/posts/' + post.id);
    }

    return factory;

}