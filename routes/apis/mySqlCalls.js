var mysql = require('mysql');
var mappingUrl = require('../../back-end/mappingUrlTable');


var sqlObject = function() {
	this.connection = require('../../dbConnect').connectDB();
	this.tables = mappingUrl.mappingUrlTable;
}

sqlObject.prototype.runRawQuery = function(sql, callback){
	this.connection.query(sql, function(err, result){
		callback(err, result);
	})
}
sqlObject.prototype.login = function(email, pass, callback){
	var connection = this.connection;
	var sql= "select * \
			from faculty \
			where emailId=? and password=?";
	this.connection.query(sql, [email, pass], function(err, result){
		if(result.length == 0){
			var sql = "select * \
				from administrator_login \
				where emailId=? and password=?";
				console.log("hll");
		   connection.query(sql, [email, pass], function(err,result){
			if(err){
				callback(err,undefined);
				return;
			}
			console.log("hll");
			callback(err,result);
		})
		} else{
			callback(err, result);
		}
	})
}

sqlObject.prototype.getFacultyInfo=function(fid, callback){
	var sql="Select * \
			from "+this.tables.facultyInformation+" \
			where facultyId=?";
	this.connection.query(sql, [fid], function(err, result){
		callback(err, result);
	})
}
sqlObject.prototype.getFaultyQualification = function(fid, callback){
	var sql = "select Q.* \
		from " + this.tables.facultyQualification+" Q natural join "+this.tables.facultyInformation+"\
		WHERE facultyId=?";
	this.connection.query(sql, [fid],function(err,results,fields){
		console.log(results);
		callback(err, results);
	});
}
sqlObject.prototype.getFacultyService = function(fid, callback){
	var sql = "select * \
		from " + this.tables.facultyServiceDetails+" S \
		WHERE facultyId=?";
	this.connection.query(sql, [fid],function(err,results,fields){
		console.log(results);
		callback(err, results);
	});
}

sqlObject.prototype.getFaultyAcademics = function(fid, callback){
  	var sql = "select * \
      from " + this.tables.facultyCourseHandled+" \
      WHERE facultyId=?";


	var data={}
	var connection = this.connection;
	var myO=this;


	this.connection.query(sql, [fid],function(err,results,fields){
		console.log(results);
		if(err){
			callback(err, undefined);
			return;
		}
		data["courses_handled"]=results;

		sql="select *\
			from "+myO.tables.facultyProjectGuided+"\
			Where facultyId=?";

		connection.query(sql, [fid], function(err, results){
			console.log(results);
			if(err){
				callback(err, undefined);
				return;
			}
			data["projects_handled"]=results;

			sql="select *\
				from "+myO.tables.facultyResearch+"\
				Where facultyId=?";
			connection.query(sql, [fid], function(err, results){
				console.log(results);
				if(err){
					callback(err, undefined);
					return;
				}
				data["faculty_research"]=results;

				sql="select * \
					from "+myO.tables.PhdScholar+"\
					Where facultyId=?";
				connection.query(sql, [fid], function(err, results){
					console.log(results);
					if(err){
						callback(err, undefined);
						return;
					}
					data["phd_scholar"]=results;
					callback(undefined, data);
				})
			})
		})
	});
}

sqlObject.prototype.getFaultyRND = function(fid, callback){
  	var sql = "select * \
      from " + this.tables.facultyFundedProjects+" \
      WHERE facultyId=?";

	var data={}
	var connection = this.connection;
	var myO=this;

	this.connection.query(sql, [fid],function(err,results,fields){
		console.log(results);
		if(err){
			callback(err, undefined);
			return;
		}
		data["funded_projects"]=results;

		sql="select * \
			from "+myO.tables.facultyPatents+"\
			Where facultyId=?";

		connection.query(sql, [fid], function(err, results){
			console.log(results);
			if(err){
				callback(err, undefined);
				return;
			}
			data["faculty_patent"]=results;

			sql="select * \
				from "+myO.tables.consultancyDetails+"\
				Where facultyId=?";
			connection.query(sql, [fid], function(err, results){
				console.log(results);
				if(err){
					callback(err, undefined);
					return;
				}
				data["consultancy"]=results;

				sql="select *  \
					from "+myO.tables.industrialCollaborations+"\
					Where facultyId=?";
				connection.query(sql, [fid], function(err, results){
					console.log(results);
					if(err){
						callback(err, undefined);
						return;
					}
					data["industrial_collaboration_mou"]=results;
					callback(undefined, data);
				})
			})
		})
	});
}

