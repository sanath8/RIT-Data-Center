var mysql = require('mysql');


var sqlObject = function() {
  this.connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'mysql12345',
    database: 'rit_data_center'   //has tobe changed later
  })

  this.connection.connect(function(err){
    if(err) throw err;
    else{
      console.log("connection established");
    }
  });
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
