var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/',function(req,res,next){
  res.render('institution/index', { departmentId: req.session.departmentId, type: "dashboard", authType:req.session.facultyId});
})
router.get('/governance', function(req, res, next) {
  res.render('institution/governance', { departmentId: req.session.departmentId, type: "governance", authType:req.session.facultyId});
});

router.get('/finance', function(req, res, next) {
  res.render('institution/finance', { departmentId: req.session.departmentId, type: "finance", authType:req.session.facultyId});
});

router.get('/academic', function(req, res, next) {
  res.render('institution/academic', { departmentId: req.session.departmentId, type: "academic", authType:req.session.facultyId});
});

module.exports = router;
