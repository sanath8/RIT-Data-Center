var express = require('express');
var router = express.Router();

router.post('/', function(req, res, next) {
    req.session.destroy(function(err){
        if(err){
            console.log(err);
            res.redirect("/faculty");
        }else{
            res.redirect("/login");
        }
    });

});

module.exports = router;