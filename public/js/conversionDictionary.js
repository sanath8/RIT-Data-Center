var converter = function()
{
  this.yearDictionary = {"faculty_qualification" : "passYear"};

}
converter.prototype.yearTranslator = function(tableName)
{

  return this.yearDictionary[tableName];
}

var converterApi = new converter();
