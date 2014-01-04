describe "Restaurant controller", ->

  beforeEach module("restauranteur")

  describe "RestaurantIndexCtrl", ->
    it "sets restaurants to an empty array", inject ($controller) ->
      scope = {}
      ctrl = $controller "RestaurantIndexCtrl",
        $scope: scope

      expect(scope.restaurants.length).toBe 0

