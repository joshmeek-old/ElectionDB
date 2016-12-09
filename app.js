
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
    console.log('NCEQ: ' + req.query.year);
    queries.NCEQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/SCQ', function(req, res) {
    console.log('SCQ: ' + req.query.year);
    queries.SCQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/PQ', function(req, res) {
    console.log('PQ: ' + req.query.year);
    queries.PQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/SQ', function(req, res) {
    console.log('SQ: ' + req.query.year);
    queries.SQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/FEQ', function(req, res) {
    console.log('FEQ: ' + req.query.year);
    queries.FEQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/NEQ', function(req, res) {
    console.log('NEQ: ' + req.query.year);
    queries.NEQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.get('/PPQ', function(req, res) {
    console.log('PPQ: ' + req.query.year);
    queries.PPQ(req.query.year, function(data) {
        res.send(data);
    })
});

app.listen('5674');
console.log('App running on port 5674');