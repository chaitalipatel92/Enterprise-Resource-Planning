<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : newuser
    Created on : Feb 5, 2013, 10:59:47 AM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>NEW REGISTRATION</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
       
    <style type="text/css">
<!--
.style3 {color: #000000}
.style4 {
	color: #FFFFFF;
	font-weight: bold;
}
.style6 {color: #FFFFFF; font-weight: bold; font-size: 16px; }
-->
    </style>
    
    <%--
    
   <script language="JavaScript">
       function cname(a1, a2)
    {
        var x = a1.value;
        var cname=document.getElementById('a2');
       if(x.length <=0)
           {
            document.getElementById(a2).innerHTML = "<font color ='red' size=2>Please enter Client Name</font>";
           }
        else
            document.getElementById(a2).innerHTML = "";
    }
    function add(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color ='red' size=2>Please enter Address</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   
       function checkEmail(a1,a2)
   {
     var email = document.getElementById('a2');
     var filter = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
     if((a2.value)==null)
         {
           document.getElementById(a2).innerHTML = "<font color ='red' size=2>Please enter Email Address</font>";  
         }
     
     
     else if (!filter.test(a2.value))
        {
          document.getElementById(a2).innerHTML = "<font color ='red' size=2>Please enter the valid Email Address</font>";
          email.value="";
          email.focus();
        }
        else
            document.getElementById(a2).innerHTML = "";
    }
    
  
function comparepass(a1)
{
var t7=document.getElementById("password");

var t8=document.getElementById("rpassword");
if(t7.value==t8.value)
{
    
}
else
    {
document.getElementById(a1).innerHTML = "<font color ='red' size=2>Password and Confirm password do not match !</font>";
              t7.value="";
              t8.value="";
              a1.focus();
}

function comparepass1()
{
    var p = document.form1.rpassword.value;
    alert('p');
}

}
   </script>
    --%>
       <SCRIPT language="javascript">
        function addRow(tableID) {
 
            var table = document.getElementById(tableID);
 
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
 
            var colCount = table.rows[0].cells.length;
 
            for(var i=0; i<colCount; i++) {
 
                var newcell = row.insertCell(i);
 
                newcell.innerHTML = table.rows[0].cells[i].innerHTML;
                //alert(newcell.childNodes);
                switch(newcell.childNodes[0].type) {
                    case "text":
                            newcell.childNodes[0].value = "";
                            break;
                    case "checkbox":
                            newcell.childNodes[0].checked = false;
                            break;
                    case "select-one":
                            newcell.childNodes[0].selectedIndex = 0;
                            break;
                }
            }
        }
 
        function deleteRow(tableID) {
            try {
            var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
 
            for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var chkbox = row.cells[0].childNodes[0];
                if(null != chkbox && true == chkbox.checked) {
                    if(rowCount <= 1) {
                        alert("Cannot delete all the rows.");
                        break;
                    }
                    table.deleteRow(i);
                    rowCount--;
                    i--;
                }
 
 
            }
            }catch(e) {
                alert(e);
            }
        }
 
    </SCRIPT>
    </head>
    
    <body>
        <form method="POST">
	<INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
 
    <INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable')" />
 
    <TABLE id="dataTable" width="350px" border="1">
        <TR>
            <TD><INPUT type="checkbox" name="chk"/></TD>
            <TD><INPUT type="text" name="txt"/></TD>
            <TD>
                <SELECT name="country">
                    <OPTION value="in">India</OPTION>
                    <OPTION value="de">Germany</OPTION>
                    <OPTION value="fr">France</OPTION>
                    <OPTION value="us">United States</OPTION>
                    <OPTION value="ch">Switzerland</OPTION>
                </SELECT>
            </TD>
        </TR>
    </TABLE>
 
        </form>
    </body>
</html>
