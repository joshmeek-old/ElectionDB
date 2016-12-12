
var app = angular.module('ElectionDB', []);

//var queries = require('../../queries.js');

app.factory('mainRoute', ['$http', function($http) {

    function EYQ(year) {
        console.log("EYQ Route");
        return $http({
            url: 'http://localhost:5674/EYQ',
            method: 'GET',
            params: {year: year}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function CQ(name) {
        console.log("CQ Route");
        return $http({
            url: 'http://localhost:5674/CQ',
            method: 'GET',
            params: {name: name}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function NCEQ() {
        console.log("NCEQ Route");
        return $http({
            url: 'http://localhost:5674/NCEQ',
            method: 'GET'
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function SCQ() {
        console.log("SCQ Route");
        return $http({
            url: 'http://localhost:5674/SCQ',
            method: 'GET'
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function PQ(party) {
        console.log("PQ Route");
        return $http({
            url: 'http://localhost:5674/PQ',
            method: 'GET',
            params: {party: party}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function SQ(state) {
        console.log("SQ Route");
        return $http({
            url: 'http://localhost:5674/SQ',
            method: 'GET',
            params: {state: state}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function FEQ(year) {
        console.log("FEQ Route");
        return $http({
            url: 'http://localhost:5674/FEQ',
            method: 'GET',
            params: {year: year}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function NEQ(year) {
        console.log("NEQ Route");
        return $http({
            url: 'http://localhost:5674/NEQ',
            method: 'GET',
            params: {year: year}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    function PPQ(year) {
        console.log("PPQ Route");
        return $http({
            url: 'http://localhost:5674/PPQ',
            method: 'GET',
            params: {year: year}
        }).success(function(data){
            return data;
        }).error(function(data, error){
            console.log("Error: " + error);
        });
    }

    return {
        EYQ: EYQ,
        CQ: CQ,
        NCEQ: NCEQ,
        SCQ: SCQ,
        PQ: PQ,
        SQ: SQ,
        FEQ: FEQ,
        NEQ: NEQ,
        PPQ: PPQ
    }
}]);
