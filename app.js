
var express = require('express');
var app = express();

//var db = require('./db.js');
var queries = require('./queries.js');

app.use('/bower_components',  express.static(__dirname + '/bower_components'));
app.use('/app',  express.static(__dirname + '/app'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/app/index.html');
});


app.get('/test', function(req, res) {
    console.log("App");
    queries.test(function(data) {
        res.send(data);
    })
});

app.listen('5674');
console.log('App running on port 5674');