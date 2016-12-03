
var app = angular.module('ElectionDB', []);

//var queries = require('../../queries.js');

app.factory('mainRoute', ['$http', function($http) {

    function grabTimeSeries() {
        console.log("Route");
        return $http({
            url: 'http://localhost:5674/test',
            method: 'GET'
        }).success(function(data){
            console.log('Success');
            console.log(data);
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    return {
        grabTimeSeries: grabTimeSeries
    }
}]);
