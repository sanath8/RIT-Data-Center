var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

router.get('/', function(req, res, next) {
  // document.getElementById('personnallist').className = "active";
  res.render('faculty/personnal-info', { title: 'Express', type:"personnal-info" });
});


module.exports=router;