var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;
    // reportData[0] = result1;
    // reportData[1] = result2;
    // reportData[2] = result3;
    // reportData[3] = result4;
    res.render('faculty/academic-details', {type:"academic-details", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4});
  }
  sqlExecute.getFourTables(callback,'facultyCourseHandled', 'facultyProjectGuided', 'facultyResearch', 'PhdScholar');
});


module.exports=router;