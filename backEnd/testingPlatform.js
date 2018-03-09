var express = require('express');
var excelTools = require('./excelGenerator');

var jsn = [{
    "name": "Nilesh",
    "school": "RDTC",
    "marks": "77"
   },{
    "name": "Sagar",
    "school": "RC",
    "marks": "99.99"
   },{
    "name": "Prashant",
    "school": "Solapur",
    "marks": "100"
 }];
var app = express();

app.get('/hellothere', function(request, response){
	//response.send("Hello there, from express!!!");
	//response.sendFile("test1.html",  { root :"html/" });
	excelTools.getExcelSheet(jsn);
});

app.listen(1337, function(){

	console.log('Listening at port 1337');
});
