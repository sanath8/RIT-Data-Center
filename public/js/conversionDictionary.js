var converter = function()
{

  this.yearDictionary = {"faculty_qualification" : "passYear", "book" : "year", "book_chapter" : "year", "conference_paper" : "year",
  "consultancy" : "financialYear", "courses_handled" : "yearHandled", "faculty" : "dob", "faculty_conference_symposia" : "date",
  "faculty_guest_lecture" : "date", "faculty_patent" : "publicationDate", "faculty_research" : "registrationYear", "faculty_workshop_fdp" : "date",
  "funded_projects" : "dateSanctioned", "industrial_collaboration_mou" : "mouSigningDate", "journal_paper" : "year", "phd_scholar" : "registrationYear",
  "projects_handled" : "batch", "admissions" : "year", "department" : "yearOfEstablishment", "guest_lectures_invited" : "date", "industrial_visit" : "scheduleDate",
  "non_teaching_staff" : "dob", "other_membership" : "year", "professional_activities" : "year", "professional_body_membership" : "subscriptionYear",
  "software" : "expiryDate", "satff_achievement" : "date", "student_achievement" : "date", "student_activities" : "date", "stduent_publication" : "date",
  "institution" : "yearOfEstablishment"};

  this.publicationDictionary = {"conference_paper" : "conferenceType", "journal_paper" : "journalType"};
}
converter.prototype.yearTranslator = function(tableName)
{

  return this.yearDictionary[tableName];
}
converter.prototype.publicationTranslator = function(tableName)
{

  return this.publicationDictionary[tableName];
}

var converterApi = new converter();
