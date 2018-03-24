var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    if(req.session.email){
        res.redirect("/faculty");
    }else{
        if(!req.query.error){
            res.render('login', { title: 'Express', type:"login" });
        }else{
            res.render('login', { title: 'Express', type:"loginError", message:req.query.error });
        }
    }
});

module.exports = router;