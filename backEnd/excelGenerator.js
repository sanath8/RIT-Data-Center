var fs = require('fs');

var excelGenerator = module.exports = {};

excelGenerator.data = "";

excelGenerator.getExcelSheet = function(tableData, fileName)
{

 try{
        var structuredData = excelGenerator.getStructuredData(tableData);
        //var excelFileName = excelGenerator.getFileName();
        excelGenerator.writeIntoFile(structuredData, fileName);
    }
  catch(error)
    {
      console.log("Cannot write into excel sheet!" + error);
    }
console.log("Process successfull\n");
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
excelGenerator.writeIntoFile = function(structuredData, excelFileName)
{

  fs.writeFile(excelFileName, excelGenerator.data, (err) => {
      if (err) throw err;
      console.log(excelFileName+ 'excel filesss created');
   });
}
