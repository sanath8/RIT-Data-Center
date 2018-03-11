var express = require('express');
var router = express.Router();
var hodLogin = require('./hod-login')

/* GET home page. */

router.get('/index', function(req, res, next) {
  res.render('hod/index', { title: 'HOD Default Page' });
});

router.get('/login', function(req, res, next) {
  res.render('hod/login', { title: 'HOD Login' });
});

//this is the post that the user makes when he/she submits the credentials to login
router.post('/login', hodLogin.login);

router.get('/personal-info', function(req, res, next) {
  // document.getElementById('personnallist').className = "active";
  res.render('hod/personal-info', { title: 'personal Info' });
});

router.get('/service-details', function(req, res, next) {
  res.render('hod/service-details', { title: 'hod-service-details' });
});


//router.use('/init', require('./hod-init'))
module.exports = router;
