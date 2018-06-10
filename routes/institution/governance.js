var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

var institutionPermissions = require('./institution-permissions');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;

	//var departmentId;
	var auth = true;

	// if(!utility.checkGetParam(req,res)){
	// 	departmentId = req.session.departmentId;
	// }
	// else{
	// 	auth = false;
	// 	departmentId = req.query.fId;
	// }
	// to remove when department session is used
	departmentId = "cse";

	var callback = function(err, data){
		if(err)
			throw err;
		//var departmentID = req.session.departmentId;
		//console.log("GetParam : " + req.session.departmentId);
		//console.log("department id : " + departmentID);
		//console.log(JSON.stringify(data));
		var data = {
			governing_body: data
		}
		var authType = req.session.facultyId;
		console.log("in governance page of institution facultyID " + req.session.facultyId + " " + authType);
		
		res.render('institution/governance', {title : "Governing Body Details", type:"governance", data:data,
        
        GetParam: req.query.deptId,

		authType:authType,
		updatePermission:institutionPermissions.updatePermission, insertPermission:institutionPermissions.insertPermission
        });
		
	}
	sqlExecute.getGoverningBody(callback);
});


module.exports=router;