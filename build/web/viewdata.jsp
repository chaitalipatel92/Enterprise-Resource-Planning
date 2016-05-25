<%-- 
    Document   : viewdata
    Created on : Feb 14, 2013, 9:33:56 AM
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
        <form method="POST">
            
            <input type="text" name="t1" value="" /> <br>
            
            <input type="password" name="t2" value="" /><br>
            <input type="submit" value="submit" />
       <%
        Connection cn;
        Statement st;
        ResultSet rs;
        
        try
                               {
            
                               Class.forName("com.mysql.jdbc.Driver");
                               cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String u, p,s;
                     u = request.getParameter("t1");
                     p = request.getParameter("t2");
                     if(u != null &&  p != null)
                     {
                             s = "select * from login where uname ='" + u +"' and pswd ='" + p +"'";
                             
                        rs = st.executeQuery(s);
                            if(rs.next())
                            {
                                    response.sendRedirect("index.jsp");
                            }                                
                                               else{
                                                       out.print("user & pass word check");
                                               }
                     }
                               
                               
        }catch(Exception e){
            out.print(e.getMessage());
        }
       %>
            
        </form>
       
      
    </body>
</html>
