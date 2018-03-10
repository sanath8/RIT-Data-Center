var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  console.log("you just sent " + req.body.name);
  res.render('faculty/index', { title: 'Express' });
});

router.get('/login', function(req, res, next) {
  res.render('faculty/login', { title: 'Express' });
});

router.get('/personnal-info', function(req, res, next) {
  // document.getElementById('personnallist').className = "active";
  res.render('faculty/personnal-info', { title: 'Express' });
});

router.get('/service-details', function(req, res, next) {
  res.render('faculty/service-details', { title: 'Express' });
});


router.use('/init', require('./f-init'))

module.exports = router;
