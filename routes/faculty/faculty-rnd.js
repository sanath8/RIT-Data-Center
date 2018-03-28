var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  if(!utility.checkSesssion(req, res)) return;
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;
    var result = { 
      funded_projects:[
         {            
          investigatorName: "hello"  ,
          projectTitle: "hello"  ,
          nameOfFundingAgent: "hello"  ,
          sanctionOrderNumber: "hello"  ,
          projectDuration: "hello"  ,
          dateSanctioned: "hello"  ,
          sanctionedAmount: "hello"                
         }
     ],
     faculty_patent:[
         {            
          patentTitle: "hello"  ,
          applicationNumber: "hello"  ,
          dateOfFilingApplication: "hello"  ,
          publicationDate: "hello"                
         }
     ],
     consultancy:[
         {            
          financialYear: "hello"  ,
          clientOrganization: "hello"  ,
          consultancyProjectTitle: "hello"  ,
          amountReceived: "hello"                
         }
     ],
     industrial_collaboration_mou:[
         {            
          mouTitle: "hello"  ,
          mouSignedWithIndustryOrGovt: "hello"  ,
          mouSigningDate: "hello"                
         }
     ]   
  };
    res.render('faculty/rnd-details', {type:"rnd-details", data:result});
  }
  sqlExecute.getFourTables(callback,'facultyFundedProjects', 'facultyPatents', 'consultancyDetails', 'industrialCollaborations');
});

module.exports=router;