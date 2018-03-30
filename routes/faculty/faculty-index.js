var express = require('express');
var router = express.Router();
var mysql = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');

/* GET home page. */
router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res))
		return;
	console.log("you just sent " + req.session.facultyId);
	// res.render('faculty/index', { title: 'Express', type:"dashboard",resultSet: [
	// 	{
	// 	facultyName:"Anita Kanavalli",
	// 	gender:"F",
	// 	address:"bengaluru",
	// 	religion:"Indian",
	// 	caste:"Indian",
	// 	category:"GM",
	// 	dob :"1968-03-23",
	// 	natureOfAppoment:"full time",
	// 	contactNumber:"9754567332",
	// 	emailId:"anitak@msrit.edu",
	// 	panNumber:"389479413",
	// 	accountNumber:"8769874243",
	// 	pfNumber:"65849213"
	// 	}
	// ] });

	var callback=function(err, result){
		if(err || result.length==0){
			res.redirect("/login");
			console.log("It reached in error");

			throw err;
		}

		console.log("Result  : "+result);

		var myR={};
		tresult=result[0];
		myR["Name"]=tresult["facultyName"];
		myR["Gender"]=(tresult["gender"]=="M")?"Male":"Female";
		myR["Address"]=tresult["address"];
		myR["religion"]=tresult["religion"];
		myR["Caste"]=tresult["caste"];
		myR["DOB"]=tresult["dob"];
		myR["Nature of Appointment"]=tresult["natureOfAppoment"];
		myR["Contact No."]=tresult["contactNumber"];
		myR["Email Id"]=tresult["emailId"];
		myR["PAN Number"]=tresult["panNumber"];
		myR["Account Number"]=tresult["accountNumber"];
		myR["PF Number"]=tresult["pfNumber"];

		var data=[myR];
		res.render('faculty/index', { title: 'Express', type:"dashboard",data: {faculty : data}});
		//res.send(JSON.stringify(result));
	}
	console.log("Param : "+req.session.email+":"+req.session.facultyId);
    mysql.getFacultyInfo(req.session.facultyId, callback);
});


router.use('/personnal-info', require('./faculty-porsonal-info'));

router.use('/qualification', require('./faculty-qualification'));

router.use('/service-details', require('./faculty-service-details'));

router.use('/academic-details', require('./faculty-academic'));

router.use('/rnd-details', require('./faculty-rnd'));

router.use('/achievements', require('./faculty-achievements'));

router.use('/faculty-reports', require('./faculty-reports'));

router.get('/generateexcel/:facultyTable/:tableNo',function(req,res,next){
  if(!utility.checkSesssion(req, res)) return;
  console.log("this is " + req.params.facultyTable);
  //generateexcel.getExcelSheet(reportData[req.params.tableNo - 1],req.params.facultyTable + ".xls",res);
})


module.exports = router;
