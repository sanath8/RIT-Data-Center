var express = require('express');

var app = express();

app.get('/hellothere', function(request, response){
	//response.send("Hello there, from express!!!");
	response.sendFile("test1.html",  { root :"html/" });

});

app.listen(1337, function(){

	console.log('Listening at port 1337');
});
