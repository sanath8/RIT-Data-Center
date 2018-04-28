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
    // console.log(req.body);
    // sqlAPI.updateResults(JSON.stringify(req.body), req.params.tableName, req.params.authority, callback);
    //var str="Apis need to integrated";
    var upd=[];
    var tableKey=[];
    console.log("request body in apiInsert : " + JSON.stringify(req.body));
    for(var t in req.body){
        if(t!="slNo" && t!="facultyId" && t!="url" && t!="getParam"){
            upd.push("'"+req.body[t]+"'");
            tableKey.push(t);
        }else if(t=="facultyId" && !req.body.getParam){
            upd.push("'"+req.session.facultyId+"'");
            tableKey.push("facultyId");
        }else if(t=="getParam"){
            upd.push("'"+req.body[t]+"'");
            tableKey.push("facultyId");
        }
    }
    var sql = "INSERT INTO "+req.params.tableName+"("+tableKey.join(",")+") VALUES ("+upd.join(",")+")"
    
    // for(var b in req.body){
    //     str=str+"\n"+b;
    // }

    console.log("the query is : " + sql);
    mysql.runRawQuery(sql, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        }
        if(!req.body.getParam){
            res.redirect(req.body.url);
        }else{
            res.redirect(req.body.url+"?fId="+req.body.getParam);
        }
    });

});


module.exports = router;
