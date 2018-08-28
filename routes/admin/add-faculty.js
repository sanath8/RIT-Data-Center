var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
    utility.checkSesssion(req, res);
    if(facultyId !== 'admin'){
		res.redirect("/error/401");
		return;
	}
    res.render('admin/add-faculty', {type : 'add-faculty', GetParam: req.query.fId, authType:req.session.facultyId, departmentId:req.session.departmentId, GetParam:"dummy" });
})

module.exports=router;
