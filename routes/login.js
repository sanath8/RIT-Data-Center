var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    if(req.session.email){
        res.redirect("/faculty");
    }else{
        res.render('login', { title: 'Express', type:"login" });
    }
});

module.exports = router;