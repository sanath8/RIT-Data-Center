var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

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
    res.render('faculty/qualification', {type:"qualification", resultSet:result});
  }
  sqlExecute.getWholeTable(callback,'facultyQualification');
});

router.get('/service-details', function(req, res, next) {
  var callback = function(err, result){
    if(err)
      throw err;
    console.log(result);
    res.render('faculty/service-details', {type:"service-details", resultSet:result});
  }
  sqlExecute.getWholeTable(callback,'facultyServiceDetails');
});

router.get('/academic-details', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;
    res.render('faculty/academic-details', {type:"academic-details", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4});
  }
  sqlExecute.getFourTables(callback,'facultyCourseHandled', 'facultyProjectGuided', 'facultyResearch', 'PhdScholar');
});

router.get('/rnd-details', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;
    res.render('faculty/rnd-details', {type:"rnd-details", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4});
  }
  sqlExecute.getFourTables(callback,'facultyFundedProjects', 'facultyPatents', 'consultancyDetails', 'industrialCollaborations');
});

router.get('/achievements', function(req, res, next) {
  var callback = function(err, result1, result2, result3, result4, result5, result6, result7){
    if(err)
      throw err;
    res.render('faculty/achievements', { type:"achievements", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4, resultSet5:result5, resultSet6:result6, resultSet7:result7});
  }
  sqlExecute.getAchievements(callback);
});

router.use('/init', require('./f-init'))

module.exports = router;
