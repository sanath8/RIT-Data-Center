//backend code for login validation logic
exports.login = function(req, res){
    var username = req.body.username;
    var password = req.body.password;


    //backend logic for validation of the username and password
    //it goes to backend team from here
    //TODO backend team code for login validation for HOD portfolio

    //log to console for testing purposes
    //console.log("The username is : " + username);
    //overwrite this code
    //this code redirects to hod dashboard


    //redirect to dashboard
    res.redirect('index');
}
