var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  if(!utility.checkSesssion(req, res)) return;
  var callback = function(err, result){
    if(err)
      throw err;
    // var result object below tobe deleted 
    var result = { 
      faculty:[
          {
           type: "BE",
           university:"Ramaiah",
           passPercentage:85,
           passYear:1997,
          },
          {
           type: "Mtech",
           university:"Ramiah",
           passPercentage:50,
           passYear:1990,
          },
          {
           type: "Phd",
           university:"Ramiah",
           awardYear:2000,
           areaOfSpecialization:"Machine learning"
          }
      ]   
   };
   var properResult = {};
   if(result.faculty[0]){
     properResult["Type"] = result.faculty[0].type;
     properResult["University"] = result.faculty[0].university;
     properResult["Pass Percentage"] = result.faculty[0].passPercentage;
     properResult["Pass Year"] = result.faculty[0].passYear;
   }
   var properResult3 = {};
   if(result.faculty[1]){
     properResult3["Type"] = result.faculty[1].type;
     properResult3["University"] = result.faculty[1].university;
     properResult3["Pass Percentage"] = result.faculty[1].passPercentage;
     properResult3["Pass Year"] = result.faculty[1].passYear;
   }
   var properResult4 = {};
   if(result.faculty[2]){
     properResult4["Type"] = result.faculty[2].type;
     properResult4["University"] = result.faculty[2].university;
     properResult4["Award Year"] = result.faculty[2].awardYear;
     properResult4["Area Of Specialization"] = result.faculty[2].areaOfSpecialization;
   }
   var properResult1 = [properResult,properResult3,properResult4];
   console.log(properResult1);
   var properResult2 = {};
   properResult2["faculty"] = properResult1;
    res.render('faculty/qualification', {type:"qualification", data:properResult2});
  }
  //sqlExecute.getWholeTable(callback,'facultyQualification', req.session.email);
  sqlExecute.getFaultyQualification(req.session.facultyId, callback);
});

module.exports=router;