sqlObject.prototype.getFaultyAchievements = function(fid, callback){
  	var sql = "select *  \
      from faculty_workshop_fdp \
      WHERE facultyId=?";

	var data={}
	var connection = this.connection;
	var myO=this;

	this.connection.query(sql, [fid],function(err,results,fields){
		console.log(results);
		if(err){
			callback(err, undefined);
			return;
		}
		data["faculty_workshop_fdp"]=results;

		sql="select * \
			from faculty_conference_symposia\
			Where facultyId=?";

		connection.query(sql, [fid], function(err, results){
			console.log(results);
			if(err){
				callback(err, undefined);
				return;
			}
			data["faculty_conference_symposia"]=results;

			sql="select * \
				from faculty_guest_lecture\
				Where facultyId=?";
			connection.query(sql, [fid], function(err, results){
				console.log(results);
				if(err){
					callback(err, undefined);
					return;
				}
				data["faculty_guest_lecture"]=results;

				sql="select * \
					from book\
					Where facultyId=?";
				connection.query(sql, [fid], function(err, results){
					console.log(results);
					if(err){
						callback(err, undefined);
						return;
					}
					data["book"]=results;

					sql="select * \
						from book_chapter\
						Where facultyId=?";
					connection.query(sql, [fid], function(err, results){
						console.log(results);
						if(err){
							callback(err, undefined);
							return;
						}
						data["book_chapter"]=results;

						sql="select * \
							from conference_paper\
							Where facultyId=?";
						connection.query(sql, [fid], function(err, results){
							console.log(results);
							if(err){
								callback(err, undefined);
								return;
							}
							data["conference_paper"]=results;

							sql="select * \
								from journal_paper\
								Where facultyId=?";
							connection.query(sql, [fid], function(err, results){
								console.log(results);
								if(err){
									callback(err, undefined);
									return;
								}
								data["journal_paper"]=results;
								callback(undefined, data);

							})
						})
					})
				})
			})
		})
	});
}


sqlObject.prototype.getCseFacultyInfo = function(callBack){
	var sql = "select * \
		from faculty \
		where departmentId = 'cse'";
		this.connection.query(sql,function(err,results,fields){
			callBack(err,results);
		})
}

sqlObject.prototype.getWholeTable = function(callback, url, email){
  var sql = "select * \
      from " + mappingUrl.mappingUrlTable[url]+" natural join "+this.tables.facultyInformation+"\
      WHERE emailId=?";
  var data;
  this.connection.query(sql, [email],function(err,results,fields){
    console.log(results);
    callback(err, results);
  });
}


  // this.connection.query(sql,function(err,results){
  //   console.log(results);
  //   this.connection = require('../../dbConnect').connectDB();
  //   this.connection.query(sql1,function(err,results1){
  //     console.log(results1);
  //     callback(err,results,results1);
  //   })
  // })

sqlObject.prototype.getTwoTables = function(callback, url1, url2){
  var sql1 = "select * from " + mappingUrl.mappingUrlTable[url1];
  var sql2 = "select * from " + mappingUrl.mappingUrlTable[url2];
  var data1;
  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });
  this.connection.query(sql2,function(err,results,fields){
    callback(err, data1, results);
  });
}

sqlObject.prototype.getThreeTables = function(callback, url1, url2, url3){
  var sql1 = "select * from " + mappingUrl.mappingUrlTable[url1];
  var sql2 = "select * from " + mappingUrl.mappingUrlTable[url2];
  var sql3 = "select * from " + mappingUrl.mappingUrlTable[url3];
  var data1, data2;
  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });
  this.connection.query(sql2,function(err,results,fields){
    data2 = results;
  });
  this.connection.query(sql3,function(err,results,fields){
    callback(err, data1, data2, results);
  });
}

