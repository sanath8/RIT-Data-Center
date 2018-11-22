var mysql = require('mysql');
var mappingUrl = require('../../back-end/mappingUrlTable');
var excelGenerator = require('../../back-end/excelGenerator.js');
var naturalJoinApi = require('./naturalJoinApi');

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
				// console.log("hll");
		   connection.query(sql, [email, pass], function(err,result){
			if(err){
				callback(err,undefined);
				return;
			}
			// console.log("hll");
			callback(err,result);
		})
		} else{
			callback(err, result);
		}
	})
}

sqlObject.prototype.getFacultyInfo=function(fid, callback){
	console.log("hellow doo")

		var sql = "select *\
		from professional_activities\
		where facultyId =?";

		var conn = this.connection;
		var data = {};
		this.connection.query(sql, [fid], function(error, result){
		if(error){
		console.log(error)
		callback(error, undefined);
		return;
		}
		console.log(result)
		data["professional_activities"] = result;

		var sql="Select * \
		from faculty \
		where facultyId=?";

		conn.query(sql, [fid], function(error, result){
			if(error){
				console.log(error)
				callback(error, undefined);
				return;
			}
			// console.log("faculty result backend", result)
			data["faculty_info"] = result;
			var sql = "select *\
			from professional_body_membership\
			where facultyId=?";
			conn.query(sql, [fid], function(error, result){
			if(error){
				// console.log(error)
				callback(error, undefined);
				return;
			}
			data["professional_body_membership"] = result;
			// console.log("query call",data)
			callback(undefined, data);
		})
	})
})



}
sqlObject.prototype.getFacultyQualification = function(fid, callback){
	var sql = "select Q.* \
		from " + this.tables.facultyQualification+" Q natural join "+this.tables.facultyInformation+"\
		WHERE facultyId=?";
	this.connection.query(sql, [fid],function(err,results,fields){
		// console.log(results);
		callback(err, results);
	});
}
sqlObject.prototype.getFacultyService = function(fid, callback){
	var sql = "select * \
		from " + this.tables.facultyServiceDetails+" S \
		WHERE facultyId=?";
	this.connection.query(sql, [fid],function(err,results,fields){
		// console.log(results);
		callback(err, results);
	});
}

