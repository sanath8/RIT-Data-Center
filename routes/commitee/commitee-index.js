var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/governance', function(req, res, next) {
  res.render('commitee/governance', { title: 'Express'});
});

router.get('/finance', function(req, res, next) {
  res.render('commitee/finance', { title: 'Express'});
});

router.get('/academic', function(req, res, next) {
  res.render('commitee/academic', { title: 'Express'});
});

module.exports = router;
