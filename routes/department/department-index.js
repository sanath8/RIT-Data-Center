var express = require('express');
var sqlApi = require('../../back-end/sqlAPI');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

/* GET home page. */
router.get('/student-info', function(req, res, next) {
  // var callback = function(err, result){
  //   if(err)
  //     throw err;
  //   res.render('department/student-info', {type:"student-info", data:{}});
  // }
  // sqlExecute.getTwoTables(callback, 'studentPublications', 'studentAchievements');
  res.render('department/student-info', {type:"student-info", data:{
    studentPublications: [],
    studentAchievements: []
  }, authType:req.session.facultyId});

});

router.get('/infrastructure-details', function(req, res, next) {
  // var callback = function(err, result1, result2){
  //   if(err)
  //     throw err;
  //   res.render('department/infrastructure-details', {type:"infrastructure-details", resultSet1:result1, resultSet2:result2});
  // }
  // sqlExecute.getTwoTables(callback, 'hardware', 'software');
  res.render('department/infrastructure-details', {type:"infrastructure-details", data:{
    hardware: [],
    software: []
  }, authType:req.session.facultyId});

});

router.get('/activities', function(req, res, next) {
  res.render('department/activities', { title: 'Express', type: 'activities', data:{}, authType:req.session.facultyId
});
});

router.get('/admission-details', function(req, res, next) {
  res.render('department/admission-details', { title: 'Express', type: 'admission-details', data:{}, authType:req.session.facultyId });
});

router.get('/bosboe', function(req, res, next) {
  res.render('department/bosboe', { title: 'Express', type:'bosboe', data:{}, authType:req.session.facultyId });
});

router.get('/:id', function(req, res, next) {
  var callback = function(err,result){
    if(err){
      throw err;
    }
    var data=[];
		for(var i=0;i<result.length;i++){
			var myR={};
      tresult=result[i];
      myR["Fid"] = tresult["facultyId"];
			myR["Name"]=tresult["facultyName"];
			myR["Gender"]=tresult["gender"];
			myR["Address"]=tresult["address"];
			myR["Nature of Appointment"]=tresult["natureOfAppointment"];
			myR["Contact No."]=tresult["contactNumber"];
			myR["Email Id"]=tresult["emailId"];
			data.push(myR);
    }
    var newResult = {'faculty' : data};
    res.render('department/index', { title: 'Express', departmentName: req.params.id, type:'index', data:newResult, authType:req.session.facultyId });
  }
  sqlExecute.getCseFacultyInfo(callback);
});

module.exports = router;
