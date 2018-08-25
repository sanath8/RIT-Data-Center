var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.render('forgotPass', {type:"loginError", message:req.query.error });
});

module.exports = router;
