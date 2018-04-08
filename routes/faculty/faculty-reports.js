var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  var callBack = function(result1){

    // reportData[0] = result1;
    // reportData[1] = result2;
    // reportData[2] = result3;
    // reportData[3] = result4;
    console.log(",sdnfknsdkf"+result1);
    //res.render('faculty/faculty-reports', {type : 'reports', selectList1 : result1, selectList2 : result2, selectList3 : result3, selectList4 : result4});
    res.render('faculty/faculty-reports', {type : 'reports', selectList1 : result1, GetParam:req.query.fId});

  }
  //sqlExecute.getFourSelectList(callback,'journalName', 'journalType', 'sjrQuartile', 'year', 'journalPaper');
  sqlExecute.getDataBaseTables('rit_data_center', callBack);

});


module.exports=router;
