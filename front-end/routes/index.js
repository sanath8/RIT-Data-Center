var express = require('express');
var router = express.Router();
// var app = express();
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'RIT Data Center' });
});


router.get('/login', function(req,res){
  res.render('login');
})

router.get('/governance',function(req,res){
  res.render('governance');
})

router.get('/finance',function(req,res){
  res.render('finance');
})

router.get('/academic',function(req,res){
  res.render('academic');
})

router.get('/department/:dept',function(req,res){
  console.log(req.params.dept);
  res.render('departments');
})

router.get('/:dept/:sidebar',function(req,res){
  var side = req.params.sidebar;
  var dept = req.params.dept;
  // res.send("yeah, this is department " + dept + " and info o f" + side);
  res.render('departments');
})


// code to insert login name and password working code

// router.post('/login/submit', function(req,res,next){
//   // res.send(req.body.username+req.body.password);
//   var username = req.body.username;
//   var password = req.body.password;
//   var mysql = require('mysql');
//   var sql = "INSERT INTO login VALUES (?,?);";
//   // var sql = "insert into login values ('namen', 'fuckingpassword')";
//
//
//   var con = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "",
//     database: "practice"
//   });
//   con.connect(function(err) {
//     if (err) throw err;
//     console.log("Connected!");
//     con.query(sql,[username, password], function (err, result) {
//       if (err) throw err;
//     console.log("1 record inserted");
//     // res.send("the record is inserted fukers ");
//     res.render('home', {name : username});
//   });
// });
// })

module.exports = router;
