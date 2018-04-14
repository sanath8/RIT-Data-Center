var columnsSelected = "";
var tableLock = 0;
$("#getReport").click(function()
{
  performFilterOperations('report', reportCallBack);
  function reportCallBack(finalQuery)
  {
    document.cookie="query = " + finalQuery;
    window.location.href = "/faculty/getExcel/";
  }
});

$("#exampleFormControlSelect0").change(function () {
  document.getElementById("title").innerHTML = $('#exampleFormControlSelect0').val();
  document.getElementById("titleDesc").innerHTML = "information about " + $('#exampleFormControlSelect0').val();

  columnsSelected = "";
  performFilterOperations('table_changed');
  tableLock =1;
});

$("#filters").change(function () {
//columnsSelected = "";
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


function performFilterOperations(flag, reportCallBack)
{
  if(tableLock == 1)
  {
    tableLock = 0;
    return;
  }

  var tableName = $('#exampleFormControlSelect0').val();
  var facultyName = $('#exampleFormControlSelect1').val();
  var year = $('#exampleFormControlSelect2').val();
  var from = $('#from').val();
  var fromYear = from.split("-")[0];
  var to = $('#to').val();
  var toYear = to.split("-")[0];

  if(from != "" || to != "")
    document.getElementById("exampleFormControlSelect2").disabled=true;
  else
    document.getElementById("exampleFormControlSelect2").disabled=false;




  var facultyFilter;

  if(facultyName == "ALL")
  {
    facultyFilter = [];
  }
  else
  {
    facultyFilter = ["facultyName = '"+ facultyName +"'"];
  }
  if($('#exampleFormControlSelect2').is(':enabled'))
  {
    if(year == "ALL")
    {
      facultyFilter = facultyFilter;
    }
    else
    {
      var yearFilter =  "year >= " + (new Date().getFullYear()- year).toString() + "";
      facultyFilter.push(yearFilter);
    }
  }
  else
  {
      if(from != "" && to != "")
      {
        var fromYearFilter =  "year >= " + fromYear.toString() + "";
        var toYearFilter = "year <= " + toYear.toString() + "";
        facultyFilter.push(fromYearFilter);
        facultyFilter.push(toYearFilter);
      }

  }
  dataForSelect = {
      'schema': columnsSelected,
      'whereOption' : facultyFilter
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

      tr+=("<td>" + dataEntry + "</td>");

    }
    tr+="</tr>"

  }
  tr+=("</tbody>");
  tab.html(tr);

}
