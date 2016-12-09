var mysql = require('mysql');
var connection = mysql.createConnection({
    host : 'localhost',
    user : 'node',
    password : 'node',
    database : 'db'
});

connection.connect();

function EYQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function CQ(name, callback) {

    connection.query('select c.Name, rm.rName as Running_Mate, c.Year, c.Party, c.Popular, c.Percentage, c.Electoral, c.Polling from CANDIDATE c, RUNNING_MATE rm where c.Name = "' + name + '" and rm.cName = "' + name + '" and c.Year = rm.StartYear;', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function NCEQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function SCQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function PQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function SQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function FEQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function NEQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function PPQ(year, callback) {

    connection.query('select * from CANDIDATE where Year = ' + year + ';', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

module.exports = {
    EYQ: function(year, callback) {
        EYQ(year, function(results) {
            callback(results);
        })
    },
    CQ: function(name, callback) {
        CQ(name, function(results) {
            callback(results);
        })
    },
    NCEQ: function(year, callback) {
        NCEQ(year, function(results) {
            callback(results);
        })
    },
    SCQ: function(year, callback) {
        SCQ(year, function(results) {
            callback(results);
        })
    },
    PQ: function(year, callback) {
        PQ(year, function(results) {
            callback(results);
        })
    },
    SQ: function(year, callback) {
        SQ(year, function(results) {
            callback(results);
        })
    },
    FEQ: function(year, callback) {
        FEQ(year, function(results) {
            callback(results);
        })
    },
    NEQ: function(year, callback) {
        NEQ(year, function(results) {
            callback(results);
        })
    },
    PPQ: function(year, callback) {
        PPQ(year, function(results) {
            callback(results);
        })
    }
}