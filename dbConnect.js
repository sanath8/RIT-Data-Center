
var mysql = require('mysql');
//providing credentials to connect to database
exports.connectDB = function ()
 {
	var con = mysql.createConnection
	(
		{
			// host: "172.1.16.110",
      host: "localhost",
			user: "root",
			// password: "mysql12345",
      password:"",
			database: "rit_data_center_new"
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
