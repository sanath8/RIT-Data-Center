var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');

var reportData = [];
/* GET home page. */
router.get('/', function(req, res, next) {
  console.log("you just sent " + req.body.name);
  res.render('faculty/index', { title: 'Express', type:"dashboard", });
});

router.get('/login', function(req, res, next) {
  res.render('faculty/login', { title: 'Express', type:"login" });
});

router.get('/personnal-info', function(req, res, next) {
  // document.getElementById('personnallist').className = "active";
  res.render('faculty/personnal-info', { title: 'Express', type:"personnal-info" });
});

router.get('/qualification', function(req, res, next) {
  var callback = function(err, result){
    if(err)
      throw err;
    console.log(result);
    reportData[0] = result;
    res.render('faculty/qualification', {type:"qualification", resultSet:result});
  }
  sqlExecute.getWholeTable(callback,'facultyQualification');
});

router.get('/service-details', function(req, res, next) {
  var callback = function(err, result){
    if(err)
      throw err;
    console.log(result);
    reportData[0] = result;
    res.render('faculty/service-details', {type:"service-details", resultSet:result});
  }
  sqlExecute.getWholeTable(callback,'facultyServiceDetails');
});

router.get('/academic-details', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;
    reportData[0] = result1;
    reportData[1] = result2;
    reportData[2] = result3;
    reportData[3] = result4;
    res.render('faculty/academic-details', {type:"academic-details", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4});
  }
  sqlExecute.getFourTables(callback,'facultyCourseHandled', 'facultyProjectGuided', 'facultyResearch', 'PhdScholar');
});

router.get('/rnd-details', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;
    reportData[0] = result1;
    reportData[1] = result2;
    reportData[2] = result3;
    reportData[3] = result4;
    res.render('faculty/rnd-details', {type:"rnd-details", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4});
  }
  sqlExecute.getFourTables(callback,'facultyFundedProjects', 'facultyPatents', 'consultancyDetails', 'industrialCollaborations');
});

router.get('/achievements', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4, result5, result6, result7){
    if(err)
      throw err;
    reportData[0] = result1;
    reportData[1] = result2;
    reportData[2] = result3;
    reportData[3] = result4;
    reportData[4] = result5;
    reportData[5] = result6;
    reportData[6] = result7;
    res.render('faculty/achievements', { type:"achievements", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4, resultSet5:result5, resultSet6:result6, resultSet7:result7});
  }
  sqlExecute.getAchievements(callback);
});


router.get('/generateexcel/:facultyTable/:tableNo',function(req,res,next){
  console.log("this is " + req.params.facultyTable);
  generateexcel.getExcelSheet(reportData[req.params.tableNo - 1],req.params.facultyTable + ".xls",res);
})

router.use('/init', require('./f-init'))

module.exports = router;
