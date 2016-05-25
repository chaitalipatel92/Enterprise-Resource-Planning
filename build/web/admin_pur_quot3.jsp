<%-- 
    Document   : addsale
    Created on : Apr 16, 2013, 5:46:06 PM
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
                                         
					Connection cn=null;
        				Statement st=null;
				        ResultSet rs=null;
                                       
                                        String  pid = "" ,quantity = "", date ="", supname = "";
                                        pid  = request.getParameter("pname");
                                        quantity  = request.getParameter("quantity");
                                        date  = request.getParameter("date");
                                        supname  = request.getParameter("supname");
                                      //  date1  = request.getParameter("date");
                                        
                                        //out.print (pid + " "+ price);
                                        
		try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","") ;
                      st  = cn.createStatement();
                      String s2,s1,pname="";
                       s1="select * from sup_products where prod_id = "+ pid;
                      rs = st.executeQuery(s1);
                      if(rs.next())
                      {
                      pname = rs.getString("prod_name");
                      }
                     
                      
                      if(Integer.parseInt(quantity) >0)
                         
                                                   {
                      s2="insert into quatition2(username,sup_name,date,prod_name,quantity) values('"+a +"','" +supname+"','" +date+ "' ,'" + pname + " ', " + quantity + ")";
                      st.executeUpdate(s2);
                      st  = cn.createStatement();
		    st.executeUpdate("insert into p_quotation(username,sup_name,date,prod_name,quantity) values('"+a +"','" +supname+"','" +date+ "' ,'" + pname + " ', " + quantity + ")");
                     // response.sendRedirect("admin_pur_quot2.jsp?id="+pid);
                        }
                                           
                      else
                          {
                         // response.sendRedirect("admin_pur_quot2.jsp?id="+pid);
                      }
                     response.sendRedirect("admin_pur_quot2.jsp?supname="+supname+"");
        		}catch(Exception e1)
				{
				out.print(e1.getMessage());
				}
     %>
    </body>
</html>
