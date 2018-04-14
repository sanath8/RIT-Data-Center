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
    
    if(req.body.slNo){
        var sql = "DELETE FROM "+req.params.tableName+" WHERE slNo='"+req.body.slNo + "'";   
    }else if(req.body.facultyId){
        var sql = "DELETE FROM "+req.params.tableName+" WHERE facultyId='"+req.body.facultyId + "'";   
    }
    // for(var b in req.body){
    //     str=str+"\n"+b;
    // }

    mysql.runRawQuery(sql, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        }
        res.redirect(req.body.url);
    });

});

module.exports = router;