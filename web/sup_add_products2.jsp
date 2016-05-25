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
                                       
                                        String  product = "", price ="", supid = "";
                                        product  = request.getParameter("prodname");
                                        price = request.getParameter("price");
                                        supid  = request.getParameter("id");
                                        String supname = "";
                                        supname = request.getParameter("supname");
           
                                        
                                       
                                     //  out.print (supid + " "+ price+ " " + product + " " + supname);
                                        
		 try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","") ;
                      st  = cn.createStatement();
                      String s2;
                      
                    if(Integer.parseInt(price) >0 && product.length() != 0)
                         
                                                   {
                      s2="insert into sup_products(sup_id,prod_name,price) values("+ supid +",'" +product+"'," +price+ ")";
                      st.executeUpdate(s2);
                      
                        }
                     else
                          {
                         
                      }
                    response.sendRedirect("sup_add_products.jsp?id="+supid+"&supname="+supname+"");
        		}catch(Exception e1)
				{
				out.print(e1.getMessage());
				}
     %>
    </body>
</html>
