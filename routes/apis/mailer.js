var nodemailer = require('nodemailer');
var qs=require("querystring");
var sql = require("./mySqlCalls")

var mailer = function() {
  sendTo = "";
}

mailer.prototype.sendMail = function(mailTo, res){
  callback = function(err, result){
      console.log("pass "+JSON.stringify(result))
      var transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
          user: 'datacenterrit@gmail.com',
          pass: 'datacenter'
        }
      });

      var mailOptions = {
        from: 'datacenterrit@gmail.com',
        to: mailTo,
        subject: 'Password Recovery',
        text: 'Your password is ' + JSON.stringify(result[0].password)
      };

      transporter.sendMail(mailOptions, function(error, info){
        if (error) {
          console.log(error);
        } else {
          res.redirect("/forgotPass?error="+qs.escape("We have mailed you the password."));
        }
      });
    }
    sql.runRawQuery("select password from faculty where emailId = '" + mailTo + "'", callback)

}
var object = new mailer();

module.exports = object;
