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

sqlQueryHandler.getTableAttributesInfo = function(tableName, callBack)
{

    var query = "SELECT column_name as 'columnName', data_type as 'dataType', character_maximum_length as 'maxLength' FROM information_schema.columns WHERE table_name = '"+tableName+"'" ;
    con.query(query, function (err, result, fields)
    {
      if (err)
        throw err;
      callBack(result);
    }
  );
}

function adjustDataTypes(resultSet, values)
{
  console.log(values);
  for(var i = 0; i < resultSet.length; i++)
  {
    if(eval(JSON.stringify(resultSet[i].dataType) == JSON.stringify("varchar") || JSON.stringify(resultSet[i].dataType) == JSON.stringify("date")))
    {
      values[i].dataType = eval("'" + resultSet[i].dataType + "'");
    }
    else if(eval(JSON.stringify(resultSet[i].dataType) == JSON.stringify("int")))
    {
      resultSet[i].dataType = parseInt(resultSet[i].dataType);
    }

  }

  return resultSet;

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


    sqlQueryHandler.getTableAttributesInfo("faculty", adjustingCallBack);

    function adjustingCallBack(resultSet)
    {
      console.log("Before: " + JSON.stringify(resultSet));
      resultSet = adjustDataTypes(resultSet, values);
      console.log("After: " + JSON.stringify(resultSet));

    }


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

  /*
    SELECT column_name as 'Column Name', data_type as 'Data Type',
    character_maximum_length as 'Max Length'
    FROM information_schema.columns
    WHERE table_name = 'tblUsers'
  */

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}
