
angular.module('ElectionDB')
    .controller('MainController', ['$scope', 'mainRoute', function($scope, mainRoute) {

        $scope.avgResult = '';

        //var queries = require('../../queries.js');

        $scope.grab = function() {
            console.log("Controller");
            mainRoute.grabTimeSeries();
        };

    }]);

