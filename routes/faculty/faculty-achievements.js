var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

var facultyPermissions = require('./faculty-permissions.js');
router.get('/', function(req, res, next) {
	var facultyId;
	if(!utility.checkSesssion(req, res)) return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		auth = false;
		facultyId = req.query.fId;
	}

	var callback = function(err, data){
		if(err)
			throw err;
		
		var facultyID = req.session.facultyId;
		//console.log("GetParam : " + req.query.fId);
			
		res.render('faculty/achievements', {title : "Faculty Achievement Details",type : "achievements", data:data,
		index : { 
			url:"/faculty/achievements",
			faculty_workshop_fdp:
			   {
				facultyId : facultyID,
				title : "Title" ,
				sponsoredOrFunded : "Sponsored/Funded" ,
				date : "Date" ,
				noOfParticipants : "No. of Participants" ,
				type : "Type" 
			   }
		   ,
		   faculty_conference_symposia:
			   {
				facultyId : facultyID,
				eventName : "Event Name" ,
				place : "Place" ,
				date : "Date" ,
				invitedOrDeputed : "Invited Or Deputed" ,
				noOfPapersPresented : "No. Of Papers Presented" 
			   }
		   ,
		   faculty_guest_lecture:
			   {            
				facultyId:facultyID,
				placeInvited : "Place Invited" ,
				title : "Title" ,
				date : "Date"                
			   }
		   ,
		   book:
			   {            
				facultyId:facultyID,         
				bookTitle : "Book Title" ,
				bookAuthors : "Book Author" ,
				bookPublisher : "Book Publisher" ,
				year : "Year"                 
			   }
		   ,
		   book_chapter:
			   {            
				facultyId:facultyID,         
				chapterName : "Chapter Name" ,
				bookName : "Book Name" ,
				chapterAuthors : "Chapter Authors" ,
				publisher : "Publisher" ,
				year : "Year"                
			   }
		   ,
		   conference_paper:
			   {
				
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				conferenceName : "Conference Name" ,
				conferenceType : "Conference Type" ,
				organizedBy : "Organized By" ,
				year : "Year"                
			   }
		   ,
		   journal_paper:
			{            
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				issn : "ISSN" ,
				journalName : "Journal Name" ,
				journalType : "Journal Type" ,
				volumeNumber : "Volume Number" ,
				pageNumbers : "Page Numbbers" ,
				year : "Year" ,
				sjrQuartile : "SJR Quartile"               
			}
		   
		},
		GetParam:req.query.fId,
		/* tableNames : ["faculty_workshop_fdp", "faculty_conference_symposia", "faculty_guest_lecture", "book", "book_chapter", "conference_paper", "journal_paper"],
		columnSchema : [
			{
				facultyId : facultyID,
				title : "Title" ,
				sponsoredOrFunded : "Sponsored/Funded" ,
				date : "Date" ,
				noOfParticipants : "No. of Participants" ,
				type : "Type" 
			},
			{
				facultyId : facultyID,
				eventName : "Event Name" ,
				place : "Place" ,
				date : "Date" ,
				invitedOrDeputed : "Invited Or Deputed" ,
				noOfPapersPresented : "No. Of Papers Presented" 
			}
		   ,
			{            
				facultyId:facultyID,
				placeInvited : "Place Invited" ,
				title : "Title" ,
				date : "Date"               
			}
		   ,
			{   
				facultyId:facultyID,         
				bookTitle : "Book Title" ,
				bookAuthors : "Book Author" ,
				bookPublisher : "Book Publisher" ,
				year : "Year"                
			}
		   ,
			{   
				facultyId:facultyID,         
				chapterName : "Chapter Name" ,
				bookName : "Book Name" ,
				chapterAuthors : "Chapter Authors" ,
				publisher : "Publisher" ,
				year : "Year"                
			}
		   ,
			{	
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				conferenceName : "Conference Name" ,
				conferenceType : "Conference Type" ,
				organizedBy : "Organized By" ,
				year : "Year"                
			}
		   ,
			{            
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				issn : "ISSN" ,
				journalName : "Journal Name" ,
				journalType : "Journal Type" ,
				volumeNumber : "Volume Number" ,
				pageNumbers : "Page Numbbers" ,
				year : "Year" ,
				sjrQuartile : "SJR Quartile"               
			}
		], */
		hiddenFields: {
			faculty_workshop_fdp:
			   {
				facultyId : { view: true, insert: true, update: true },
				title : { view: false, insert: false, update: false } ,
				sponsoredOrFunded : { view: false, insert: false, update: false } ,
				date : { view: false, insert: false, update: false } ,
				noOfParticipants : { view: false, insert: false, update: false } ,
				type : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true } 
			   }
		   ,
		   faculty_conference_symposia:
			   {
				facultyId : { view: true, insert: true, update: true },
				eventName : { view: false, insert: false, update: false } ,
				place : { view: false, insert: false, update: false } ,
				date : { view: false, insert: false, update: false } ,
				invitedOrDeputed : { view: false, insert: false, update: false } ,
				noOfPapersPresented : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true } 
			   }
		   ,
		   faculty_guest_lecture:
			   {            
				facultyId:{ view: true, insert: true, update: true },
				placeInvited : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				date : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }                
			   }
		   ,
		   book:
			   {            
				facultyId:{ view: true, insert: true, update: true },         
				bookTitle : { view: false, insert: false, update: false } ,
				bookAuthors : { view: false, insert: false, update: false } ,
				bookPublisher : { view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }                 
			   },
			   book_chapter:
			   {            
				facultyId:{ view: true, insert: true, update: true } ,         
				chapterName : { view: false, insert: false, update: false } ,
				bookName : { view: false, insert: false, update: false } ,
				chapterAuthors : { view: false, insert: false, update: false } ,
				publisher : { view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }                         
			   }
		   ,
		   conference_paper:
			   {
				
				facultyId:{ view: true, insert: true, update: true } ,
				authors : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				conferenceName : { view: false, insert: false, update: false } ,
				conferenceType : { view: false, insert: false, update: false } ,
				organizedBy : { view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }                          
			   }
		   ,
		   journal_paper:
			{            
				facultyId:{ view: true, insert: true, update: true } ,
				authors : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				issn : { view: false, insert: false, update: false } ,
				journalName : { view: false, insert: false, update: false } ,
				journalType : { view: false, insert: false, update: false } ,
				volumeNumber : { view: false, insert: false, update: false } ,
				pageNumbers : { view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false } ,
				sjrQuartile : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }                
			}
		   
		},
		authType:req.session.facultyId,
		departmentId:req.session.departmentId,
		insertPermission:facultyPermissions.insertPermission,
			updatePermission:facultyPermissions.updatePermission
	});
	}
	//TODO Change the Faculty Achievements Table
	sqlExecute.getFaultyAchievements(facultyId, callback);
});

module.exports=router;