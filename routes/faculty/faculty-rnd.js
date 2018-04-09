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
		res.render('faculty/rnd-details', {title : "Faculty R&D Details", type:"rnd-details", data:data,
			index : { 
				url:"/faculty/rnd-details",
				funded_projects:
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
			faculty_patent:
				{            
					patentTitle : "Patent Title" ,
					applicationNumber : "Application Number" ,
					dateOfFilingApplication : "Date of Filing Application" ,
					publicationDate : "Publication Date"                
				}
			,
			consultancy:
				{            
					financialYear : "Financial Year" ,
					clientOrganization : "Client Organization" ,
					consultancyProjectTitle : "Consultancy Project Title" ,
					amountReceived : "Amount Received"                
				}
			,
			industrial_collaboration_mou:
				{            
					mouTitle : "MOU Title" ,
					mouSignedWithIndustryOrGovt : "MOU Signed (Industry/Govt)" ,
					mouSigningDate : "MOU Sign Date"                
				}
			   
			},
		GetParam: req.query.fId
	});
	}
	sqlExecute.getFaultyRND(facultyId, callback);
  
});

module.exports=router;