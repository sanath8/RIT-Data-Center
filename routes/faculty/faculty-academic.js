var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

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
				facultyId : facultyID,
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
		authType:req.session.facultyId});
		
	}
	sqlExecute.getFaultyAcademics(facultyId, callback);
});


module.exports=router;