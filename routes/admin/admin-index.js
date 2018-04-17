var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  console.log("you just sent " + req.body.name);
  res.render('admin/index', { title: 'Express', type:"dashboard", authType:'hod' });
});

router.get('/login', function(req, res, next) {
  res.render('admin/login', { title: 'Express', type:"login" });
});


module.exports = router;
