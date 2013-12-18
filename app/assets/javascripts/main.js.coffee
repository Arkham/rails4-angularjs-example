@restauranteur = angular.module('restauranteur', ['ngRoute'])

@restauranteur.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])
