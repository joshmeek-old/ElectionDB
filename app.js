
var express = require('express');
var app = express();

//var db = require('./db.js');
var queries = require('./queries.js');

app.use('/bower_components',  express.static(__dirname + '/bower_components'));
app.use('/app',  express.static(__dirname + '/app'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/app/index.html');
});

app.get('/EYQ', function(req, res) {
    console.log('EYQ: ' + req.query.year);
    queries.EYQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/CQ', function(req, res) {
    console.log('CQ: ' + req.query.name);
    queries.CQ(req.query.name, function(data) {
        res.send(data);
    })
});

app.get('/NCEQ', function(req, res) {
    console.log('NCEQ: ');
    queries.NCEQ(function(data) {
        res.send(data);
    })
});

app.get('/SCQ', function(req, res) {
    console.log('SCQ: ');
    queries.SCQ(function(data) {
        res.send(data);
    })
});

app.get('/PQ', function(req, res) {
    console.log('PQ: ' + req.query.party);
    queries.PQ(req.query.party, function(data) {
        res.send(data);
    })
});

app.get('/SQ', function(req, res) {
    console.log('SQ: ' + req.query.state);
    queries.SQ(req.query.state, function(data) {
        res.send(data);
    })
});

app.get('/FEQ', function(req, res) {
    console.log('FEQ: ' + req.query.pres + " " + req.query.vp);
    queries.FEQ(req.query.pres, req.query.vp, function(data) {
        res.send(data);
    })
});

app.get('/NEQ', function(req, res) {
    console.log('NEQ: ');
    queries.NEQ(function(data) {
        res.send(data);
    })
});

app.get('/PPQ', function(req, res) {
    console.log('PPQ: ' + req.query.name);
    queries.PPQ(req.query.name, function(data) {
        res.send(data);
    })
});

app.listen('5674');
console.log('App running on port 5674');