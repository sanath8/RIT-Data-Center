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
		res.render('faculty/rnd-details', {title : "Faculty R&D Details", type:"rnd-details", data:data,
			index : { 
				url:"/faculty/rnd-details",
				funded_projects:
				{   
					facultyId : facultyID,         
					investigatorName : "Investigator Name" ,
					projectTitle  : "Project Title" ,
					nameOfFundingAgent : "Name of Funded Agent" ,
					sanctionOrderNumber : "Sanction Order Number" ,
					projectDuration : "Project Duration" ,
					dateSanctioned : "Date Sanctioned" ,
					sanctionedAmount : "Sanctioned Amount"                
				}
			,
			faculty_patent:
				{   
					facultyId : facultyID,            
					patentTitle : "Patent Title" ,
					applicationNumber : "Application Number" ,
					dateOfFilingApplication : "Date of Filing Application" ,
					publicationDate : "Publication Date"                
				}
			,
			consultancy:
				{   
					facultyId : facultyID,            
					financialYear : "Financial Year" ,
					clientOrganization : "Client Organization" ,
					consultancyProjectTitle : "Consultancy Project Title" ,
					amountReceived : "Amount Received"                
				}
			,
			industrial_collaboration_mou:
				{   
					facultyId : facultyID,            
					mouTitle : "MOU Title" ,
					mouSignedWithIndustryOrGovt : "MOU Signed (Industry/Govt)" ,
					mouSigningDate : "MOU Sign Date"                
				}
			   
			},
			hiddenFields:{
				funded_projects:
				{   
					facultyId : true,         
					investigatorName : false ,
					projectTitle  : false ,
					nameOfFundingAgent : false ,
					sanctionOrderNumber : false ,
					projectDuration : false ,
					dateSanctioned : false ,
					sanctionedAmount : false,
					slNo: true                
				}
			,
			faculty_patent:
				{   
					facultyId : true,            
					patentTitle : false ,
					applicationNumber : false ,
					dateOfFilingApplication : false ,
					publicationDate : false                
				}
			,
			consultancy:
				{   
					facultyId : true,            
					financialYear : false ,
					clientOrganization : false ,
					consultancyProjectTitle : false ,
					amountReceived : false, 
					slNo: true                
				}
			,
			industrial_collaboration_mou:
				{   
					facultyId : true,            
					mouTitle : false ,
					mouSignedWithIndustryOrGovt : false ,
					mouSigningDate : false ,
					slNo: true               
				}
			},
		GetParam: req.query.fId,
		/* tableNames:["funded_projects", "faculty_patent", "consultancy", "industrial_collaboration_mou"],
		columnSchema:[
				{            
					investigatorName : "Investigator Name" ,
					projectTitle  : "Project Title" ,
					nameOfFundingAgent : "Name of Funded Agent" ,
					sanctionOrderNumber : "Sanction Order Number" ,
					projectDuration : "Project Duration" ,
					dateSanctioned : "Date Sanctioned" ,
					sanctionedAmount : "Sanctioned Amount"                
				}
			,
				{            
					patentTitle : "Patent Title" ,
					applicationNumber : "Application Number" ,
					dateOfFilingApplication : "Date of Filing Application" ,
					publicationDate : "Publication Date"                
				}
			,
				{            
					financialYear : "Financial Year" ,
					clientOrganization : "Client Organization" ,
					consultancyProjectTitle : "Consultancy Project Title" ,
					amountReceived : "Amount Received"                
				}
			,
				{            
					mouTitle : "MOU Title" ,
					mouSignedWithIndustryOrGovt : "MOU Signed (Industry/Govt)" ,
					mouSigningDate : "MOU Sign Date"                
				}
			   
		], */
		authType:req.session.facultyId,
		departmentId:req.session.departmentId,
		insertPermission:facultyPermissions.insertPermission,
		updatePermission:facultyPermissions.updatePermission
	});
	}
	sqlExecute.getFaultyRND(facultyId, callback);
  
});

module.exports=router;