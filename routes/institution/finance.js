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
			finance_committee: data
		}
		
		res.render('institution/finance', {title : "Finance Committee", type:"finance", data:data,
        
        GetParam: req.query.deptId,

		authType:req.session.facultyId,
		updatePermission:institutionPermissions.updatePermission, insertPermission:institutionPermissions.insertPermission
        });
		
	}
	sqlExecute.getFinanceCommittee(callback);
});


module.exports=router;