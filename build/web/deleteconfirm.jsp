<%-- 
    Document   : deleteconfirm
    Created on : Apr 22, 2013, 5:26:43 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <Script Language="JavaScript">  
   function doThis(){ 
       var r = confirm("Are You Sure You Want To Delete?");
                     // alert(r);
                      if(r!=true)
                           {
                               alert("true data");
                               location.href="deleteconfirm.jsp";
                           }
                     
                             }
                       //      else{}
  
 </Script> 
    </head>
    <body>
        <h1>Hello World!</h1>
        <%  
String myLink = "Delete";  
    out.println( "<a href=\"index.jsp\" onclick=\"doThis();\">"+ myLink +"</a>" );  
%>  
    </body>
</html>
