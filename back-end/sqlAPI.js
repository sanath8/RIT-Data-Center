//Import Modules
var mysql = require('mysql');
var dbConnection = require('../routes/apis/mySqlCalls');

//Establish connection
var con = dbConnection.connection;

var sqlQueryHandler = module.exports = {};
var sqlResults={};
sqlQueryHandler.query = "";
sqlQueryHandler.fetchResults = function(columns, tableName, whereOptions, callBack)
{
  try
  {
    sqlQueryHandler.query = "SELECT " + columns + " FROM " + tableName + " WHERE 1=1";
    for(var i = 0; i < whereOptions.length; i++)
    {
      sqlQueryHandler.query += " AND " + whereOptions[i];
    }
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err)
            throw err;
            //console.log(result);
          sqlResults = result;
          if(callBack != false)
            callBack(sqlResults);
    }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}
sqlQueryHandler.insertRow1 = function(columns, tableName, whereOptions, callBack)
{
  try
  {
    sqlQueryHandler.query = "SELECT " + columns + " FROM " + tableName + " WHERE 1=1";
    for(var i = 0; i < whereOptions.length; i++)
    {
      sqlQueryHandler.query += " AND " + whereOptions[i];
    }
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err)
            throw err;
            //console.log(result);
          sqlResults = result;
          if(callBack != false)
            callBack(sqlResults);
    }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}


sqlQueryHandler.insertRow = function(tableName, values)
{
  var length =values.length;
  try
  {
    sqlQueryHandler.query = "INSERT INTO " + tableName + " VALUES(" + values[0];
    for(var i = 0; i < values.length; i++)
    {
      sqlQueryHandler.query += " , " + values[i];
    }
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err)
            throw err;
            //console.log(result);
          sqlResults = result;
    }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}