var express = require('express');
var sqlApi = require('../../back-end/sqlAPI');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');

var departmentPermissions = require('./department-permissions');

/* GET home page. */

router.use('/department-reports', require('./department-reports'));

router.get('/student-info', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var callback = function(err, result){
    if(err)
      throw err;
      var studentAchievement = [];
      var studentAchieve = result.student_achievement;
      for(var i=0; i<studentAchieve.length; i++){
        var individualEntry = {
          studentName: studentAchieve[i].studentName,
          eventName: studentAchieve[i].eventName,
          date: studentAchieve[i].date,
          award: studentAchieve[i].award,
          category: studentAchieve[i].category };
        studentAchievement.push(individualEntry);
      } 
      var studentActivites = [];
      var studentActivity = result.student_activities;
      for(var i=0; i<studentActivity.length; i++){
        var individualEntry = {
          studentName: studentActivity[i].studentName,
          eventName: studentActivity[i].eventName,
          date: studentActivity[i].date,
          industryOrOrganization: studentActivity[i].industryOrOrganization,
          category: studentActivity[i].category
         };
         studentActivites.push(individualEntry);
      }
      var studentPublication = [];
      var studentpublic = result.student_publication;
      for(var i=0; i<studentpublic.length; i++){
        var individualEntry = {
          authors: studentpublic[i].authors,
          title: studentpublic[i].title,
          date: studentpublic[i].date,
          conferenceOrJournal: studentpublic[i].conferenceOrJournal,
          place: studentpublic[i].place
        };
        studentPublication.push(individualEntry);
      }
      console.log(studentAchievement);
      console.log(studentPublication);
      console.log(studentActivites);
      res.render('department/student-info', { departmentId: departmentId, type:"student-info",
       data:{student_activities:studentActivites,student_achievement:studentAchievement,student_publication:studentPublication},
       authType:req.session.facultyId, GetParam:req.query.departmentId,
        insertPermission:departmentPermissions.insertPermission,
        updatePermission:departmentPermissions.updatePermission
      });
  }
  sqlExecute.getStudentInformation(callback, departmentId);
});

router.get('/infrastructure-details', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var callback = function(err, result){
    if(err)
      throw err;

      var hardware = [];
      var hardwareTemp = result.hardware;
      for(var i=0; i<hardwareTemp.length; i++){
        var entry = {
          slNo: hardwareTemp[i].slNo,
          labName: hardwareTemp[i].labName,
          carpetArea: hardwareTemp[i].carpetArea,
          majorEquipments: hardwareTemp[i].majorEquipments,
          totalInvestment: hardwareTemp[i].totalInvestment
        }
        hardware.push(entry);
      }

      var software = [];
      var softwareTemp = result.software;
      for(var i=0; i<softwareTemp.length; i++){
        var entry = {
          slNo: softwareTemp[i].slNo,
          softwareName: softwareTemp[i].softwareName,
          licenseNumber: softwareTemp[i].licenseNumber,
          noOfUsers: softwareTemp[i].noOfUsers,
          expiryDate: softwareTemp[i].expiryDate,
          vendorName: softwareTemp[i].vendorName
        }
        software.push(entry);
      }

      console.log(result);
      res.render('department/infrastructure-details', { departmentId: departmentId, type:"infrastructure-details",
      data:{"hardware":hardware,"software":software}, authType:req.session.facultyId, GetParam:req.query.departmentId,
      insertPermission:departmentPermissions.insertPermission,
      updatePermission:departmentPermissions.updatePermission });
   }
  sqlExecute.getInfrastructureDetails(callback, departmentId);
});

