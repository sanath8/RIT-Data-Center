var express = require('express');
var router = express.Router();
var sqlQueryHandler = require('./sqlAPI');
if(typeof require !== 'undefined') XLSX = require('xlsx');


module.exports = function(filePath){
  var workbook = XLSX.readFile(filePath);
  var first_sheet_name = workbook.SheetNames[0];
/* Get worksheet */
  var worksheet = workbook.Sheets[first_sheet_name];

  var ob= new Object();

  ob = XLSX.utils.sheet_to_json(worksheet);
  console.log(ob + filePath);
  var k = 0;
  var variables = new Array();
  for(var i=0; i< ob.length; i++){
    for(j in ob[i]){
      variables[k] = ob[i][j]; k++;
      console.log(ob[i][j]);
    }
     for(var l = 0; l<ob[i].length ; l++){
      console.log(variables[l]);
    }
    //call to the sql statement to insert will be made here
    sqlQueryHandler.insertRow('service',variables);
  //   var sql = "INSERT INTO fac VALUES (?,?,?)";
  //   con.query(sql,[variables[0],variables[1],variables[2]],function (err, result) {
  //   if (err) throw err;
  //     console.log("1 record inserted");
  // });
  }
  console.log(ob);
};
