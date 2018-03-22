var mysql = require('mysql');
//providing credentials to connect to database
exports.connectDB = function ()
 {
	var con = mysql.createConnection
	(
		{
			host: "localhost",
			user: "root",
<<<<<<< HEAD
			password: "mysql12345",
			database: "collegeDB"
=======
			password: "",
			database: "rit_data_center"
>>>>>>> 7964f05645713f87755792ffb338bdf2b4b32e08
		}
	);
	con.connect
	(
		function(err)
		{
			if (err)//check for error connecting
				throw err;
			console.log("connected successfully "+con);

		}
	);
    return con;
};
