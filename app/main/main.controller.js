
angular.module('ElectionDB')
    .controller('MainController', ['$scope', 'mainRoute', function($scope, mainRoute) {

        //var queries = require('../../queries.js');

        $scope.resultsEYQ = {};
        $scope.resultsCQ = {};
        $scope.resultsNCEQ = {};
        $scope.resultsSCQ = {};
        $scope.resultsPQ = {};
        $scope.resultsSQ = {};
        $scope.resultsFEQ = {};
        $scope.resultsNEQ = {};
        $scope.resultsPPQ = {};

        $scope.EYQ = function(year) {

            if(isNaN(parseFloat(year)) || !isFinite(year)) {
                return;
            }

            mainRoute.EYQ(year).then(function(data) {
                $scope.resultsEYQ = data.data;
                console.log(data.data);
            });
        };

        $scope.CQ = function(name) {
            mainRoute.CQ(name).then(function(data) {
                $scope.resultsCQ = data.data;
                console.log(data.data);
            });
        };

        $scope.NCEQ = function() {
            mainRoute.NCEQ().then(function(data) {
                $scope.resultsNCEQ = data.data;
                console.log(data.data);
            });
        };

        $scope.SCQ = function() {
            mainRoute.SCQ().then(function(data) {
                $scope.resultsSCQ = data.data;
                console.log(data.data);
            });
        };

        $scope.PQ = function(party) {
            mainRoute.PQ(party).then(function(data) {
                $scope.resultsPQ = data.data;
                console.log(data.data);
            });
        };

        $scope.SQ = function(state) {
            mainRoute.SQ(state).then(function(data) {
                $scope.resultsSQ = data.data;
                console.log(data.data);
            });
        };

        $scope.FEQ = function(year) {
            mainRoute.FEQ(year).then(function(data) {
                $scope.resultsFEQ = data.data;
                console.log(data.data);
            });
        };

        $scope.NEQ = function(year) {
            mainRoute.NEQ(year).then(function(data) {
                $scope.resultsNEQ = data.data;
                console.log(data.data);
            });
        };

        $scope.PPQ = function(year) {
            mainRoute.PPQ(year).then(function(data) {
                $scope.resultsPPQ = data.data;
                console.log(data.data);
            });
        };


    }]);

