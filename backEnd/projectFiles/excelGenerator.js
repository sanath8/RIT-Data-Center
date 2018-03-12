//Import modules
var fs = require('fs');
var fileHandler = require('./fileManager');

var excelGenerator = module.exports = {};

excelGenerator.data = "";

excelGenerator.getExcelSheet = function(tableData, fileName, response)
{

 try{
        excelGenerator.data = "";
        var structuredData = excelGenerator.getStructuredData(tableData);
        excelGenerator.writeIntoFile(structuredData, fileName, response);
        console.log("Process successfull\n");

    }
  catch(error)
    {
      console.log("Cannot generate excel sheet!" + error);
    }
}
//var data='';


excelGenerator.getStructuredData = function(tableData)
{
  var noOfRows = tableData.length;
  console.log("excel generator1"+tableData[0]);

  var noOfColumns = Object.keys(tableData[0]).length;
  var columnsAttributes = Object.keys(tableData[0]);
  excelGenerator.setHeadings(noOfColumns, columnsAttributes);
  excelGenerator.setDataEntries(noOfRows, noOfColumns, tableData, columnsAttributes);
  return excelGenerator.data;
}

excelGenerator.setHeadings = function(noOfColumns, columnsAttributes)
{
  for(var i = 0; i < noOfColumns; i++)
  {
    if(i == noOfColumns - 1)
    {
      excelGenerator.data += columnsAttributes[i] + '\n';
    }
     else
     {
       excelGenerator.data += columnsAttributes[i] + '\t';
     }

  }
}

excelGenerator.setDataEntries = function(noOfRows, noOfColumns,tableData, columnsAttributes)
{
  for (var i = 0; i < noOfRows; i++)
   {

     for(var j = 0; j < noOfColumns; j++)
     {
       console.log( eval("tableData[i]."+columnsAttributes[j]));
       dataEntry = eval("tableData[i]."+columnsAttributes[j]);

       if(j == noOfColumns-1)
       {
         excelGenerator.data += dataEntry + '\n';
       }
        else
        {
          excelGenerator.data += dataEntry + '\t';
        }
    }
   }

}
excelGenerator.writeIntoFile = function(structuredData, excelFileName, response)
{

  fs.writeFile(__dirname+ '/excelSheets/' + excelFileName, excelGenerator.data, (err) => {
    console.log(excelFileName+ 'excel filesss created');

      if (err)
        throw err;
      fileHandler.downloadExcel(response, excelFileName);
   });
}
