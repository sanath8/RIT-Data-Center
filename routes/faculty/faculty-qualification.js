var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

router.get('/', function(req, res, next) {
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