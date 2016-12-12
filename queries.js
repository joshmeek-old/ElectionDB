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

function NCEQ(callback) {

    connection.query('select * from PRESIDENT p where p.name in ( select t.Name from (select p1.Name, p1.StartYear as sy1, p2.StartYear as sy2 from PRESIDENT p1 inner join PRESIDENT p2 on p1.Name = p2.Name) as t where t.sy2 > t.sy1 + 4) and p.name != "Franklin D. Roosevelt";', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function SCQ(callback) {

    connection.query('select c.Name, rm.rName as Running_Mate, c.Year, c.Party, c.Popular, c.Percentage, c.Electoral, c.Polling from CANDIDATE c, RUNNING_MATE rm where c.Name in (select cc.Name from (select c1.Name, c1.Party as p1, c2.Party as p2 from CANDIDATE c1 inner join CANDIDATE c2 on c1.Name = c2.Name) as cc where p1 != p2) and c.Name = rm.cName and c.Year = rm.StartYear;', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function PQ(party, callback) {

    connection.query('select Party, Year, Popular, Percentage, Electoral from CANDIDATE c where c.Party = "' + party + '";', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function SQ(state, callback) {

    connection.query('select * from STATE where sName = "' + state + '" order by Year;', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function FEQ(callback) {

    connection.query("select pName, count(*) as VPCount from VICE_PRESIDENT where vName != 'None' group by pName order by VPCount desc;", function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function NEQ(callback) {

    connection.query('select Name, StartYear from PRESIDENT where StartYear % 4 != 0;', function(err, rows) {
        if(err) throw err;
        callback(rows);
    });

}

function PPQ(name, callback) {

    connection.query('select distinct(Picture) from PRESIDENT where Name = "' + name + '";', function(err, rows) {
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
    NCEQ: function(callback) {
        NCEQ(function(results) {
            callback(results);
        })
    },
    SCQ: function(callback) {
        SCQ(function(results) {
            callback(results);
        })
    },
    PQ: function(party, callback) {
        PQ(party, function(results) {
            callback(results);
        })
    },
    SQ: function(state, callback) {
        SQ(state, function(results) {
            callback(results);
        })
    },
    FEQ: function(callback) {
        FEQ(function(results) {
            callback(results);
        })
    },
    NEQ: function(callback) {
        NEQ(function(results) {
            callback(results);
        })
    },
    PPQ: function(name, callback) {
        PPQ(name, function(results) {
            callback(results);
        })
    }
}