sqlObject.prototype.getFacultyAcademics = function(fid, callback){
  	var sql = "select * \
      from " + this.tables.facultyCourseHandled+" \
      WHERE facultyId=?";


	var data={}
	var connection = this.connection;
	var myO=this;


	this.connection.query(sql, [fid],function(err,results,fields){
		// console.log(results);
		if(err){
			callback(err, undefined);
			return;
		}
		data["courses_handled"]=results;

		sql="select *\
			from "+myO.tables.facultyProjectGuided+"\
			Where facultyId=?";

		connection.query(sql, [fid], function(err, results){
			// console.log(results);
			if(err){
				callback(err, undefined);
				return;
			}
			data["projects_handled"]=results;

			sql="select *\
				from "+myO.tables.facultyResearch+"\
				Where facultyId=?";
			connection.query(sql, [fid], function(err, results){
				// console.log(results);
				if(err){
					callback(err, undefined);
					return;
				}
				data["faculty_research"]=results;

				sql="select * \
					from "+myO.tables.PhdScholar+"\
					Where facultyId=?";
				connection.query(sql, [fid], function(err, results){
					// console.log(results);
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

sqlObject.prototype.getFacultyRND = function(fid, callback){
  	var sql = "select * \
      from " + this.tables.facultyFundedProjects+" \
      WHERE facultyId=?";

	var data={}
	var connection = this.connection;
	var myO=this;

	this.connection.query(sql, [fid],function(err,results,fields){
		// console.log(results);
		if(err){
			callback(err, undefined);
			return;
		}
		data["funded_projects"]=results;

		sql="select * \
			from "+myO.tables.facultyPatents+"\
			Where facultyId=?";

		connection.query(sql, [fid], function(err, results){
			// console.log(results);
			if(err){
				callback(err, undefined);
				return;
			}
			data["faculty_patent"]=results;

			sql="select * \
				from "+myO.tables.consultancyDetails+"\
				Where facultyId=?";
			connection.query(sql, [fid], function(err, results){
				// console.log(results);
				if(err){
					callback(err, undefined);
					return;
				}
				data["consultancy"]=results;

				sql="select *  \
					from "+myO.tables.industrialCollaborations+"\
					Where facultyId=?";
				connection.query(sql, [fid], function(err, results){
					// console.log(results);
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

sqlObject.prototype.getFacultyAchievements = function(fid, callback){
  	var sql = "select *  \
      from faculty_workshop_fdp \
      WHERE facultyId=?";

	var data={}
	var connection = this.connection;
	var myO=this;

	this.connection.query(sql, [fid],function(err,results,fields){
		// console.log(results);
		if(err){
			callback(err, undefined);
			return;
		}
		data["faculty_workshop_fdp"]=results;

		sql="select * \
			from faculty_conference_symposia\
			Where facultyId=?";

		connection.query(sql, [fid], function(err, results){
			// console.log(results);
			if(err){
				callback(err, undefined);
				return;
			}
			data["faculty_conference_symposia"]=results;

			sql="select * \
				from faculty_guest_lecture\
				Where facultyId=?";
			connection.query(sql, [fid], function(err, results){
				// console.log(results);
				if(err){
					callback(err, undefined);
					return;
				}
				data["faculty_guest_lecture"]=results;

				sql="select * \
					from book\
					Where facultyId=?";
				connection.query(sql, [fid], function(err, results){
					// console.log(results);
					if(err){
						callback(err, undefined);
						return;
					}
					data["book"]=results;

					sql="select * \
						from book_chapter\
						Where facultyId=?";
					connection.query(sql, [fid], function(err, results){
						// console.log(results);
						if(err){
							callback(err, undefined);
							return;
						}
						data["book_chapter"]=results;

						sql="select * \
							from conference_paper\
							Where facultyId=?";
						connection.query(sql, [fid], function(err, results){
							// console.log(results);
							if(err){
								callback(err, undefined);
								return;
							}
							data["conference_paper"]=results;

							sql="select * \
								from journal_paper\
								Where facultyId=?";
							connection.query(sql, [fid], function(err, results){
								// console.log(results);
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

sqlObject.prototype.getAcademicCouncil = function(callback){
	var sql1 = "select * \
		from " + this.tables.academicCouncil ;
		var sql2 = "select instituteName \
		from institution";
		var queryObject = this.connection;
	queryObject.query(sql1 ,function(err1,results1,fields1){
		//console.log(results);
		queryObject.query(sql2 ,function(err2,results2,fields2){
			//console.log(results);

			callback(err1, err2, results1, results2);
		});

});
}

sqlObject.prototype.getFinanceCommittee = function(callback){
	var sql1 = "select * \
		from " + this.tables.financeCommittee ;
		var sql2 = "select instituteName \
		from institution";
		var queryObject = this.connection;
	queryObject.query(sql1 ,function(err1,results1,fields1){
		//console.log(results);
		queryObject.query(sql2 ,function(err2,results2,fields2){
			//console.log(results);

			callback(err1, err2, results1, results2);
		});

	});
}

sqlObject.prototype.getGoverningBody = function(callback){
	var sql1 = "select * \
		from " + this.tables.governingBody ;
		var sql2 = "select instituteName \
		from institution";
		var queryObject = this.connection;
	queryObject.query(sql1 ,function(err1,results1,fields1){
		//console.log(results);
		queryObject.query(sql2 ,function(err2,results2,fields2){
			//console.log(results);

			callback(err1, err2, results1, results2);
		});

	});
}

sqlObject.prototype.getDepartmentFacultyInfo = function(callback, departmentId){
	var sql = "select * \
		from faculty \
		where departmentId = "+"'"+departmentId+"'";
		this.connection.query(sql,function(err,results,fields){
			callback(err,results);
		})
}

sqlObject.prototype.getDepartmentInfo = function(callback){
	var sql = "select *\
						from department";
		this.connection.query(sql,function(err,results,fields){
			callback(err,results);
		})
}


sqlObject.prototype.getInfrastructureDetails = function(callback, departmentId){
	var sql = "select *\
						 from hardware\
						 where departmentId =?\
						 order by labName";

	var conn = this.connection;
  var data = {};
	this.connection.query(sql, [departmentId], function(error, result){
		if(error){
			callback(error, undefined);
			return;
		}
		data["hardware"] = result;

		var sql = "select *\
							 from software\
							 where departmentId =?";

		conn.query(sql, [departmentId], function(error, result){
			if(error){
				callback(error, undefined);
				return;
			}
			data["software"] = result;
			callback(undefined, data);
		})
	})
}

sqlObject.prototype.somethingelse = function(callback, departmentId){
	var sql = "select *\
						 from professional_activities\
						 where departmentId =?";

	var conn = this.connection;
  var data = {};
	this.connection.query(sql, [departmentId], function(error, result){
		if(error){
			console.log(error)
			callback(error, undefined);
			return;
		}
		console.log(result)
		data["professional_activities"] = result;

		var sql = "select *\
							 from other_membership\
							 where departmentId =?";

		conn.query(sql, [departmentId], function(error, result){
			if(error){
				callback(error, undefined);
				return;
			}
			data["other_membership"] = result;
			var sql = "select *\
			from professional_body_membership\
			where departmentId =?";
			conn.query(sql, [departmentId], function(error, result){
				if(error){
					callback(error, undefined);
					return;
				}
				data["professional_body_membership"] = result;
			callback(undefined, data);
		})
	})
	})
}



sqlObject.prototype.getBosBoeDetails = function(callback, departmentId){
	var sql = "select *\
							 from other_membership\
							 where departmentId =?";

	var conn = this.connection;
  var data = {};
	this.connection.query(sql, [departmentId], function(error, result){
		if(error){
			console.log(error)
			callback(error, undefined);
			return;
		}
		data["other_membership"] = result;
		callback(undefined, data);
		})
}


sqlObject.prototype.getAdmissionDetails = function(callback, departmentId){
	var sql = "select *\
						 from admissions\
						 where departmentId = ?;"
	var data = {}
	this.connection.query(sql, [departmentId], function(error, result){
		if(error){
			callback(error, undefined);
			return;
		}
		data["admissions"] = result;
		callback(undefined, data);
	})
}


sqlObject.prototype.getDepartmentActivities = function(callback, departmentId){
	var sql = "select *\
						from industrial_visit\
						where departmentId = ?;"

	var data = {};
	var con = this.connection;

	this.connection.query(sql,[departmentId], function(error, result){
		if(error){
			callback(error, undefined);
			return;
		}
		data["industrial_visit"] = result;

		var sql = "select *\
							from guest_lectures_invited\
							where departmentId =?"
		con.query(sql, [departmentId], function(error, result){
			if(error){
				callback(error, undefined);
				return;
			}
			data["guest_lectures_invited"] = result;

			var sql = "select *\
								from events_organized\
								where departmentId = ?"

			con.query(sql, [departmentId], function(error, result){
				if(error){
					callback(error, undefined);
					return;
				}
				data["events_organized"] = result;

				var sql = "select *\
									from department_industrial_collaboration_mou\
									where departmentId = ?"

				con.query(sql, [departmentId], function(error, result){
					if(error){
						callback(error,undefined);
						return;
					}
					data["department_industrial_collaboration_mou"] = result;
					callback(undefined, data);
				})
			})
		})
	})
}

sqlObject.prototype.getStudentInformation = function(callback, departmentId){
	var sql = "select *\
						from student_achievement\
						where departmentId = ?;"

	var data = {};
	var con = this.connection;

	this.connection.query(sql,[departmentId], function(error, result){
		if(error){
			callback(error, undefined);
			return;
		}
		data["student_achievement"] = result;

		var sql = "select *\
							from student_activities\
							where departmentId =?"
		con.query(sql, [departmentId], function(error, result){
			if(error){
				callback(error, undefined);
				return;
			}
			data["student_activities"] = result;
      //table change 6
			var sql = "select *\
								from student_conference_publications\
								where departmentId =?"
			con.query(sql, [departmentId], function(error, result){
				if(error){
					callback(error, undefined);
					return;
				}
				data["student_conference_publications"] = result;


				var sql = "select *\
									from student_journal_publications\
									where departmentId =?"
				con.query(sql, [departmentId], function(error, result){
					if(error){
						callback(error, undefined);
						return;
					}
					data["student_journal_publications"] = result;

					var sql = "select *\
										from higher_studies\
										where departmentId =?"
					con.query(sql, [departmentId], function(error, result){
						if(error){
							callback(error, undefined);
							return;
						}
						data["higher_studies"] = result;

						var sql = "select *\
											from competative_exam_details\
											where departmentId =?"
						con.query(sql, [departmentId], function(error, result){
							if(error){
								callback(error, undefined);
								return;
							}
							data["competative_exam_details"] = result;

							var sql = "select *\
												from placement_details\
												where departmentId =?"
							con.query(sql, [departmentId], function(error, result){
								if(error){
									callback(error, undefined);
									return;
								}
								data["placement_details"] = result;


			var sql = "select *\
								from student_publication\
								where departmentId = ?"

			con.query(sql, [departmentId], function(error, result){
				if(error){
					callback(error, undefined);
					return;
				}
				data["student_publication"] = result;
				callback(undefined, data);
			})
		})
	})
})
})
})
})
})
}


sqlObject.prototype.getWholeTable = function(callback, url, email){
  var sql = "select * \
      from " + mappingUrl.mappingUrlTable[url]+" natural join "+this.tables.facultyInformation+"\
      WHERE emailId=?";
  var data;
  this.connection.query(sql, [email],function(err,results,fields){
    // console.log(results);
    callback(err, results);
  });
}




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
sqlObject.prototype.getTwoSelectList = function(callback, url1, tableName, depId){
	var sql0 = "select distinct  departmentId from department ORDER BY departmentId";
	var sql1 = "";
	var sql2 = "";
	sql1 = "select distinct table_name from information_schema.tables where table_schema = 'rit_data_center'\
	AND table_name != 'academic_council' AND table_name != 'finance' AND table_name != 'governing_body'\
	AND table_name != 'institution' AND table_name != 'department' AND table_name != 'administrator_login'\
	AND table_name != 'scholarship' ORDER BY table_name";
	if(depId != 'none')
	{
		sql2 = "select distinct " + url1 + " from " + tableName + " WHERE departmentId = '"+ depId +"' ORDER BY facultyName";
	}
	else
	{
		sql2 = "select distinct " + url1 + " from " + tableName + " ORDER BY facultyName";
	}
	console.log("name filter speaking : " + sql2);
  var data0, data1, data2;
	this.connection.query(sql0,function(err,results,fields){
    data0 = results;
  });

  this.connection.query(sql1,function(err,results,fields){
    data1 = results;
  });

  this.connection.query(sql2,function(err,results,fields){
		data2 = results;
		callback(data0, data1, data2);

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
  // console.log(query);
	this.connection.query(query, function (err, result, fields)
	  {
	    if (err)
	      console.log(err);
	    callBack(result);

	  }
	);
}
sqlObject.prototype.executeSummaryQuery = function(tableName, from, to, departmentId, type, callback){
	var sql = "";
	console.log("Reached here with" + tableName);
  var columnConversions = {"conference_paper":"conferenceType", "journal_paper":"journalType"};
	var typeConversions = {"department":"facultyId", "admin":"departmentId"};
	var selectConversions = {"department":"facultyId, facultyName", "admin":"departmentId"};

	var filterHelper = "";
	if(from != "-1")
	{
		filterHelper += " AND " + from;
	}
	if(to != "-1")
	{
		filterHelper += " AND " + to;
	}
	if(departmentId != "ALL")
	{
		filterHelper += " AND departmentId = '" + departmentId + "'";
	}

	sql1 = "SELECT "+ selectConversions[type] +", count(*) AS counts \
				 FROM \
				 faculty \
				 NATURAL JOIN " + tableName + " \
				 WHERE "+ columnConversions[tableName] +" = 'international' " + filterHelper + "\
				 GROUP BY " + typeConversions[type] + "\
				 ORDER BY " + typeConversions[type];
 sql2 = "SELECT "+ selectConversions[type] +", count(*) AS counts \
				 FROM  \
				 faculty \
				 NATURAL JOIN " + tableName + " \
				 WHERE "+ columnConversions[tableName] +" = 'national' " + filterHelper + "\
				 GROUP BY " + typeConversions[type] + "\
				 ORDER BY " + typeConversions[type];
				//  console.log("sql1" + sql1 + "sql2" + sql2);
				 var data1, data2, format;
				 /*if(type == "admin")
					format = [{"departmentId":"Department ID", "international":"International", "national":"National"}];
				else
					format = [{"facultyName":"Faculty name", "international":"International", "national":"National"}];*/
				 this.connection.query(sql1,function(err,results,fields){
					 data1 = results;
			   });
			   this.connection.query(sql2,function(err,results,fields){
					 data2 = results;
					//  console.log("data join :" + JSON.stringify(data1));
					 var formatedData = formatSummary(data1, data2, typeConversions[type]);
					 //console.log("formatting finished" + JSON.stringify(formatedData));
					 callback(formatedData);
			   });


}

function formatSummary(international, national, compared) //modification needed in this function, faculty id to be used instead of name
{
	// console.log(" data1 " + JSON.stringify(international) + " data " + JSON.stringify(national));
	internationalPointer = 0;
	nationalPointer = 0;
	lenInternational = international.length;
	lenNational = national.length;
	formatedSummary = [];
	var temp = {};
	while ((internationalPointer < lenInternational) && (nationalPointer < lenNational))
	{
		var temp = {};

		// console.log(international[internationalPointer][compared] +"   "+ national[nationalPointer][compared]+"\n");
		if(international[internationalPointer][compared] > national[nationalPointer][compared])
		{
			temp[compared] = national[nationalPointer][compared];
			if(compared == "facultyId") //check whether faculty wise information is asked.
			{
				temp["facultyName"] = national[nationalPointer]["facultyName"];
			}
			temp["international"] = 0;
			temp["national"] = national[nationalPointer]["counts"];
			nationalPointer++;
		}
		else if (international[internationalPointer][compared] < national[nationalPointer][compared])
		{
			temp[compared] = international[internationalPointer][compared];
			if(compared == "facultyId")
			{
				temp["facultyName"] = international[internationalPointer]["facultyName"];
			}
			temp["international"] = international[internationalPointer]["counts"];
			temp["national"] = 0;
			internationalPointer++;
		}
		else
		{
			temp[compared] = international[internationalPointer][compared];
			if(compared == "facultyId")
			{
				temp["facultyName"] = national[nationalPointer]["facultyName"];
			}
			temp["international"] = international[internationalPointer]["counts"];
			temp["national"] = national[nationalPointer]["counts"];
			internationalPointer++;
			nationalPointer++;
		}
		formatedSummary.push(temp);
	}

	while (internationalPointer < lenInternational)
	{
		var temp = {};

		temp[compared] = international[internationalPointer][compared];
		if(compared == "facultyId")
		{
			temp["facultyName"] = international[internationalPointer]["facultyName"];
		}
		temp["international"] = international[internationalPointer]["counts"];
		temp["national"] = 0;
		internationalPointer++;
		formatedSummary.push(temp);


	}

	while (nationalPointer < lenNational)
	{
		var temp = {};

		temp[compared] = national[nationalPointer][compared];
		if(compared == "facultyId")
		{
			temp["facultyName"] = national[nationalPointer]["facultyName"];
		}
		temp["international"] = 0;
		temp["national"] = national[nationalPointer]["counts"];
		nationalPointer++;
		formatedSummary.push(temp);

	}

	return formatedSummary;

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

sqlObject.prototype.executeDirectQuery = function (query, callBack)
{

	var query = query ;
 		this.connection.query(query, function (err, result, fields)
	  {
	    if (err)
	      console.log(err);
	    callBack(result);
	  }
	);

}

sqlObject.prototype.fetchResults = function(columns, url, whereOptions, type, facultyId, departmentId, indexer, callBack)
{
  //whereOptions is an array of strings
  try
  {
		if(columns == "")
				columnSelect = "*";
		else
				columnSelect = columns;
    var query = "SELECT "+ columnSelect +" FROM "+ naturalJoinApi.getJoinTable(url) + "" + url + " WHERE 1=1";
		// console.log(whereOptions);
    for(var i = 0; i < whereOptions.length; i++)
    {
      query += " AND " + whereOptions[i];
    }
		// console.log("jdjyvsd" + facultyId);
		if(facultyId != "principal" && facultyId != "admin")
		{
			query += " AND departmentId = '" + departmentId+"'";
		}
		 //console.log("indexer" + indexer);
		// console.log(whereOptions);
		// ordering by increasing year
		if(indexer)
		{
				query += " ORDER BY " + indexer + " desc";
		}

    this.connection.query(query,
      function (err, result, fields)
      {
          if (err)
            throw err;
          sqlResults = result;
          if(type == 'getData')
            callBack(sqlResults);
					else
					  callBack(query);
      }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + err);
  }

}


sqlObject.prototype.getDepartmentIds = function(callback){
	var query = "select departmentId from department"
	this.connection.query(query, function(err, result, fields){
		if(err)
			throw err;
		callback(result)
	})
}

var object = new sqlObject();

module.exports = object;
