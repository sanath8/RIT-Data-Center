var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  var callback = function(err, result){
    if(err)
      throw err;
    console.log(result);
    //reportData[0] = result;
    res.render('faculty/qualification', {type:"qualification", resultSet:result});
  }
  sqlExecute.getWholeTable(callback,'facultyQualification');
});

module.exports=router;