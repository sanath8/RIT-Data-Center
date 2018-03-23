//this module gives the mapping from url to tableName
//its important because we can specify what the user can access from the REST API.
//otherwise the user can access any table which is a serious risk.
//that's why we have a separate module for it in the backend cause we can use it in the REST api and also in the
//and also in the apis folder where all the sqlCalls.js file is located.

var mappingUrlTable = {'facultyInformation' : 'faculty', 'facultyQualification' : 'qualification', 'facultyServiceDetails': 'service',
'facultyCourseHandled' : 'course', 'facultyProjectGuided' : 'project', 'facultyResearch' : 'faculty_research',
'PhdScholar' : 'phd_scholar', 'facultyFundedProjects' : 'funded_projects', 'facultyPatents' : 'patent',
'consultancyDetails' : 'consultancy', 'industrialCollaborations' : 'industrial_collaboration_mou',
'studentPublications' : 'publication', 'studentAchievements' : 'award_achivement', 'hardware' : 'hardware',
'software' : 'software'}

module.exports.mappingUrlTable = mappingUrlTable;
