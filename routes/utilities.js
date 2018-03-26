var checkSesssion=function(req, res){
    if(!req.session.email){
        res.redirect("/login");
    }
}

module.exports={checkSesssion: checkSesssion}