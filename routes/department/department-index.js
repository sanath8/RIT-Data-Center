var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/student-info', function(req, res, next) {
  res.render('department/student-info', { title: 'Express' });
});

router.get('/infrastructure-details', function(req, res, next) {
  res.render('department/infrastructure-details', { title: 'Express' });
});

router.get('/activities', function(req, res, next) {
  res.render('department/activities', { title: 'Express' });
});

router.get('/admission-details', function(req, res, next) {
  res.render('department/admission-details', { title: 'Express' });
});

router.get('/bosboe', function(req, res, next) {
  res.render('department/bosboe', { title: 'Express' });
});

router.get('/:id', function(req, res, next) {
  res.render('department/index', { title: 'Express', departmentname: req.params.id });
});

module.exports = router;
