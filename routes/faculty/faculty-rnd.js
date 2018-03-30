var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;
	var callback = function(err, data){
		if(err)
			throw err;
		res.render('faculty/rnd-details', {title : "Faculty R&D Details", type:"rnd-details", data:data});
	}
	sqlExecute.getFaultyRND(req.session.facultyId, callback);
  
});

module.exports=router;