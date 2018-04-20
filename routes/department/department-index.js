var express = require('express');
var sqlApi = require('../../back-end/sqlAPI');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');

/* GET home page. */

router.use('/department-reports', require('./department-reports'));

router.get('/student-info', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  // var callback = function(err, result){
  //   if(err)
  //     throw err;
  //   res.render('department/student-info', {type:"student-info", data:{}});
  // }
  // sqlExecute.getTwoTables(callback, 'studentPublications', 'studentAchievements');
  res.render('department/student-info', { departmentId: departmentId, type:"student-info", data:{
    studentPublications: [],
    studentAchievements: []
  }, authType:req.session.facultyId});

});

router.get('/infrastructure-details', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  // var callback = function(err, result1, result2){
  //   if(err)
  //     throw err;
  //   res.render('department/infrastructure-details', {type:"infrastructure-details", resultSet1:result1, resultSet2:result2});
  // }
  // sqlExecute.getTwoTables(callback, 'hardware', 'software');
  res.render('department/infrastructure-details', { departmentId: departmentId, type:"infrastructure-details", data:{
    hardware: [],
    software: []
  }, authType:req.session.facultyId});

});

router.get('/activities', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  res.render('department/activities', { departmentId: departmentId, type: 'activities', data:{}, authType:req.session.facultyId
});
});

router.get('/admission-details', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  res.render('department/admission-details', { departmentId: departmentId, type: 'admission-details', data:{}, authType:req.session.facultyId });
});

router.get('/bosboe', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  res.render('department/bosboe', { departmentId: departmentId, type:'bosboe', data:{}, authType:req.session.facultyId });
});

router.get('/', function(req, res, next) {
  if(req.query.departmentId){
    var departmentId = req.query.departmentId;
  } else{
    var departmentId = req.session.departmentId;
  }
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
    res.render('department/index', {departmentId: departmentId, type:'index', data:newResult, authType:req.session.facultyId });
  }
  sqlExecute.getDepartmentFacultyInfo(callback,departmentId);
});

module.exports = router;
