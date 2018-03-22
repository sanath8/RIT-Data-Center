//Import Modules
var mysql = require('mysql');
var dbConnection = require('../routes/apis/mySqlCalls');
var mappingUrl = require('./mappingUrlTable');

//Establish connection
var con = dbConnection.connection;

var sqlQueryHandler = module.exports = {};
var sqlResults={};
sqlQueryHandler.query = "";
sqlQueryHandler.fetchResults = function(columns, url, whereOptions, callBack)
{
  try
  {
    sqlQueryHandler.query = "SELECT " + columns + " FROM " + mappingUrl.mappingUrlTable[tableName] + " WHERE 1=1";
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

sqlQueryHandler.updateResults = function(jsonObject, url, authority, callBack)
{
  //this function takes json object from rest api and then formulates a corresponding update query
  //and returns the results;
  try
  {
    sqlQueryHandler.query = "UPDATE " + mappingUrl.mappingUrlTable[url] + " SET " + " ";
    var setString = "";
    for(var keys = Object.keys(jsonObject), i = 0, end = keys.length; i < end; i++)
    {
      var key = keys[i];
      var value = jsonObject[key];
      if(i === keys.length - 1){
        sqlQueryHandler.query += setString + " WHERE " + key + " = " + jsonObject[key] + ";";
      }
      else{
        var appendString = '';
        if(i != 0){
          appendString = ', ';
        }
        appendString += key + ' = "' + jsonObject[key] + '"';
        setString += appendString;
      }
      console.log(jsonObject[key]);
    }
    //console.log(setString);
    //console.log(sqlQueryHandler.query);
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err){
            throw err;
          }
          console.log(result);
          sqlResults = result;
          if(callBack != false){
            callBack(sqlResults);
          }

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
  for(var i=0; i<length; i++){
    if(!isNaN(values[i])){
      values[i] = parseInt(values[i]);
    }
  }
  try
  {
    // sqlQueryHandler.query = "INSERT INTO " + tableName + " VALUES(" + values[0];
    // for(var i = 1; i < values.length; i++)
    // {
    //   sqlQueryHandler.query += " , " + values[i];
    // }
    // sqlQueryHandler.query += ")";
    console.log(values);
    sqlQueryHandler.query = "INSERT INTO " + tableName + " VALUES ?";
    con.query(sqlQueryHandler.query,values,
      function (err, result)
      {
          if (err)
            throw err;
    }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}
