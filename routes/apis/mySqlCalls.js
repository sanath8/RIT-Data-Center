var mysql = require('mysql');


var sqlObject = function() {
  this.connection = require('../../dbConnect').connectDB();
}

var mappingUrlTable = {'facultyQualification' : 'qualification','facultyServiceDetails': 'service'}

sqlObject.prototype.getWholeTable = function(callback,url){
  var sql = "select * from " + mappingUrlTable[url];
  var data;
  this.connection.query(sql,function(err,results,fields){
    console.log(results);
    callback(err, results);
  });
}

var object = new sqlObject();

module.exports = object;
