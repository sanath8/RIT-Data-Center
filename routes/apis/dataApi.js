var express = require('express');

var sqlAPI = require('../../back-end/sqlAPI');
var sqlExecute = require('./mySqlCalls');
var router = express.Router();

router.post('/:tableName/', function(req, res, next){
    callBack = function(result){
        res.setHeader('Content-Type', 'application/json');
        res.send(result);
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }

    sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);

});

router.get('/:tableName/', function(req, res, next){
    var callback = function(err, result){
      if(err)
        throw err;
      console.log(result);
      res.setHeader('Content-Type', 'application/json');
      res.send(result);
    }
    sqlExecute.getWholeTable(callback, req.params.tableName);
});


module.exports = router;
