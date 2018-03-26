var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

router.get('/', function(req, res, next) {
  var callback = function(err, result){
    if(err)
      throw err;
    console.log(result);
    // reportData[0] = result;
    res.render('faculty/service-details', {type:"service-details", resultSet:result});
  }
  sqlExecute.getWholeTable(callback,'facultyServiceDetails');
});



module.exports=router;