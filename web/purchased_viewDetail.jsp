<%-- 
    Document   : main
    Created on : Mar 1, 2013, 11:49:06 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Rickys web templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
       
    <style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {font-size: 9%}
.style3 {color: #FFFFFF; font-size: 9%; }
.style4 {color: #FFFFFF; font-size: 10%; }
.style5 {color: #000000}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {font-size: 14px}
.style11 {font-weight: bold}
.style14 {color: #000000; font-weight: bold; font-size: 14; }
.style16 {color: #0000FF}
.style19 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
-->
    </style>
     
    </head>
    <body>
     
     <form method="POST">
	
             <div id="wrapper">
	<div id="logo">
		<h1>Enterprice Resource Planning</h1>
		<p><em>PROVIDES BEST SOLUTIONS FOR YOUR BUSINESS COMPANY<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr />
	<!-- end #logo -->
        <%
            String a=session.getAttribute("uname").toString();
           // out.println("Welcome  " + " " +a+ "!!!!");
        Connection cn;
        Statement st;
        ResultSet rs;
        String s1;
        String a1="",a2="",a3="",a4="";
        
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                       s1 = "select * from user where user ='"+ a + "'";
                              // out.print(s);
                               rs = st.executeQuery(s1);
                               if(rs.next())   
                                {
                                   
                                 a1 = rs.getString("sales"); 
                                 //out.print(a1);
                                 if(a1.equals("1"))
                                     a1 ="admin_sale_quot.jsp";
                                 else
                                     a1 ="";
                                 
                                 a2 = rs.getString("purchase"); 
                                 if(a2.equals("1"))
                                     a2 ="admin_pur_quot.jsp";
                                 else
                                     a2 ="";
                                 
                                 a3 = rs.getString("hr"); 
                                 if(a3.equals("1"))
                                     a3 ="hr1.jsp";
                                 else
                                     a3 ="";
                                 
                                 a4 = rs.getString("warehouse");                                                                                                                                    
                                 if(a4.equals("1"))
                                     a4 ="ware1.jsp";
                                 else
                                     a4 ="";
                                 
                               }
                                         }catch(Exception e1)
                                   {}
                                %>
	<div id="header">
		<div id="menu">
			<ul>
                           <li><a href="admin_home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
                            <li><a href="<%=a2%>"><strong>Purchase</strong></a></li>
                             <li><a href="<%=a3%>"><strong>Human Resource</strong></a></li>
                            <li class="current_page_item"><a href="<%=a4%>"><strong>Warehouse</strong></a></li>
                            <li class="style7"><a href="logout.jsp" class="style8"><u>LOGOUT</u></a></li> 
			</ul>
                       
		</div>
		<!-- end #menu -->
        </div>
        <!-- end #header -->
	<!-- end #header-wrapper -->
    <br>
    
   

    <div id="bg">
    <div id="page">
    <br>
        
        <div id="cssmenu">
		<ul>
                <li><a href="ware1.jsp" class="style1 style2">All Products History</a></li>
                <li><a href="saled_products.jsp" class="style1 style2">Saled Products History</a></li>
		<li class="current_page_item"><a href="purchased_products.jsp" class="style3">Purchased Products History</a></li>
		
		</ul>
      </div>  
        	<div id="content">
            <div class="post">
            <br>
            <h2 class="title"><span class="style19"><a href="purchased_products.jsp" class="style5"><u>purchased products</u></a>/<span class="style21 style16">details</span></span></h2>
<div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
                <strong> <div style="font-size:14px">
                <%
                
                 String pname ;
                 pname = request.getParameter("x");
               
          try
                     {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from p_order where prod_name = '"+ pname +"'");
                     
                     out.print("<table border =1 width ='100%' align ='center' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
					 	out.print ("<tr bgcolor ='blue' style = 'color:#FFFFFF'>");
						out.print("<th colspan=3 align = 'center'>Product &nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp "+pname+" </th>");
                                                //out.print("<td colspan=3 align = 'center'>"+ pname + "</td>");
						 out.print ("</tr>");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print("<th>Date</th><th>Supplier Name</th><th>Quantity</th>");
                         
                        out.print ("</tr>");
                        while(rs.next())
                            {
                            out.print("<tr align = 'center'>");
                            //String user = rs.getString("username");
                            out.print("<td>"+ rs.getString("date") + "</td>");
                            out.print("<td>"+ rs.getString("sup_name") + "</td>");
                            out.print("<td>"+ rs.getString("quantity") + "</td>");
                            out.print("</tr>");
                            }
                          out.print("</table>");
                      
        }catch(Exception e)
        {  
            out.print(e.getMessage());
        }
       %>  
                </strong></div>
       </div>
       </div>
        </div>
            
<div id="right">
            
            <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="left">
                    <blockquote>
                      <p><a href="user.jsp"><img src="images/log2.jpg" width="172" height="101"/>
                      <span class="style14 style5 style8"> USER </span></a></p>
                    </blockquote>
                  </div>
              </div>
            </div>
            
            <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="right">
                    <blockquote>
                     
                      <p align="center"><a href="products.jsp"><img src="images/prod.jpg" width="163" height="101"/>
                        <strong class="style14 style5 style8">PRODUCTS</strong></a></p>
                    </blockquote>
                  </div>
              </div>
            </div>
            <div class="post2">
              <div class="entry style6 style11">
               
                    <blockquote>
                     
                      <p align="center"><a href="supplier.jsp"><img src="images/sup.jpg" width="162" height="101"/>
                        <span class="style14 style5 style8"><strong>SUPPLIERS </strong></span></a></p>
                </blockquote>
              </div>
            </div>
            </div>
      <div style="clear: both;">&nbsp;</div>
      </div>
      </div>
      <br>
    
    <%@include file="footer.jsp"%>
    <!-- end #footer --> 
    </body>
</html>
