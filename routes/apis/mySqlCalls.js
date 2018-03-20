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

sqlObject.prototype.getFacultyAchievements = function(callback){
  var sql = "select * from workshop_fdp";
  var sql1 = "select * from conference";
  var data;
  this.connection.query(sql,function(err,results){
    console.log(results);
    data = results;
  })
  this.connection.query(sql1,function(err,results){
    console.log(results);
    callback(err,data,results);
  })
  // this.connection.query(sql,function(err,results){
  //   console.log(results);
  //   this.connection = require('../../dbConnect').connectDB();
  //   this.connection.query(sql1,function(err,results1){
  //     console.log(results1);
  //     callback(err,results,results1);
  //   })
  // })

} 

var object = new sqlObject();

module.exports = object;
