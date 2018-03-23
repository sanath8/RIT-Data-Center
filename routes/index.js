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

/*router.get('/data/:tableName/:columns', function(req, res, next){
    callback = function(result){
        res.setHeader('Content-Type', 'application/json');
        res.send(result);
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }
    console.log(req.params.columns.split(', '));
    sqlAPI.fetchResults(req.params.columns, req.params.tableName, '', callback);
});*/

router.post('/data/:tableName/', function(req, res, next){
    callback = function(result){
        res.setHeader('Content-Type', 'application/json');
        res.send(result);
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }
    console.log("body recieved" + JSON.stringify(req.body) + " " + req.body.schema);
    sqlAPI.fetchResults(req.body.schema, req.params.tableName, Array(req.body.whereOption), callback);
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

/*
router.get('/data/:tableName/:columns', function(req, res, next){
    callback = function(result){
        res.setHeader('Content-Type', 'application/json');
        res.send(result);
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }
    console.log(req.params.columns.split(', '));
    sqlAPI.fetchResults(req.params.columns, req.params.tableName, '', callback);
});*/

router.post('/update/:authority/:tableName/', function(req, res, next){
    //here authority is the id of the person making the edit. This way we can figure out whether the right person
    //is updating the database or not.
    callback = function(result){
        res.setHeader('Content-Type', 'text/plain');
        res.send(result).end();;
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }
    console.log(req.body);
    sqlAPI.updateResults(JSON.stringify(req.body), req.params.tableName, req.params.authority, callback);
});

module.exports = router;
