var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

/* GET home page. */
router.get('/', function(req, res, next) {
  console.log("you just sent " + req.body.name);
  res.render('faculty/index', { title: 'Express', type:"dashboard" });
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
  res.render('faculty/academic-details', { title: 'Express' , type:"academic-details"});
});

router.get('/rnd-details', function(req, res, next) {
  res.render('faculty/rnd-details', { title: 'Express', type:"rnd-details" });
});

router.get('/achievements', function(req, res, next) {
  res.render('faculty/achievements'  , { title: 'Express', type:"achievements" });
});

router.use('/init', require('./f-init'))

module.exports = router;
