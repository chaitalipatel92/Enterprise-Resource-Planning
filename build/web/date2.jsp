<%-- 
    Document   : date2
    Created on : Apr 17, 2013, 10:06:06 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
<h1>Current Date: <%= df.format(new java.util.Date()) %> </h1>
    </body>
</html>
