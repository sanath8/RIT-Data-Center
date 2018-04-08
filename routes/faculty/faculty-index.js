var express = require('express');
var router = express.Router();
var mysql = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');

/* GET home page. */
router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res))
		return;
	var facultyId = req.session.facultyId;
	console.log("you just sent " + req.session.facultyId);

	var callback=function(err, result){
		if(err || result.length==0){
			res.redirect("/login");
			console.log("It reached in error");
			throw err;
		}

		console.log("Result  : "+result);

		var myR={};
		tresult=result[0];
		myR["facultyId"]=tresult["facultyId"];
		myR["Name"]=tresult["facultyName"];
		myR["Gender"]=tresult["gender"];
		myR["Address"]=tresult["address"];
		myR["religion"]=tresult["religion"];
		myR["Caste"]=tresult["caste"];
		myR["DOB"]=tresult["dob"];
		myR["Nature of Appointment"]=tresult["natureOfAppointment"];
		myR["Contact No."]=tresult["contactNumber"];
		myR["Email Id"]=tresult["emailId"];
		myR["PAN Number"]=tresult["panNumber"];
		myR["Account Number"]=tresult["accountNumber"];
		myR["PF Number"]=tresult["pfNumber"];
		var about = tresult["about"];
		var data=[myR];
		res.render('faculty/index', { title: 'Express', type:"dashboard",data: {faculty : data}, fId:facultyId, about:about});
		//res.send(JSON.stringify(result));
	}
	console.log("Param : "+req.session.email+":"+req.session.facultyId);
    mysql.getFacultyInfo(req.session.facultyId, callback);
});


router.use('/changeProfilePicture', require('./faculty-profile-pic'));

router.use('/personnal-info', require('./faculty-porsonal-info'));

router.use('/qualification', require('./faculty-qualification'));

router.use('/service-details', require('./faculty-service-details'));

router.use('/academic-details', require('./faculty-academic'));

router.use('/rnd-details', require('./faculty-rnd'));

router.use('/achievements', require('./faculty-achievements'));

router.use('/faculty-reports', require('./faculty-reports'));

router.get('/generateexcelTest/:jsonObject',function(req,res,next){
  utility.checkSesssion(req, res);
  console.log("this is " + req.params.jsonObject);
  console.log(JSON.parse(req.params.jsonObject));
  generateexcel.getExcelSheet(JSON.parse(req.params.jsonObject),"Report.xls",res)
  //res.redirect('/faculty/reports');
});

router.get('/generateexcel/:tableNo/:index',function(req,res,next){
  if(!utility.checkSesssion(req, res)) return;
  console.log("this is " + req.params.facultyTable);
  var map=["", "", "", "", "", "",""];
  var index = req.params.index;
  var fid = req.session.facultyId;
  var tableno = parseInt(req.params.tableNo)-1;
  var callback=function(err, result){
	if(index == 1 || index == 2 || index == 3){
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
	mysql.getFacultyInfo(fid,callback);
	map[0]="faculty_personal_details";
  }
  if(index == 2){
	mysql.getFaultyQualification(fid,callback);
	map[0]="faculty_qualification_details";
  }
  if(index == 3){
	  map[0] = "faculty_service_details";
	  mysql.getFacultyService(fid,callback);
  }
  if(index == 4){
	  map[0] = "faculty_workshop_fdp";
	  map[1] = "faculty_conference_symposia";
	  map[2] = "faculty_guest_lecture";
	  map[3] = "book";
	  map[4] = "book_chapter";
	  map[5] = "conference_paper";
	  map[6] = "journal_paper";
	  mysql.getFaultyAchievements(fid,callback);
  }
  if(index == 5){
	map[0] = "courses_handled";
	map[1] = "projects_handled";
	map[2] = "faculty_research";
	map[3] = "phd_scholar";
	  mysql.getFaultyAcademics(fid,callback);
  }
  if(index == 6){
	map[0] = "funded_projects";
	map[1] = "faculty_patent";
	map[2] = "consultancy";
	map[3] = "industrial_collaboration_mou";
	  mysql.getFaultyRND(fid,callback);
  }
});

module.exports = router;