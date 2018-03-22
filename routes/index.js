var express = require('express');
var router = express.Router();
var extractExcel = require('../back-end/excelExtract');
var sqlAPI = require('../back-end/sqlAPI');
var sqlExecute = require('./apis/mySqlCalls');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/excelExtract', function(req,res,next){
  var path = './back-end/excelSheets/service.xlsx';
  extractExcel(path);
  res.render('index2');
});

//RESTful API to get information
router.get('/data/:tableName/:columnName', function(req, res, next){
    callback = function(result){
        res.setHeader('Content-Type', 'application/json');
        res.send(result);
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }
    sqlAPI.fetchResults(req.params.columnName, req.params.tableName, '', callback);
});

router.get('/data/:tableName/', function(req, res, next){
    var callback = function(err, result){
      if(err)
        throw err;
      console.log(result);
      res.setHeader('Content-Type', 'application/json');
      res.send(result);
    }
    sqlExecute.getWholeTable(callback, req.params.tableName);
});

module.exports = router;
