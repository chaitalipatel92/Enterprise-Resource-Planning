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
					  Connection cn=null;
        				Statement st=null;
				        ResultSet rs=null;
                                        String s ="";
                                        
                                        String  pid = "" , price ="" ,qty = "", pqty ="", tamt = "",date;
                                        pid  = request.getParameter("id");
                                        price  = request.getParameter("price");
                                        qty  = request.getParameter("qty");
                                        pqty  = request.getParameter("pqty");
                                        tamt  = request.getParameter("tamt");
                                        date  = request.getParameter("date");
                                        
                                        out.print (date);
                                        
		
                                        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","") ;
                      st  = cn.createStatement();
                      String s1, pname="",s2;
                      String prod_qty ="0";
                      
                      
                     s1="select * from product where prod_id = "+ pid;
                      rs = st.executeQuery(s1);
                      if(rs.next())
                      {
                      prod_qty = rs.getString("pro_qty");
                      pname = rs.getString("prod_name");
                      }                                                                  
                     //out.print("prod qty  ="+ prod_qty); 
                     /* s1="select sum(pqty) from temp where id = "+ pid;
                      rs = st.executeQuery(s1);
                      if(rs.next())
                      {
                      temp_qty = rs.getString(1);
                      }
                      if(temp_qty == null)
                          temp_qty="0";
                    // out.print("temp qty  ="+ temp_qty); 
                      int totalQty=0;
                      totalQty = Integer.parseInt(prod_qty) - Integer.parseInt(temp_qty);
                      
                      
                      if(totalQty>Integer.parseInt(pqty))
                      {
                      s1="select * from product where prod_id = "+ pid;
                      rs= st.executeQuery(s1);
                      if(rs.next())
                                                   {
                          pname = rs.getString("prod_name");
                                                   }*/
                   if(Integer.parseInt(pqty)>0)
                         
                                                   {
                      s2="insert into temp(id,pname,price,aqty,pqty,total,date) values("+ pid + ",'" +pname+"'," +price+ " ," + qty + " , " + pqty + " , " + tamt +",'"+date+"')";
                     // out.print(s2);
                      st.executeUpdate(s2);
                      
                        }
                                           
                      else
                          {
                      }
                      response.sendRedirect("salesorder3.jsp?id="+pid);
        		}catch(Exception e1)
				{
				out.print(e1.getMessage());
				}
                     
     %>
    </body>
</html>
