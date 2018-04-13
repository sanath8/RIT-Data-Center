var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/',function(req,res,next){
  res.render('institution/index', { title: 'Express', type: "dashboard", authType:req.session.facultyId});
})
router.get('/governance', function(req, res, next) {
  res.render('institution/governance', { title: 'Express', type: "governance", authType:req.session.facultyId});
});

router.get('/finance', function(req, res, next) {
  res.render('institution/finance', { title: 'Express', type: "finance", authType:req.session.facultyId});
});

router.get('/academic', function(req, res, next) {
  res.render('institution/academic', { title: 'Express', type: "academic", authType:req.session.facultyId});
});

module.exports = router;
