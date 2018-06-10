var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');
var generateexcel = require('../../back-end/excelGenerator');
var institutionPermissions = require('./institution-permissions');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;

	//var departmentId;
	var auth = true;

	// if(!utility.checkGetParam(req,res)){
	// 	departmentId = req.session.departmentId;
	// }
	// else{
	// 	auth = false;
	// 	departmentId = req.query.fId;
	// }
	// to remove when department session is used
	departmentId = req.session.departmentId;

	var callback = function(err, data){
		if(err)
			throw err;
		//var departmentID = req.session.departmentId;
		//console.log("GetParam : " + req.session.departmentId);
		//console.log("department id : " + departmentID);
		//console.log(JSON.stringify(data));
		var data = {
			governing_body: data
		}

		console.log("in governance page of institution facultyID " + req.session.facultyId);
		res.render('institution/governance', {title : "Governing Body Details", type:"governance", data:data,

        GetParam: req.query.deptId,

		authType:req.session.facultyId,
		updatePermission:institutionPermissions.updatePermission, insertPermission:institutionPermissions.insertPermission
        });

	}
	sqlExecute.getGoverningBody(callback);
});

router.get('/generateexcel/:tableName',function(req,res,next)
{
  var callBack = function(result)
  {
      generateexcel.getExcelSheet(result, "Report.xls", res);
  }
  console.log(Array(req.body.whereOption));
  sqlExecute.executeDirectQuery("select * from " + req.params.tableName, callBack);
});



module.exports=router;
