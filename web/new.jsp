<%-- 
    Document   : new
    Created on : 13 Apr, 2013, 5:48:40 PM
    Author     : admin
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
            Connection cn;
        Statement st;
        ResultSet rs;
        
              
				try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
		     st.executeUpdate("INSERT INTO `s_order` (SELECT * FROM temp)");
                     st.executeUpdate("TRUNCATE TABLE `temp`");
                     response.sendRedirect("salesorder2.jsp");
                    
                }catch(Exception e1)
                                               {}
                
	%>			
    </body>
</html>
