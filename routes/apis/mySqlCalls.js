var mysql = require('mysql');


var sqlObject = function() {
  this.connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'rit_data_center'   //has tobe changed later
  })

  this.connection.connect(function(err){
    if(err) throw error;
    else{
      console.log("connection established");
    }
  });
}

sqlObject.prototype.facultyQualification = function(){
  var sql = "select * from qualification";
  var data;
  this.connection.query(sql,function(err,results,fields){
    console.log(results);
    return results;
  });
  // // getDetails();
  // var sendDetails = function(getDetails){
  //   console.log(data + "data in the snd");
  //   return data;
  // }
  // sendDetails(getDetails);

}

var object = new sqlObject();

module.exports = object;
