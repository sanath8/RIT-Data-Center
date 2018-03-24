var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');

/* GET home page. */
router.get('/', function(req, res, next) {
  console.log("you just sent " + req.body.name);
  res.render('faculty/index', { title: 'Express', type:"dashboard", });
});


router.use('/personnal-info', require('./faculty-porsonal-info'));

router.use('/qualification', require('./faculty-qualification'));

router.use('/service-details', require('./faculty-service-details'));

router.use('/academic-details', require('./faculty-academic'));

router.use('/rnd-details', require('./faculty-rnd'));

router.use('/achievements', require('./faculty-achievements'));

router.get('/generateexcel/:facultyTable/:tableNo',function(req,res,next){
  console.log("this is " + req.params.facultyTable);
  generateexcel.getExcelSheet(reportData[req.params.tableNo - 1],req.params.facultyTable + ".xls",res);
})


module.exports = router;
