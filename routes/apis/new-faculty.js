var express = require('express');
var router = express.Router();
var mysql = require('./mySqlCalls');

router.post('/', function(req, res, next){
    var facultyId = req.body.department;
    console.log("coming here")
    console.log(req.body);
    var sqlQuery = "SELECT COUNT(*) as noOfFaculty FROM faculty WHERE departmentId = \"" + req.body.department + "\"";
    console.log(sqlQuery)
    mysql.runRawQuery(sqlQuery, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        } else{
            var count = result[0].noOfFaculty + 1;
            if(count.toString().length == 1){
                console.log("small")
                count = 0 + count.toString();
            }
            facultyId  = facultyId + count;
            sqlQuery = "INSERT INTO faculty VALUES (\"" + facultyId+"\",\""+req.body.name+"\",\""+req.body.gender+"\",\""+"null"+"\",\""+"null"+"\",\""
            +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.natureOfAppointment+"\",\""+req.body.contactNumber+"\",\""+req.body.email+"\",\""+facultyId+"\",\""
            +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.designation+"\",\""+req.body.department+"\")"            
            mysql.runRawQuery(sqlQuery, function(err, result){
                if(err){
                    res.end("Error : "+err.message);
                    return;
                } else{
                    res.redirect("/admin/add-faculty")
                }
            })
        }
        //console.log(result)
    })
});

module.exports = router;