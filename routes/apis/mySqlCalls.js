var mysql = require('mysql');


var sqlObject = function() {
  this.connection = require('../../dbConnect').connectDB();
}

sqlObject.prototype.facultyQualification = function(callback){
  var sql = "select * from qualification";
  var data;
  this.connection.query(sql,function(err,results,fields){
    console.log(results);
    callback(err, results);
  });
}

var object = new sqlObject();

module.exports = object;
