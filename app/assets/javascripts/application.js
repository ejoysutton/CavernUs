// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require lodash/lodash
//= require jquery
//= require jquery_ujs
//= require angular/angular
//= require angular-simple-logger/dist/angular-simple-logger
//= require angular-ui-router/release/angular-ui-router
//= require angular-google-maps/dist/angular-google-maps
//= require bootstrap-sprockets
//= require_self
//= require_tree .


// New routes for Angular
angular
    .module('CavernUs', ['ui.router', 'uiGmapgoogle-maps'])
    .config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
        // default fall back route
        $urlRouterProvider.otherwise('/');

        $stateProvider
            .state('home', {
                url: '/',
                component: 'homePage'
            })
            .state('users', {
                url: '/users',
                component: 'usersPage'
            })
            .state('userShow', {
                url: '/users/:userId',
                component: 'userShowPage'
            })
            .state('mines', {
                url: '/mines',
                component: 'minesPage'
            })
            .state('mineShow', {
                url: '/mines/:mineId',
                component: 'mineShowPage'
            })
            .state('trips', {
            url: '/trips',
            component: 'tripsPage'
            })
            .state('profile', {
                url: '/profile',
                component: 'profilePage'
            });

        // enable HTML5 Mode for SEO
        $locationProvider.html5Mode({
            enabled: true,
            requireBase: false
        });

    })
    .config(function(uiGmapGoogleMapApiProvider) {
        uiGmapGoogleMapApiProvider.configure({
            key: 'AIzaSyCMhSLrbp8JCSmx_P9r1NkgxdZbyXzA1T0'

        });
    });
