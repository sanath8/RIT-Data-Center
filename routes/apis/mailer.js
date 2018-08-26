var nodemailer = require('nodemailer');
var qs=require("querystring");
var sql = require("./mySqlCalls")

var mailer = function() {
  mailTo = "";
}

mailer.prototype.sendMail = function(mailTo, res)
{
  callback = function(err, result)
  {
      console.log("pass "+JSON.stringify(result))
      if(result.length == 0)
      {
        res.redirect("/forgotPass?error="+qs.escape("Sorry, this e-mail id does not exist. Please enter a valid e-mail id."));
      }
      else
      {
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
          text: 'Password for user name '+ mailTo +' is ' + JSON.stringify(result[0].password) + '. Do not share this with anyone.'
        };

        transporter.sendMail(mailOptions, function(error, info){
          if (error) {
            res.redirect("/forgotPass?error="+qs.escape("Something went wrong. Please enter a valid e-mail id."));
          } else {
            res.redirect("/forgotPass?error="+qs.escape("We have mailed you the password."));
          }
        });
    }
  }
    sql.runRawQuery("select password from faculty where emailId = '" + mailTo + "'", callback)


}
var object = new mailer();

module.exports = object;
