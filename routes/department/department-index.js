var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('department/index', { title: 'Express', departmentname: req.params.id });
});

router.get('/:id', function(req, res, next) {
  res.render('department/index', { title: 'Express', departmentname: req.params.id });
});

module.exports = router;
