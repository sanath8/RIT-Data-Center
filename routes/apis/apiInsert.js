var express = require('express');
var router = express.Router();
var mysql = require('./mySqlCalls');

router.post('/:tableName', function(req, res, next){
    // //here authority is the id of the person making the edit. This way we can figure out whether the right person
    // //is updating the database or not.
    // callback = function(result){
    //     res.setHeader('Content-Type', 'text/plain');
    //     res.send(result).end();;
    //     //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    // }
    console.log(req.body);
    // sqlAPI.updateResults(JSON.stringify(req.body), req.params.tableName, req.params.authority, callback);
    //var str="Apis need to integrated";
    var upd=[];
    columnNameString = '';
    var i = 0;
    for(var t in req.body){
        if(t === 'url')continue;
        if(i != 0){
            columnNameString += ", ";
        }
        columnNameString += t;   
        if(req.body[t]){
            upd.push("'" + req.body[t] + "'");
        }
        else{

            upd.push("'undefined'");
        }
        i++; 
    }
    if(columnNameString.length != 0){
        var sql = "Insert into "+req.params.tableName+"(" + columnNameString + ") values(";   
        sql+=upd.join(" , ");
        sql += ")";
        //sql+=" Where slNo="+req.body.slNo;
        // for(var b in req.body){
        //     str=str+"\n"+b;
        // }

        console.log("the query is : " + sql);
        
        mysql.runRawQuery(sql, function(err, result){
            if(err){
                res.end("Error : "+err.message);
                return;
            }
            res.redirect(req.body.url);
        });
    }
});

module.exports = router;
