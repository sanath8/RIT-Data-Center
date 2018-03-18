var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/student-info', function(req, res, next) {
  res.render('department/student-info', { title: 'Express', type: 'student-info' });
});

router.get('/infrastructure-details', function(req, res, next) {
  res.render('department/infrastructure-details', { title: 'Express', type:'infrastructure-details' });
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
