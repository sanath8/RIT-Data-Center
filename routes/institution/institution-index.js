var express = require('express');
var router = express.Router();

/* GET home page. */
var updatePermission = {
  hod:false,
  principal:false,
  coordinator:false,
  faculty:false,
  admin:true
}

var insertPermission = {
  hod:false,
  principal:false,
  coordinator:false,
  faculty:false,
  admin:true
}
router.get('/',function(req,res,next){
  console.log("in institution index path reached the facultyId is " + req.session.facultyId);
  var permission = {
    hod:false,
    principal:false,
    coordinator:false,
    faculty:false,
    admin:true
  }
  res.render('institution/index', { departmentId: req.session.departmentId, type: "dashboard", authType:req.session.facultyId, updatePermission:permission, insertPermission:insertPermission});
})
// router.get('/governance', function(req, res, next) {
//   res.render('institution/governance', { departmentId: req.session.departmentId, type: "governance", authType:req.session.facultyId});
// });

// router.get('/finance', function(req, res, next) {
//   res.render('institution/finance', { departmentId: req.session.departmentId, type: "finance", authType:req.session.facultyId});
// });

// router.get('/academic', function(req, res, next) {
//   res.render('institution/academic', { departmentId: req.session.departmentId, type: "academic", authType:req.session.facultyId});
// });

router.use('/academic', require('./academic'));
router.use('/finance', require('./finance'));
router.use('/governance', require('./governance'));

module.exports = router;