router.get('/activities', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }

  var callback = function(error, result){
    console.log(result);

    var industrialVisit = [];
    var industrial = result.industrial_visit;
    for(var i=0;i<industrial.length;i++){
      var singleEntry = {
       industryName: industrial[i].industryName,
       scheduleDate: industrial[i].scheduleDate,
      }
      industrialVisit.push(singleEntry);
    }

    var invitedGuestLectures = [];
    var invited = result.guest_lectures_invited;
    for(var i=0;i<invited.length;i++){
      var singleEntry = {
        guestName: invited[i].guestName,
        expertOrganisationOrAddress: invited[i].expertOrganisationOrAddress,
        title: invited[i].title,
        areaOfSpecialization: invited[i].areaOfSpecialization,
        date: invited[i].date
      }
      invitedGuestLectures.push(singleEntry);
    }

    var seminarWorkshop = [];
    var seminar = result.seminar_workshop;
    for(var i=0;i<seminar.length;i++){
      var singleEntry = {
        startDate: seminar[i].startDate,
        endDate: seminar[i].endDate,
        title: seminar[i].title,
        event: seminar[i].event,
        broadArea: seminar[i].broadArea
      }
      seminarWorkshop.push(singleEntry);
    }
      res.render('department/activities', { departmentId: departmentId, type: 'activities',
      data:{industrial_visit:industrialVisit, guest_lectures_invited:invitedGuestLectures, seminar_workshop:seminarWorkshop},
      authType:req.session.facultyId, GetParam:req.query.departmentId,
      insertPermission:departmentPermissions.insertPermission,
      updatePermission:departmentPermissions.updatePermission
  });
  }
  sqlExecute.getDepartmentActivities(callback, departmentId);
});

router.get('/admission-details', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }



  var callback = function(error, result){
    console.log(result);
    var admission = []
    var admissionSpcific = result.admissions;
    for(var i=0; i<admissionSpcific.length; i++){
      var singleEntry = {
        year: admissionSpcific[i].year,
        noOfUgStudents: admissionSpcific[i].noOfUgStudents,
        noOfPgStudents: admissionSpcific[i].noOfPgStudents,
        noOfPgStudentsWithGateScore: admissionSpcific[i].noOfPgStudentsWithGateScore,
        ugCet: admissionSpcific[i].ugCet,
        ugComedK: admissionSpcific[i].ugComedK,
        pgCet: admissionSpcific[i].pgCet,
        pgComedK: admissionSpcific[i].pgComedK,
        lateralEntry: admissionSpcific[i].lateralEntry,
        fullTimePhd: admissionSpcific[i].fullTimePhd,
        partTimePhd: admissionSpcific[i].partTimePhd,
        mscByResearch: admissionSpcific[i].mscByResearch
       }
       admission.push(singleEntry);
    }
    res.render('department/admission-details', { departmentId: departmentId, type: 'admission-details',
      data:{admission: admission},
      authType:req.session.facultyId, GetParam:req.query.departmentId,
      insertPermission:departmentPermissions.insertPermission,
      updatePermission:departmentPermissions.updatePermission  });
    }

  sqlExecute.getAdmissionDetails(callback, departmentId);
});

router.get('/bosboe', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }

  var callback = function(error, result){
    console.log(result);
    var professionalActivities = [];
    var professional = result.professional_activities;
    for(var i=0;i<professional.length;i++){
      var singleEntry = {
        slNo: professional[i].slNo,
        facultyName: professional[i].facultyId,
        board: professional[i].board,
        college: professional[i].college,
        externalOrInternal: professional[i].externalOrInternal,
        year: professional[i].year
      }
      professionalActivities.push(singleEntry);
    }

    var otherMembership = [];
    var other = result.other_membership;
    for(var i=0;i<other.length;i++){
      var singleEntry = {
        slNo: other[i].slNo,
        facultyName: other[i].facultyName,
        contributionType: other[i].contributionType,
        year: other[i].year,
        internalOrExternal: other[i].internalOrExternal
      }
      otherMembership.push(singleEntry);
    }

    var professionalbodyMembership = [];
    var profess = result.professional_body_membership;
    for(var i=0;i<profess.length;i++){
      var singleEntry = {
        slNo: profess[i].slNo,
        facultyName: profess[i].facultyName,
        professionalBodyName: profess[i].professionalBodyName,
        membershipType: profess[i].membershipType,
        subscriptionYear: profess[i].subscriptionYear
      }
      professionalbodyMembership.push(singleEntry);
    }

    res.render('department/bosboe', { departmentId: departmentId, type:'bosboe',
    data:{professional_activities:professionalActivities, other_membership: otherMembership, professional_body_membership: professionalbodyMembership},
    authType:req.session.facultyId , GetParam:req.query.departmentId,
    insertPermission:departmentPermissions.insertPermission,
    updatePermission:departmentPermissions.updatePermission });
  }

  sqlExecute.getBosBoeDetails(callback, departmentId);
});

