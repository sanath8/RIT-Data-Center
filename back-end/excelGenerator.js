//Import modules
var fs = require('fs');
var fileHandler = require('./fileManager');
var dataCleaner = require('./dataCleaner');
var excelGenerator = module.exports = {};


excelGenerator.getExcelSheet = function(tableData, fileName, response)
{
  var data = "";
 try{
        data = "";
        var structuredData = excelGenerator.getStructuredData(tableData, data);
        excelGenerator.writeIntoFile(structuredData, fileName, response, data);
        console.log("Process successfull\n");

    }
  catch(error)
    {
      console.log("Cannot generate excel sheet!" + error);
    }
}
//var data='';


excelGenerator.getStructuredData = function(tableData, data)
{
  var noOfRows = tableData.length;
  console.log("excel generator1"+tableData[0]);

  var noOfColumns = Object.keys(tableData[0]).length;
  var columnsAttributes = Object.keys(tableData[0]);
  data = excelGenerator.setHeadings(noOfColumns, columnsAttributes, data);
  data = excelGenerator.setDataEntries(noOfRows, noOfColumns, tableData, columnsAttributes, data);
  return data;
}

excelGenerator.setHeadings = function(noOfColumns, columnsAttributes, data)
{
  for(var i = 0; i < noOfColumns; i++)
  {
    if(i == noOfColumns - 1)
    {
      data += dataCleaner.specialCharacterFilter(columnsAttributes[i].toString()) + '\n';
    }
     else
     {
       data += dataCleaner.specialCharacterFilter(columnsAttributes[i].toString()) + '\t';
     }

  }
  return data;
}

excelGenerator.setDataEntries = function(noOfRows, noOfColumns, tableData, columnsAttributes, data)
{
  for (var i = 0; i < noOfRows; i++)
   {

     for(var j = 0; j < noOfColumns; j++)
     {
       //console.log( eval("tableData[i]."+columnsAttributes[j]));
       dataEntry = eval("tableData[i]."+columnsAttributes[j]);

       if(j == noOfColumns-1)
       {
         //data += dataCleaner.specialCharacterFilter(dataEntry.toString()) + '\n';
         data += dataEntry.toString() + '\n';

       }
        else
        {
          //data += dataCleaner.specialCharacterFilter(dataEntry.toString()) + '\t';
          data += dataEntry.toString() + '\t';

        }
    }
   }
   return data;

}
excelGenerator.writeIntoFile = function(structuredData, excelFileName, response)
{

  fs.writeFile(__dirname+ '/excelSheets/' + excelFileName, structuredData, (err) => {
    console.log(excelFileName+ 'excel filesss created');

      if (err)
        throw err;
      if(response != false)
        fileHandler.downloadExcel(response, excelFileName);

   });
}
