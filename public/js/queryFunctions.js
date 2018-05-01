var columnsSelected = "";
var tableLock = 0;
$("#getReportDepartment").click(function()
{
  performFilterOperations('report', reportCallBack);
  function reportCallBack(finalQuery)
  {
    document.cookie="query = " + finalQuery;
    var x = document.cookie;
    window.location.href = "/department/getExcel/";
  }
});
$("#getReportAdmin").click(function()
{
  performFilterOperations('report', reportCallBack);
  function reportCallBack(finalQuery)
  {
    document.cookie="query = " + finalQuery;
    var x = document.cookie;
    window.location.href = "/admin/getExcel/";
  }
});

$("#getSummaryAdmin").click(function()
{
  var tableName = $('#tableList').val();
  console.log("summary of" + tableName);
  window.location.href = "/admin/getSummary/"+tableName+"/";
});


$("#tableList").change(function () {
  document.getElementById("title").innerHTML = $('#tableList').val();
  document.getElementById("titleDesc").innerHTML = "information about " + $('#tableList').val();

  columnsSelected = "";
  performFilterOperations('table_changed');
  tableLock =1;
});

$("#filters").change(function () {
  performFilterOperations('checkbox_changed');
});



function checkboxClicked(element)
{
  if(columnsSelected == "")
    columnsSelected += element.value;
  else if(columnsSelected.split(',').indexOf(element.value) == -1)
    columnsSelected += "," + element.value;
  else {
    var tempColArray = columnsSelected.split(',');
    var duplicateIndex = tempColArray.indexOf(element.value);
    tempColArray.splice(duplicateIndex, 1);
    columnsSelected = tempColArray.toString();
  }
  performFilterOperations('checkbox_changed');
};

function checkSummaryEligibility(tableName)
{
  try
  {
    if(tableName == "journal_paper" || tableName == "conference_paper")
    {
      document.getElementById("getSummaryAdmin").disabled = false;
    }
    else
    {
      document.getElementById("getSummaryAdmin").disabled = true;
    }
  }
  catch(err)
  {
    console.log("ignoring error" + err);
  }

  try
  {
    if(tableName == "journal_paper" || tableName == "conference_paper")
    {
      document.getElementById("getSummaryDepartment").disabled = false;
    }
    else
    {
      document.getElementById("getSummaryDepartment").disabled = true;
    }
  }
  catch(err)
  {
    console.log("ignoring error" + err);
  }
}
function performFilterOperations(flag, reportCallBack)
{
  console.log("querty till here");
  if(tableLock == 1)
  {
    tableLock = 0;
    return;
  }
  console.log("querty till here !!!");


  var tableName = $('#tableList').val();
  var department = $('#department').val();
  var facultyName = $('#facultyList').val();
  var year = $('#yearList').val();
  var from = $('#from').val();
  var fromYear = from.split("-")[0];
  var to = $('#to').val();
  var toYear = to.split("-")[0];

  checkSummaryEligibility(tableName);
  if(from != "" || to != "")
    document.getElementById("yearList").disabled=true;
  else
    document.getElementById("yearList").disabled=false;




  var queryFilter;

  if(department == "ALL")
  {
    queryFilter = [];
  }
  else
  {
    queryFilter = ["departmentId = '"+ department +"'"];
  }


  if(facultyName == "ALL")
  {
    queryFilter = queryFilter;
  }
  else
  {
    facultyFilter = ["facultyName = '"+ facultyName +"'"];
    queryFilter.push(facultyFilter);
  }
  if($('#yearList').is(':enabled'))
  {
    if(year == "ALL")
    {
      queryFilter = queryFilter;
    }
    else
    {
      var yearFilter =  ""+ converterApi.yearTranslator(tableName)+" >= " + (new Date().getFullYear()- year).toString() + "";
      queryFilter.push(yearFilter);
    }
  }
  else
  {
      if(from != "" && to != "")
      {
        var fromYearFilter =  ""+ converterApi.yearTranslator(tableName)+" >= "  + fromYear.toString() + "";
        var toYearFilter =  ""+ converterApi.yearTranslator(tableName)+" <= "  + toYear.toString() + "";
        queryFilter.push(fromYearFilter);
        queryFilter.push(toYearFilter);
      }

  }
  dataForSelect = {
      'schema': columnsSelected,
      'whereOption' : queryFilter
  };
  var url;
  if(flag == 'report')
  {
    url = '/v1/apis/data/'+tableName+'/report/';
  }
  else
  {
    url = '/v1/apis/data/'+tableName+'/getData/';
  }
  $.ajax({
      type: 'POST',
      data: JSON.stringify(dataForSelect),
      contentType: 'application/json',
      //url: 'http://localhost:3000/v1/apis/data/'+tableName+'/',
      url: url,
      success: function(dataRecieved) {
        if(flag == 'report')
        {
          console.log("asasasasasasasasasas"+dataRecieved);

            reportCallBack(dataRecieved);
        }
        else
        {
          finalResultSet = dataRecieved;
          if(flag == 'table_changed')
            buildColumnFilters(dataRecieved);
          buildTable(dataRecieved);
        }

      }
    });

}


function buildColumnFilters(json)
{
  if(json == "")
    return;
  var columnsAttributes = Object.keys(json[0]);
  var tab= $('#columnFilter');
  var columnChecks = "";
  columnChecks += ("<table border = 1>");
  columnChecks += ("<tr>");

  for(var i = 0; i < columnsAttributes.length; i++)
  {

       columnChecks += ("<td class='col-md-1'><div class='checkbox'><label><input type='checkbox' id = 'column"+i+"'  value='"+ columnsAttributes[i] +"' onchange='checkboxClicked(this)'>"+columnsAttributes[i]+"</label></div></td>");
  }
  columnChecks += ("</tr>");

  columnChecks += ("</table>");

  tab.html(columnChecks);

}

function buildTable(json)
{
   $("#tableR").empty();
  if(json == "")
    return;
  var columnsAttributes = Object.keys(json[0]);
  var tab= $('#tableR');
  var tr;
  tr = "";

tr+=("<thead class='text-primary'>")
  for(var j = 0; j < columnsAttributes.length; j++)
  {
    dataEntry = columnsAttributes[j];

    tr+=("<th>" + dataEntry + "</th>");

  }
tr+=("</thead><tbody>")


  for (var i = 0; i < json.length; i++)
  {
    tr+="<tr>"

    for(var j = 0; j < columnsAttributes.length; j++)
    {
      dataEntry = eval("json[i]."+columnsAttributes[j]);

      tr+=("<td class = 'longText'>" + dataEntry + "</td>");

    }
    tr+="</tr>"

  }
  tr+=("</tbody>");
  tab.html(tr);

}