sqlObject.prototype.getFourTables = function(callback, url1, url2, url3, url4){
  var sql1 = "select * from " + mappingUrl.mappingUrlTable[url1];
  var sql2 = "select * from " + mappingUrl.mappingUrlTable[url2];
  var sql3 = "select * from " + mappingUrl.mappingUrlTable[url3];
  var sql4 = "select * from " + mappingUrl.mappingUrlTable[url4];
  var data1, data2, data3;
  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });
  this.connection.query(sql2,function(err,results,fields){
    data2 = results;
  });
  this.connection.query(sql3,function(err,results,fields){
    data3 = results;
  });
  this.connection.query(sql4,function(err,results,fields){
    callback(err, data1, data2, data3, results);
  });
}
sqlObject.prototype.getFourSelectList = function(callback, url1, url2, url3, url4, tableName){
  var sql1 = "select distinct " + url1 + " from " + mappingUrl.mappingUrlTable[tableName];
  var sql2 = "select distinct " + url2 + " from " + mappingUrl.mappingUrlTable[tableName];
  var sql3 = "select distinct " + url3 + " from " + mappingUrl.mappingUrlTable[tableName];
  var sql4 = "select distinct " + url4 + " from " + mappingUrl.mappingUrlTable[tableName];

  var data1, data2, data3;
  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });
  this.connection.query(sql2,function(err,results,fields){
    data2 = results;
  });
  this.connection.query(sql3,function(err,results,fields){
    data3 = results;
  });
  this.connection.query(sql4,function(err,results,fields){
    callback(err, data1, data2, data3, results);
  });
}
sqlObject.prototype.getTwoSelectList = function(callback, url1, tableName){
	var sql1 = "select distinct table_name from information_schema.tables where table_schema = 'rit_data_center'";
  var sql2 = "select distinct " + url1 + " from " + tableName;

  var data1, data2, data3;
  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });

  this.connection.query(sql2,function(err,results,fields){
		data2 = results;
		callback(data1, data2);

  });

}

sqlObject.prototype.getAchievements = function(callback){
  var sql1 = "select * from faculty_workshop_fdp";
  var sql2 = "select * from faculty_conference_symposia";
  var sql3 = "select * from faculty_guest_lecture";
  var sql4 = "select * from book";
  var sql5 = "select * from book_chapter";
  var sql6 = "select * from conference_paper";
  var sql7 = "select * from journal_paper";
  var data1, data2, data3, data4, data5, data6;
  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });
  this.connection.query(sql2,function(err,results,fields){
    data2 = results;
  });
  this.connection.query(sql3,function(err,results,fields){
    data3 = results;
  });
  this.connection.query(sql4,function(err,results,fields){
    data4 = results;
  });
  this.connection.query(sql5,function(err,results,fields){
    data5 = results;
  });
  this.connection.query(sql6,function(err,results,fields){
    data6 = results;
  });
  this.connection.query(sql7,function(err,results,fields){
    callback(err, data1, data2, data3, data4, data5, data6, results);
  });
}

sqlObject.prototype.getDataBaseTables = function(dataBase, callBack)
{
	var query = "SELECT table_name FROM information_schema.tables where table_schema = '" + dataBase + "'";
  console.log(query);
	this.connection.query(query, function (err, result, fields)
	  {
	    if (err)
	      console.log(err);
	    callBack(result);

	  }
	);
}

sqlObject.prototype.getJointFacultyInfo = function (callBack, tableName)
{

	var query = "SELECT * \
							 FROM faculty \
							 NATURAL JOIN "+ tableName ;
 		this.connection.query(query, function (err, result, fields)
	  {
	    if (err)
	      console.log(err);
	    callBack(result);
	  }
	);

}

sqlObject.prototype.fetchResults = function(columns, url, whereOptions, callBack)
{
  //whereOptions is an array of strings
  try
  {
		if(columns == "")
				columnSelect = "*";
		else
				columnSelect = columns;
    var query = "SELECT "+ columnSelect +" \
								 FROM faculty NATURAL JOIN  " + url + "\
								 WHERE 1=1";
		console.log(whereOptions);
    for(var i = 0; i < whereOptions.length; i++)
    {
      query += " AND " + whereOptions[i];
    }
		console.log(query);
		console.log(whereOptions);

    this.connection.query(query,
      function (err, result, fields)
      {
          if (err)
            throw err;
          sqlResults = result;
          if(callBack != false)
            callBack(sqlResults);
      }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + err);
  }

}

var object = new sqlObject();

module.exports = object;
