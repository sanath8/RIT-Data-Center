var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  if(!utility.checkSesssion(req, res)) return;
  var callback = function(err, result1, result2, result3, result4, result5, result6, result7){
    if(err)
      throw err;
    var result = { 
      faculty_workshop_fdp:[
         {
          title:1  ,
          sponsoredOrFunded:1  ,
          date:1  ,
          noOfParticipants:1  ,
          type:1  
         }
     ],
     faculty_conference_symposia:[
         {
          eventName:1  ,
          place:1  ,
          date:1  ,
          invitedOrDeputed:1  ,
          noOfPapersPresented:1  
         }
     ],
     faculty_guest_lecture:[
         {            
          placeInvited:1  ,
          title:1  ,
          date:1               
         }
     ],
     book:[
         {            
          bookTitle:1  ,
          bookAuthors:1  ,
          bookPublisher:1  ,
          year:1                
         }
     ],
     book_chapter:[
         {            
          chapterName:1  ,
          bookName:1  ,
          chapterAuthors:1  ,
          publisher:1  ,
          year:1                
         }
     ],
     conference_paper:[
         {
          
          authors:1  ,
          title:1  ,
          conferenceName:1  ,
          conferenceType:1  ,
          organizedBy:1  ,
          year:1                
         }
     ],
     journal_paper:[
         {            
          authors:1  ,
          title:1  ,
          issn :1 ,
          journalName:1  ,
          journalType:1  ,
          volumeNumber:1  ,
          pageNumbers:1  ,
          year:1  ,
          sjrQuartile:1                
         }
     ]
  };
    res.render('faculty/achievements', { type:"achievements", data: result});
  }
  sqlExecute.getAchievements(callback);
});


module.exports=router;