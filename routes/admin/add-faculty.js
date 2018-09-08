var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
	utility.checkSesssion(req, res);
	var branchs = ['cse','is','it','bt','cv','te','phy','mat','mca','ml','ece','chy']
    if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		if(req.session.facultyId != "admin" && req.session.facultyId != "principal"){
			auth = false;
		}
		facultyId = req.query.fId;
	}
    if(facultyId !== 'admin'){
		res.redirect("/error/401");
		return;
	}
    res.render('admin/add-faculty', {type : 'add-faculty', GetParam: req.query.fId, authType:req.session.facultyId, departmentId:req.session.departmentId, GetParam:"dummy", branch:branchs });

module.exports=router;
