var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  var callBack = function(result1, result2, result3){

    res.render('faculty/faculty-reports', {type : 'reports', selectList1 : result1, selectList2 : result2});

  }
  sqlExecute.getTwoSelectList(callBack,'facultyName', 'faculty');
  //sqlExecute.getDataBaseTables('rit_data_center', callBack);

});


module.exports=router;
