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
            Connection cn;
        Statement st;
        ResultSet rs;
        
               String sid ;
                sid  = request.getParameter("x");
                //out.print(cid);
                try
                                               {
                    Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     st.executeUpdate("delete from supplier where sup_id =" + sid);
                     response.sendRedirect("supplier.jsp");
                    
                }catch(Exception e1)
                                               {}
                
        %>
    </body>
</html>