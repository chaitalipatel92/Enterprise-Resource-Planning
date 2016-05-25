<%-- 
    Document   : deleteData
    Created on : Apr 8, 2013, 4:08:15 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
         String a=session.getAttribute("uname").toString();
         Connection cn;
         Statement st;
         ResultSet rs;
        
                String username;
                username  = request.getParameter("x");
               // out.print(username);
                try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     st.executeUpdate("delete from user where user = '"+ username + "' ");
                    st  = cn.createStatement();
                   
                    st.executeUpdate("delete from emp2 where  user = '"+ username + "' ");
                   response.sendRedirect("hr1.jsp");
                    
                }catch(Exception e1)
                   {
                    out.print(e1.getMessage());
                }
                
        %>
    </body>
</html>
