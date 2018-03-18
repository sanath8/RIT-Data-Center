var mysql = require('mysql');
//providing credentials to connect to database
exports.connectDB = function ()
 {
	var con = mysql.createConnection
	(
		{
			host: "localhost",
			user: "root",
			password: "",
			database: "mydb"
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
