var express = require('express');
var sqlApi = require('../../back-end/sqlAPI');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

/* GET home page. */
router.get('/student-info', function(req, res, next) {
    var publicationData = " ";
  res.render('department/student-info', { title: 'Express', type: 'student-info', publication : publicationData});
  var callback = function(err, result1, result2){
    if(err)
      throw err;
    res.render('department/student-info', {type:"student-info", resultSet1:result1, resultSet2:result2});
  }
  sqlExecute.getTwoTables(callback, 'studentPublications', 'studentAchievements');

});

router.get('/infrastructure-details', function(req, res, next) {
  var callback = function(err, result1, result2){
    if(err)
      throw err;
    res.render('department/infrastructure-details', {type:"infrastructure-details", resultSet1:result1, resultSet2:result2});
  }
  sqlExecute.getTwoTables(callback, 'hardware', 'software');
});

router.get('/activities', function(req, res, next) {
  res.render('department/activities', { title: 'Express', type: 'activities' });
});

router.get('/admission-details', function(req, res, next) {
  res.render('department/admission-details', { title: 'Express', type: 'admission-details' });
});

router.get('/bosboe', function(req, res, next) {
  res.render('department/bosboe', { title: 'Express', type:'bosboe' });
});

router.get('/:id', function(req, res, next) {
  res.render('department/index', { title: 'Express', departmentname: req.params.id, type:'index' });
});

module.exports = router;
