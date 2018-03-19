var express = require('express');
var router = express.Router();
var extractExcel = require('../back-end/excelExtract');
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/excelExtract', function(req,res,next){
  var path = './back-end/excelSheets/service.xlsx';
  extractExcel(path);
  res.render('index2');
})

module.exports = router;
