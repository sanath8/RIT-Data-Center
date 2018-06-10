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

	var callback = function(err1, err2, data1, data2){
		if(err1)
			throw err1;
		if(err2)
			throw err2;
		//var departmentID = req.session.departmentId;
		//console.log("GetParam : " + req.session.departmentId);
		//console.log("department id : " + departmentID);
		var data = {
			academic_council: data1
		}

		var facultyID = req.session.facultyId;;

		console.log(JSON.stringify(data));
		console.log("Here is academics page of institution facultyId " + req.session.facultyID);
		res.render('institution/academic', {title : "Academic Council Details", type:"academic", data:data,
        
        GetParam: req.query.deptId,

		authType:req.session.facultyId,
		updatePermission:institutionPermissions.updatePermission, insertPermission:institutionPermissions.insertPermission,
		index : { 
			url:"/institution/academic",
			academic_council:
			{
				facultyId : facultyID,
				slNo : "Sl. No", 
				name : "Name",
				category :  "Category",
				address :  "Address",
				status :  "Status",
				instituteName:'institution Name'
			}
		},
		hiddenFields:{
			academic_council:
			{
				facultyId : true,
				slNo : false, 
				name : false,
				category :  false,
				address :  false,
				status :  false,
				instituteName:true
			}
		},
		additional_data:{
			instituteName:data2
		}	
	});
		
	}
	sqlExecute.getAcademicCouncil(callback);
});


module.exports=router;