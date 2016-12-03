var mysql = require('mysql');
var connection = mysql.createConnection({
    host : 'localhost',
    user : 'node',
    password : 'node',
    database : 'db'
});

function test2(callback) {
    //document.getElementById("bleh").innerHTML = 'asdf';
    connection.connect();

    connection.query('SELECT * from PRESIDENT;', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });
    connection.end();
}

module.exports = {
    test: function(callback) {
        test2(function(arr) {
            callback(arr);
        });
    }
}