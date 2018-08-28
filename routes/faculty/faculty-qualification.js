var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

var facultyPermissions = require('./faculty-permissions.js');

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

	if(facultyId === 'admin' || facultyId === 'hod' || facultyId === 'coordinator' || facultyId === 'principal'){
		if((typeof req.param("fId") === 'undefined')){
			res.redirect("/error/401");
			return;
		}
	}

	//console.log("facultyId = " + facultyID);
	var callback = function(err, result){
		if(err)
			throw err;
		// var result object below tobe deleted 
		// console.log(JSON.stringify(result));
		var arr=[];
		var facultyID = req.session.facultyId;;
		for(var i in result){
			//console.log(i);
			var temp={
				slNo:result[i]["slNo"],
				facultyId:result[i]["facultyId"],
				degree:result[i]["degree"],
				university:result[i]["university"],
				passClass:result[i]["passClass"],
				passYear:result[i]["passYear"],
				areaOfSpecialization:result[i]["areaOfSpecialization"]
			};
			arr.push(temp);
		}

		res.render('faculty/qualification', {type:"qualification", data:{ faculty_qualification:arr},
				index : { 
					url:"/faculty/qualification",
       				faculty_qualification:
					{
						slNo: "Sl. No",
						facultyId : "facultyId",
						degree : "degree", 
						university : "university",
						passClass :  "passClass",
						passYear :  "passYear",
						areaOfSpecialization :  "areaOfSpecialization"
					}
				},
				hiddenFields:{
					faculty_qualification:
					{
						facultyId : { view: true, insert: true, update: true },
						degree : { view: false, insert: false, update: false }, 
						university : { view: false, insert: false, update: false },
						passClass :  { view: false, insert: false, update: false },
						passYear :  { view: false, insert: false, update: false },
						areaOfSpecialization :  { view: false, insert: false, update: false },
						slNo: { view: true, insert: true, update: true }
					}
				},
				GetParam:req.query.fId,
				authType:req.session.facultyId,
				departmentId:req.session.departmentId,
				insertPermission:facultyPermissions.insertPermission,
				updatePermission:facultyPermissions.updatePermission
			});
	}
	//sqlExecute.getWholeTable(callback,'facultyQualification', req.session.email);
	// console.log("Faculty ID : "+facultyId);
	sqlExecute.getFaultyQualification(facultyId, callback);
});

module.exports=router;