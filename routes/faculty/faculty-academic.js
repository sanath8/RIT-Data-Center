var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  if(!utility.checkSesssion(req, res)) return;
  var callback = function(err, result1, result2, result3, result4){
    if(err)
      throw err;

    // res.render('faculty/academic-details', {type:"academic-details", resultSet1:result1, resultSet2:result2, resultSet3:result3, resultSet4:result4});
    var result = { 
      courses_handled:[
         {            
          yearHandled:1  ,
          subjectName:1  ,
          ugOrPg:1  ,
          labHandled:1                
         }
     ],
     projects_handled:[
         {            
          batch:1  ,
          ugOrPg:1 ,
          projectTitle:1                
         }
     ],
     faculty_research:[
         {            
          guideName:1  ,
          researchCandidateName:1  ,
          usn:1  ,
          centreName:1  ,
          university:1  ,
          registrationYear:1  ,
          title:1  ,
          status:1               
         }
     ],
     phd_scholar:[
         {            
          scholarName:1  ,
          guideName:1  ,
          researchCentre:1  ,
          university:1  ,
          registrationYear:1  ,
          usn:1  ,
          title:1  ,
          status:1                
         }
     ]   
  };
    res.render('faculty/academic-details', {type:"academic-details", data:result});
  }
  sqlExecute.getFourTables(callback,'facultyCourseHandled', 'facultyProjectGuided', 'facultyResearch', 'PhdScholar');
});


module.exports=router;