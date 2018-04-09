var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

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

	var callback = function(err, result){
		if(err)
			throw err;
		console.log(result);
		// reportData[0] = result;
		// res.render('faculty/service-details', {type:"service-details", resultSet:result});
		res.render('faculty/service-details', {title : "Faculty Service Details",
					type : "service-details",
					data : { 
						faculty_service:result
					},
					index : { 
						url:"/faculty/service-details",
						faculty_service:
							{
							 designation : "Designation" ,
							 qualification : "Qualification" ,
							 joiningDate : "Joining Date" ,
							 yearsOfExperience : "Years Of Exp." ,
							 promotionDate : "Promotion Date" ,
							 payScale : "Payscale" 
							}
						
					 },
				GetParam: req.query.fId
				});

	}
	sqlExecute.getFacultyService(facultyId, callback);
});



module.exports=router;