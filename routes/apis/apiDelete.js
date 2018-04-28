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
    for(var t in req.body){
        if(t!="slNo" && t!="facultyId" && t!="url" && t!="getParam")
            upd.push(t+"='"+req.body[t]+"'");
    }
    var sql = "DELETE FROM "+req.params.tableName;
    if(req.body.slNo){
        sql += " WHERE slNo='"+req.body.slNo + "'";   
    }else if(req.body.facultyId){
        sql += " WHERE facultyId='"+req.body.facultyId + "'";   
    }
    sql += 'AND ' + upd.join(' AND ');
    // for(var b in req.body){
    //     str=str+"\n"+b;
    // }
    console.log("The delete query is :" + sql);
    mysql.runRawQuery(sql, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        }
        if(!req.body.getParam)
            res.redirect(req.body.url);
        else
            res.redirect(req.body.url+"?fId="+req.body.getParam);
    });

});

module.exports = router;