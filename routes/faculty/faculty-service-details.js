var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;
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
						
					 }
				});

	}
	sqlExecute.getFacultyService(req.session.facultyId, callback);
});



module.exports=router;