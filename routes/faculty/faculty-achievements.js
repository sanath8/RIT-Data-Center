var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

router.get('/', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4, result5, result6, result7){
    if(err)
      throw err;
    // reportData[0] = result1;
    // reportData[1] = result2;
    // reportData[2] = result3;
    // reportData[3] = result4;
    // reportData[4] = result5;
    // reportData[5] = result6;
    // reportData[6] = result7;
    res.render('faculty/achievements', { type:"achievements", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4, resultSet5:result5, resultSet6:result6, resultSet7:result7});
  }
  sqlExecute.getAchievements(callback);
});


module.exports=router;