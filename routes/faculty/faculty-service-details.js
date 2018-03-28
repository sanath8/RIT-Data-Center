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
    res.render('faculty/service-details', {type:"service-details", data:{
      faculty:[
        {
         designation: "professor"  ,
         qualification: "MTech, PhD"  ,
         joiningDate: "1992-10-03" ,
         yearsOfExperience: "23"  ,
         promotionDate: "1998-12-06"  ,
         payScale: "45000-60000"
        }
    ]
    }

   });

  }
  sqlExecute.getWholeTable(callback,'facultyServiceDetails', req.session.email);
});



module.exports=router;