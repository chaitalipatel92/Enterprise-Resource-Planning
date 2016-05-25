<%-- 
    Document   : logout
    Created on : Mar 19, 2013, 11:53:53 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%      Connection cn;
        Statement st;
        ResultSet rs;
        
              
				try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     
                     st  = cn.createStatement();
                     st.executeUpdate("TRUNCATE TABLE `quatition2`");
                     response.sendRedirect("admin_home.jsp");
                     }
                                catch(Exception e1)
                     {}
        %>
      
    </body>
</html>
