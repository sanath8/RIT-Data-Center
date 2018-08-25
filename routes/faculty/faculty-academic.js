var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');
var facultyPermissions = require('./faculty-permissions.js');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		auth = false;
		facultyId = req.query.fId;
	}


	var callback = function(err, data){
		if(err)
			throw err;
		var facultyID = req.session.facultyId;
		console.log("GetParam : " + req.session.facultyId);
		console.log("faculty id : " + facultyID);
		console.log(JSON.stringify(data));
		res.render('faculty/academic-details', {title : "Faculty Academic Details", type:"academic-details", data:data,
		index : { 
			url:"/faculty/academic-details",
			courses_handled:{ 
				facultyId : "facultyId",
				yearHandled : "yearHandled", 
				subjectName : "subjectName",
				ugOrPg :  "ugOrPg",
				labHandled :  "labHandled",                
			   }
		   ,
		   projects_handled:
			   {            
				facultyId : facultyId,
				batch : "batch",
				ugOrPg : "ugOrPg",
				projectTitle : 'projectTitle',               
			   }
		   ,
		   faculty_research:
			   {            
				slNo: "slNo",
				guideName: "guideName",
				researchCandidateName:"researchCandidateName",
				usn:'usn',
				centreName:'centreName',
				university:'university',
				registrationYear:'registrationYear',
				title:'title',
				status:'status',
				facultyId:facultyId       
			   }
		   ,
		   phd_scholar:
			   {            
				facultyId:facultyId,
				scholarName:'scholarName',
				guideName:'guideName',
				researchCentre:'researchCentre',
				university:'university',
				registrationYear:'registrationYear',
				usn:'usn',
				title:'title',
				status:'status'               
			   }
		      
		},
		hiddenFields:{
			courses_handled:{ 
				slNo: true,
				facultyId : true,
				yearHandled : false, 
				subjectName : false,
				ugOrPg :  false,
				labHandled :  false,                
			   }
		   ,
		   projects_handled:
			   {     
				slNo: true,       
				facultyId : true,
				batch : false,
				ugOrPg : false,
				projectTitle : false,               
			   }
		   ,
		   faculty_research:
			   {            
				slNo: true,
				guideName: false,
				researchCandidateName:false,
				usn:false,
				centreName:false,
				university:false,
				registrationYear:false,
				title:false,
				status:false,
				facultyId:true       
			   }
		   ,
		   phd_scholar:
			{ 
				slNo: true,           
				facultyId:true,
				scholarName:false,
				guideName:false,
				researchCentre:false,
				university:false,
				registrationYear:false,
				usn:false,
				title:false,
				status:false               
			}
		},
		GetParam: req.query.fId,
		/* tableNames : ["courses_handled", "projects_handled", "faculty_research", "phd_scholar"],
		columnSchema:[
			{
				facultyId : facultyID,
				yearHandled : "yearHandled", 
				subjectName : "subjectName",
				ugOrPg :  "ugOrPg",
				labHandled :  "labHandled",
			},
			{
				facultyId : facultyId,
				batch : "batch",
				ugOrPg : "ugOrPg",
				projectTitle : 'projectTitle',
			},
			{
				slNo: "slNo",
				guideName: "guideName",
				researchCandidateName:"researchCandidateName",
				usn:'usn',
				centreName:'centreName',
				university:'university',
				registrationYear:'registrationYear',
				title:'title',
				status:'status',
				facultyId:facultyId
			},
			{
				facultyId:facultyId,
				scholarName:'scholarName',
				guideName:'guideName',
				researchCentre:'researchCentre',
				university:'university',
				registrationYear:'registrationYear',
				usn:'usn',
				title:'title',
				status:'status'
			}
		], */
		authType:req.session.facultyId,
		departmentId:req.session.departmentId,
		insertPermission:facultyPermissions.insertPermission,
		updatePermission:facultyPermissions.updatePermission
	});
		
	}
	sqlExecute.getFaultyAcademics(facultyId, callback);
});


module.exports=router;