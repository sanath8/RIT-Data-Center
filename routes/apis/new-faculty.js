var express = require('express');
var router = express.Router();
var mysql = require('./mySqlCalls');

router.post('/', function(req, res, next){
    var facultyId = "cse"+Math.ceil(Math.random()*1000);
    console.log("coming here")
    console.log(req.body);
    var sqlQuery = "INSERT INTO faculty VALUES (\"" + facultyId+"\",\""+req.body.name+"\",\""+req.body.gender+"\",\""+"null"+"\",\""+"null"+"\",\""
    +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.natureOfAppointment+"\",\""+req.body.contactNumber+"\",\""+req.body.email+"\",\""+facultyId+"\",\""
    +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.designation+"\",\""+req.body.department+"\")"
    console.log(sqlQuery)
    mysql.runRawQuery(sqlQuery, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        } else{
            res.redirect("/admin/add-faculty")
        }
        //console.log(result)
    })
});

module.exports = router;