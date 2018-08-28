var express = require('express');
var router = express.Router();
var mysql = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');
var facultyPermissions = require('./faculty-permissions.js');
/* GET home page. */
router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res))
		return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		if(req.session.facultyId != "admin" && req.session.facultyId != "principal"){
			auth = false;
		}
		facultyId = req.query.fId;
	}

// //just for experimentation below code
// 	globalvar.checkGet(req,res);
// 	facultyId = globalvar.facultyId;

	var callback=function(err, result){
		if(err || result.length==0){
			res.redirect("/login");
			console.log("It reached in error");
			//throw err;
		}

		console.log("Result  : "+result);

		var myR={};
		tresult=result[0];
		myR["facultyId"]=tresult["facultyId"];
		myR["facultyName"]=tresult["facultyName"];
		myR["gender"]=tresult["gender"];
		myR["designation"]=tresult["designation"];
		if(auth == true){
			myR["address"]=tresult["address"];
			myR["religion"]=tresult["religion"];
			myR["caste"]=tresult["caste"];
		}
		myR["dob"]=tresult["dob"];
		myR["natureOfAppointment"]=tresult["natureOfAppointment"];
		myR["contactNumber"]=tresult["contactNumber"];
		myR["emailId"]=tresult["emailId"];
		if(auth == true){
			myR["panNumber"]=tresult["panNumber"];
			myR["accountNumber"]=tresult["accountNumber"];
			myR["pfNumber"]=tresult["pfNumber"];
		}
		myR['about'] = tresult['about']
		var about = tresult["about"];
		var data=[myR];
		var facultyID = req.session.facultyId;
		// var departmentId = tresult["departmentId"];
		console.log("myR" + JSON.stringify(myR));

		res.render('faculty/index', { title: 'Express', type:"dashboard", data : {faculty:data},
			index:{
				url:"/faculty/",
				faculty:{
					facultyId:facultyID,
					facultyName:"facultyName",
					gender:"gender",
					address:"address",
					religion:"religion",
					caste:"caste",
					dob:"dob",
					designation: "Designation",
					natureOfAppointment:"Nature Of Appointment",
					contactNumber:"Contact No.",
					emailId:"Email Id",
					panNumber:"PAN Number",
					accountNumber:"Account Number",
					pfNumber:"PF Number",
					about : "About"
				}
			},
			hiddenFields:{
				faculty:{
					facultyId:{ view: true, insert: true, update: true } ,
					designation: { view: false, insert: false, update: false },
					facultyName:{ view: false, insert: false, update: false },
					gender:{ view: false, insert: false, update: false },
					address:{ view: false, insert: false, update: false },
					religion:{ view: false, insert: false, update: false },
					caste:{ view: false, insert: false, update: false },
					dob:{ view: false, insert: false, update: false },
					natureOfAppointment:{ view: false, insert: false, update: false },
					contactNumber:{ view: false, insert: false, update: false },
					emailId:{ view: false, insert: false, update: true },
					panNumber:{ view: false, insert: false, update: false },
					accountNumber:{ view: false, insert: false, update: false },
					pfNumber:{ view: false, insert: false, update: false },
					about : { view: false, insert: false, update: false },
					slNo: { view: true, insert: true, update: true }
				}
			},
			fId:facultyId, about:about, GetParam:req.query.fId, authType:req.session.facultyId, departmentId:req.session.departmentId,
			insertPermission:facultyPermissions.insertPermission,
			updatePermission:facultyPermissions.updatePermission
		});
		//res.send(JSON.stringify(result));
	}
	// console.log("Param : "+req.session.email+":"+req.session.facultyId);
    mysql.getFacultyInfo(facultyId, callback);
});


router.use('/changeProfilePicture', require('./faculty-profile-pic'));

router.use('/qualification', require('./faculty-qualification'));

router.use('/service-details', require('./faculty-service-details'));

router.use('/academic-details', require('./faculty-academic'));

router.use('/rnd-details', require('./faculty-rnd'));

router.use('/achievements', require('./faculty-achievements'));

router.post('/generateexcelTest/',function(req,res,next){
  utility.checkSesssion(req, res);
  console.log("this is " + req.params.jsonObject);
  console.log("parsing" + JSON.parse(req.params.jsonObject));
  generateexcel.getExcelSheet(JSON.parse(req.params.jsonObject),"Report.xls",res)
  //res.redirect('/faculty/reports');
});

router.get('/getExcel', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');

	utility.checkSesssion(req, res);
	  console.log('here')
	    var query = req.cookies['query'];
			console.log("Here is my query:" + query);

	    callBack = function(result)
			{
	        generateexcel.getExcelSheet(result, "Report.xls", res);
	    }
	    console.log(Array(req.body.whereOption));
	    mysql.executeDirectQuery(query, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

});



router.get('/generateexcel/:tableNo/:index/',function(req,res,next){
  if(!utility.checkSesssion(req, res)) return;
  console.log("this is " + req.params.facultyTable);
  var map=["", "", "", "", "", "",""];
  var index = req.params.index;
  if(req.query.faculty){
	  var fid = req.query.faculty;
  } else{
	  var fid = req.session.facultyId;
  }

  var tableno = parseInt(req.params.tableNo)-1;
  var callback=function(err, result){
	if(index == 1 || index == 2 || index == 3){
		generateexcel.getExcelSheet(result,map[tableno] + ".xls",res);
	} else{
		generateexcel.getExcelSheet(result[map[tableno]],map[tableno]+ ".xls",res);
	}
	if(err || result.length==0){
		console.log("It reached in error");
		//throw err;
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
