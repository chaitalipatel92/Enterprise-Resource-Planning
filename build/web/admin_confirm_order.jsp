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
        String supname="";
        supname  = request.getParameter("supname");
                  Connection cn=null;
        				Statement st=null;
				        ResultSet rs=null;
try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String s1 = "select * from temp2";
                     rs = st.executeQuery(s1);
                          String pname ="",qty = "",date = "",price="",total="";
                     String s2[] = new String[100];                       
                     String p[] = new String[100];
                     String q[] = new String[100];
                     String s3;                     
                     String s4;
                     String s5;
                     int n =0, i;                     
                     while(rs.next())
                                                 {
                                        price = rs.getString("price");
                                        total = rs.getString("total");
                                        pname  =rs.getString("prod_name");
                                        qty  = rs.getString("quantity");
                                        date  = rs.getString("date");
                                
                                        s2[n] = "insert into p_order(username,sup_name,date,prod_name,price,quantity,total) values('"+a +"','" +supname+"','" +date+ "' ,'" + pname + " ', " + price + ", " + qty + "," +total+")";
                                        p[n] = pname;
                                        q[n] = qty;
                                        n++;    
                                    }
                     for(i=0; i<n;i++)
                    {
                    st  = cn.createStatement();
                    st.executeUpdate(s2[i]);
                    }
                  for(i=0; i<n; i++)
                                           {
                     s3="select * from warehouse where prod_name ='"+p[i]+"'";
                     rs = st.executeQuery(s3);
                     boolean b;
                               if(rs.next())
                               {
                                   b=true;
                               }
                                else
                              {
                                    b=false;
                               }
                     
                     if(b==true)
                      {
                         s4 = "update warehouse set quantity = quantity + "+ q[i] +" where prod_name ='"+p[i]+"'";
                         
                                             st  = cn.createStatement();
                                             st.executeUpdate(s4);
                                       
                      }
                      else
                      {
                         s5 = "insert into warehouse(prod_name,quantity) values('" + p[i] + " ', "+ q[i] + ")";
                         
                                             st  = cn.createStatement();
                                             st.executeUpdate(s5);
                        } 
                                              
                                         }
                     
                    st  = cn.createStatement();
                    st.executeUpdate("delete from temp2");
                     response.sendRedirect("admin_home.jsp");
                    
                                       
                             }catch(Exception e1)
                     {  
                    
                     }
%>

</body>
</html>
