//Import Modules
var mysql = require('mysql');
var dbConnection = require('./connectDB');

//Establish connection
var con = dbConnection.connectDB();

var sqlQueryFetcher = module.exports = {};
var sqlResults={};
sqlQueryFetcher.fetchResults = function(tableName)
{
  con.query("SELECT * FROM " + tableName, function (err, result, fields) {
    if (err)
      throw err;
    //console.log(result);
    sqlResults = result;

  });
  //console.log(sqlResults);
  return sqlResults;
}
