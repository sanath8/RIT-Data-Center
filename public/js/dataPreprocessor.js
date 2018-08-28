/* Backend version of preProcessor which is used for hiding some of the
confidential fields to the user who is not authenticated. Make sure the changes
you make here is also reflected back in its back-end counter part.*/ 
var preProcessor = function()
{
  this.hiddenFields = ["password","about"]

  this.resultSet = [];
}
preProcessor.prototype.removeHiddenFields = function(sqlResults)
{

  this.resultSet = sqlResults.slice();;

  for(var i = 0; i < this.resultSet.length; i++)
  {
    for(var j = 0; j <this.hiddenFields.length; j++)
    {

        try
        {

          delete this.resultSet[i][this.hiddenFields[j]];
        } catch (e)
        {
          console.log("No hidden fields");
        }

    }
  }

  return this.resultSet;
}

var preProcessApi = new preProcessor();
