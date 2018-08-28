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

	if(facultyId === 'admin' || facultyId === 'hod' || facultyId === 'coordinator' || facultyId === 'principal'){
		if((typeof req.param("fId") === 'undefined')){
			res.redirect("/error/401");
			return;
		}
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
					facultyId : { view: true, insert: true, update: true },         
					investigatorName : { view: false, insert: false, update: false } ,
					projectTitle  : { view: false, insert: false, update: false } ,
					nameOfFundingAgent : { view: false, insert: false, update: false } ,
					sanctionOrderNumber : { view: false, insert: false, update: false } ,
					projectDuration : { view: false, insert: false, update: false } ,
					dateSanctioned : { view: false, insert: false, update: false } ,
					sanctionedAmount : { view: false, insert: false, update: false },
					slNo: { view: true, insert: true, update: true }                
				}
			,
			faculty_patent:
				{   
					facultyId : { view: true, insert: true, update: true },            
					patentTitle : { view: false, insert: false, update: false } ,
					applicationNumber : { view: false, insert: false, update: false } ,
					dateOfFilingApplication : { view: false, insert: false, update: false } ,
					publicationDate : { view: false, insert: false, update: false } ,
					slNo: { view: true, insert: true, update: true }               
				}
			,
			consultancy:
				{   
					facultyId : { view: true, insert: true, update: true },            
					financialYear : { view: false, insert: false, update: false } ,
					clientOrganization : { view: false, insert: false, update: false } ,
					consultancyProjectTitle : { view: false, insert: false, update: false } ,
					amountReceived : { view: false, insert: false, update: false }, 
					slNo: { view: true, insert: true, update: true }                
				}
			,
			industrial_collaboration_mou:
				{   
					facultyId : { view: true, insert: true, update: true },            
					mouTitle : { view: false, insert: false, update: false } ,
					mouSignedWithIndustryOrGovt : { view: false, insert: false, update: false } ,
					mouSigningDate : { view: false, insert: false, update: false } ,
					slNo: { view: true, insert: true, update: true }               
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