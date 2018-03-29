var checkSesssion=function(req, res){
    if(!req.session.email){
        res.redirect("/login");
        return false;
    }
    return true;
}

module.exports={checkSesssion: checkSesssion}