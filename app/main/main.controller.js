
angular.module('ElectionDB')
    .controller('MainController', ['$scope', 'mainRoute', function($scope, mainRoute) {

        //var queries = require('../../queries.js');

        $scope.resultsEYQ = {};
        $scope.resultsCQ = {};
        $scope.resultsNCEQ = {};
        $scope.resultsSCQ = {};
        $scope.resultsPQ = {};
        $scope.resultsSQ = {};
        $scope.resultsFEQ = '';
        $scope.resultsNEQ = {};
        $scope.resultsPPQ = '';
        $scope.score = 0;
        $scope.total = 0;
        $scope.answer = '';

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

        $scope.FEQ = function(pres, vp) {
            mainRoute.FEQ(pres, vp).then(function(data) {
                console.log(data.data);
                if(data.data.length == 0) {
                    $scope.answer = 'Incorrect';
                    $scope.resultsFEQ = pres + " did not serve with " + vp;
                    $scope.total += 1;
                }
                else {
                    $scope.answer = 'Correct';
                    $scope.resultsFEQ = pres + " served with " + vp;
                    $scope.score += 1;
                    $scope.total += 1;
                }
            });
        };

        $scope.NEQ = function() {
            mainRoute.NEQ().then(function(data) {
                $scope.resultsNEQ = data.data;
                console.log(data.data);
            });
        };

        $scope.PPQ = function(name) {

            if(!name) {
                $scope.resultsPPQ = '';
            }
            else {
                mainRoute.PPQ(name).then(function (data) {
                    //bower_components/POTUS_pictures/Adams.jpg
                    $scope.resultsPPQ = 'bower_components/POTUS_pictures/' + data.data[0].Picture + '.jpg';
                    console.log(data.data[0].Picture);
                });
            }
        };


    }]);

