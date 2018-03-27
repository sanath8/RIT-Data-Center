var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');

/* GET home page. */
router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  console.log("you just sent " + req.body.name);
  res.render('faculty/index', { title: 'Express', type:"dashboard", });
});


router.use('/personnal-info', require('./faculty-porsonal-info'));

router.use('/qualification', require('./faculty-qualification'));

router.use('/service-details', require('./faculty-service-details'));

router.use('/academic-details', require('./faculty-academic'));

router.use('/rnd-details', require('./faculty-rnd'));

router.use('/achievements', require('./faculty-achievements'));

router.use('/reports', require('./faculty-reports'));


/*router.get('/generateexcel/:facultyTable/:tableNo',function(req,res,next){
  utility.checkSesssion(req, res);
  console.log("this is " + req.params.facultyTable);
  generateexcel.getExcelSheet(reportData[req.params.tableNo - 1],req.params.facultyTable + ".xls",res);
})*/

router.get('/generateexcel/:jsonObject',function(req,res,next){
  utility.checkSesssion(req, res);
  console.log("this is " + req.params.jsonObject);
  console.log(JSON.parse(req.params.jsonObject));
  generateexcel.getExcelSheet(JSON.parse(req.params.jsonObject),"Report.xls",res);
})

module.exports = router;
