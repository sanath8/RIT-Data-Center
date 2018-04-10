var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

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
		res.render('faculty/achievements', {title : "Faculty Achievement Details",type : "achievements", data:data,
		index : { 
			url:"/faculty/achievements",
			faculty_workshop_fdp:
			   {
				title : "Title" ,
				sponsoredOrFunded : "Sponsored/Funded" ,
				date : "Date" ,
				noOfParticipants : "No. of Participants" ,
				type : "Type" 
			   }
		   ,
		   faculty_conference_symposia:
			   {
				eventName : "Event Name" ,
				place : "Place" ,
				date : "Date" ,
				invitedOrDeputed : "Invited Or Deputed" ,
				noOfPapersPresented : "No. Of Papers Presented" 
			   }
		   ,
		   faculty_guest_lecture:
			   {            
				placeInvited : "Place Invited" ,
				title : "Title" ,
				date : "Date"               
			   }
		   ,
		   book:
			   {            
				bookTitle : "Book Title" ,
				bookAuthors : "Book Author" ,
				bookPublisher : "Book Publisher" ,
				year : "Year"                
			   }
		   ,
		   book_chapter:
			   {            
				chapterName : "Chapter Name" ,
				bookName : "Book Name" ,
				chapterAuthors : "Chapter Authors" ,
				publisher : "Publisher" ,
				year : "Year"                
			   }
		   ,
		   conference_paper:
			   {
				
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
		authType:req.session.facultyId
	});
	}
	//TODO Change the Faculty Achievements Table
	sqlExecute.getFaultyAchievements(facultyId, callback);
});

module.exports=router;