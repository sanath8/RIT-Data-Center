var express = require('express');
var router = express.Router();
var mysql = require("./mySqlCalls");

router.post('/', function(req, res, next) {
    console.log("It reached here");
    var email = req.body.email;
    var pass = req.body.pass;

    var callback = function(err, result){
        if(err){
            console.log(err.message);
            res.redirect("/login");
        }
        if(result.length==0){
            console.log("Cannot find user");
            res.redirect("/login");
        }else{
            var myDet=result[0];
            //TODO Perform Search on my details and find of it is in which category
            req.session.email=myDet["emailId"];
            res.redirect("/faculty");
        }
    }
    mysql.login(email, pass, callback);
});

module.exports = router;