router.get('/getExcel', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');

	utility.checkSesssion(req, res);
	  console.log('here');
	    var query = req.cookies['query'];
			console.log("Here is my query:" + query);

	    var callBack = function(result)
			{
	        generateexcel.getExcelSheet(result, "Report.xls", res);
	    }
	    console.log(Array(req.body.whereOption));
	    sqlExecute.executeDirectQuery(query, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

});

router.get('/getSummary/:tableName/:from/:to/:departmentId/:type', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');
	utility.checkSesssion(req, res);
  console.log('here');
  console.log("years"+ req.params.from+" "+req.params.to);
  var tableName = req.params.tableName;


    var callBack = function(result)
		{
        generateexcel.getExcelSheet(result, "Report.xls", res);
    }
    sqlExecute.executeSummaryQuery(tableName, req.params.from, req.params.to,req.params.departmentId, req.params.type, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

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
    res.render('department/index', {departmentId: departmentId, type:'index', data:{departmentGeneralInfo:newResult['faculty']},
    index:{
      url:"/faculty/",
      departmentGeneralInfo:{
        facultyName:"facultyName",
        gender:"gender",
        address:"address",
        atureOfAppointment:"Nature Of Appointment",
        contactNumber:"Contact No.",
        emailId:"Email Id"
      }
    },
    authType:req.session.facultyId, GetParam:req.query.departmentId,
    insertPermission:departmentPermissions.insertPermission,
    updatePermission:departmentPermissions.updatePermission
  });
  }
  sqlExecute.getDepartmentFacultyInfo(callback,departmentId);
});

router.get('/generateexcel/:tableNo/:index/',function(req,res,next){
  if(!utility.checkSesssion(req, res)) return;
  console.log("this is " + req.params.facultyTable);
  var map=["", "", "", "", "", "",""];
  var index = req.params.index;
  if(req.query.departmentId){
	  var dId = req.query.departmentId;
  } else{
	  var dId = req.session.departmentId;
  }

  var tableno = parseInt(req.params.tableNo)-1;
  var callback=function(err, result){
	if(index == 1){
		generateexcel.getExcelSheet(result,map[tableno] + ".xls",res);
	} else{
		generateexcel.getExcelSheet(result[map[tableno]],map[tableno]+ ".xls",res);
	}
	if(err || result.length==0){
		console.log("It reached in error");
		throw err;
	}
	}

  if(index == 1){
	sqlExecute.getDepartmentFacultyInfo(callback,dId);
	map[0]="department_faculty_details";
  }
  if(index == 2){
	sqlExecute.getStudentInformation(callback,dId);
  map[0]="student_achievement";
  map[1]= "student_activities";
  map[2]= "student_publication";
}
  if(index == 3){
    map[0] = "hardware";
    map[1] = "software";
	  sqlExecute.getInfrastructureDetails(callback,dId);
  }
  if(index == 4){
	  map[0] = "admissions";
	  sqlExecute.getAdmissionDetails(callback,dId);
  }
  if(index == 5){
	map[0] = "industrial_visit";
	map[1] = "guest_lectures_invited";
	map[2] = "seminar_workshop";
	  sqlExecute.getDepartmentActivities(callback, dId);
  }
  if(index == 6){
	map[0] = "professional_activities";
	map[1] = "professional_body_membership";
	map[2] = "other_membership";
	  sqlExecute.getBosBoeDetails(callback, dId);
  }
});


module.exports = router;
