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
    console.log(result1);
    res.render('faculty/faculty-reports', {type : 'reports', selectList1 : result1, selectList2 : result2, selectList3 : result3, selectList4 : result4});
  }
  sqlExecute.getFourSelectList(callback,'journalName', 'journalType', 'sjrQuartile', 'year', 'journalPaper');

});


module.exports=router;