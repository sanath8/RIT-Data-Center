var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  // document.getElementById('personnallist').className = "active";
  res.render('faculty/personnal-info', { title: 'Express', type:"personnal-info" });
});


module.exports=router;