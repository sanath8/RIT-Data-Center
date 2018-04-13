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
		console.log(JSON.stringify(data));
		res.render('faculty/academic-details', {title : "Faculty Academic Details", type:"academic-details", data:data,
		index : { 
			url:"/faculty/academic-details",
			courses_handled:{ 
				yearHandled:"Year Handled"  ,
				subjectName:"Subject Name"  ,
				ugOrPg: "UG/PG" ,
				labHandled:"Lab Handled"                
			   }
		   ,
		   projects_handled:
			   {            
				batch:"Batch"  ,
				ugOrPg :"UG/Pg" ,
				projectTitle:"Project Title"                
			   }
		   ,
		   faculty_research:
			   {            
				guideName : "Guide Name" ,
				researchCandidateName : "Research Candidate" ,
				usn : "USN" ,
				centreName : "Centre Name" ,
				university : "University" ,
				registrationYear : "Registration Year" ,
				title : "Title" ,
				status :"Status"       
			   }
		   ,
		   phd_scholar:
			   {            
				scholarName : "Scholar Name" ,
				guideName : "Guide Name" ,
				researchCentre : "Research Centre" ,
				university : "University" ,
				registrationYear : "Registration Year" ,
				usn : "USN" ,
				title : "Title" ,
				status : "Status"               
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
	});
		
	}
	sqlExecute.getFaultyAcademics(facultyId, callback);
});


module.exports=router;