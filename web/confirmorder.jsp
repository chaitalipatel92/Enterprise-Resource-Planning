<%-- 
    Document   : confirmorder
    Created on : Apr 16, 2013, 7:13:22 PM
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
try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String s1 = "select * from temp";
                     rs = st.executeQuery(s1);
                          String  pid = "" ,pname ="", price ="" ,qty = "", pqty ="", tamt = "",date = "";
                     String s2[] = new String[100];                       
                     String s3[] = new String[100];
                     String s4[] = new String[100];                       
                     int n =0, i;                     
                     while(rs.next())
                                                 {
                                        pid  =rs.getString("id");
                                        pname  =rs.getString("pname");
                                        price  = rs.getString("price");
                                        pqty  = rs.getString("pqty");
                                        tamt  = rs.getString("total");
                                        date  = rs.getString("date");
                                
                                        s2[n] = "insert into s_order (username,date,prod_name,prod_id,rate,qty,total) values('"+a+"','"+date+"','"+pname+"',"+pid+","+price+","+pqty+","+tamt+")";
                                        s3[n] = "update product set pro_qty = pro_qty - "+ pqty +" where prod_id ="+pid ;
                                        s4[n] = "update warehouse set quantity = quantity - "+ pqty +" where prod_name = '"+pname+"'" ;
                                    //    out.print(s2[n]);
                                        n++;    
                     }
                     for(i=0; i<n;i++)
                    {
                    st  = cn.createStatement();
                    st.executeUpdate(s2[i]);
                    }
                    for(i=0; i<n;i++)
                    {
                    st  = cn.createStatement();
                    st.executeUpdate(s3[i]);
                    }
                      for(i=0; i<n;i++)
                    {
                    st  = cn.createStatement();
                    st.executeUpdate(s4[i]);
                    }
                    
                    st  = cn.createStatement();
                    st.executeUpdate("delete from temp");
                    st  = cn.createStatement();
                     st.executeUpdate("delete from quatition");
                     
                    response.sendRedirect("home.jsp");
                             }catch(Exception e1)
                     {  
                    
                     }
%>
<br>
<br>
<h1>
Your order is confirmed. Product(s) will be delivered to you within 2 weeks.
</h1>


</body>
</html>
