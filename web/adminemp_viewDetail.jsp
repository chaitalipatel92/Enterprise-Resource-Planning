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
.style5 {
	color: #0033CC;
	font-weight: bold;
}
.style7 {color: #000000}
.style11 {
	font-size: 14px;
	font-weight: bold;
	font-style: italic;
}
.style14 {font-size: 14px}
.style17 {font-size: 14px; font-weight: bold; }
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
        String s1,s2;
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
                         <li><a href="home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
				<li><a href="<%=a2%>"><strong>Purchase</strong></a></li>
                                <li class="current_page_item"><a href="<%=a3%>"><strong>Human Resource</strong></a></li>
                                
                                <li><a href="<%=a4%>"><strong>Warehouse</strong></a></li>
                                 <li class="style7"><a href="index.jsp" class="style8"><strong><u>LOGOUT</u></strong></a></li>
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
                    <li class="current_page_item""><a href="hr1.jsp" class="style1 style2">Employees</a></li>
		<li><a href="hrleave.jsp" class="style3">Leave Request TO Approve</a></li>
		</ul>
      </div> 
        	<div id="content">
           <div class="post">
            <br>
            <h2 class="title"><span class="style19"><a href="hr1.jsp" class="style5"><u>EMPLOYEE</u></a>/<span class="style21">details</span></span></h2>
            <div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
                <strong> <div style="font-size:14px">
                <%
                String cid ;
                cid  = request.getParameter("x");
          try
                     {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select user.user,user.pass,user.email,emp2.emp_name,emp2.nation,emp2.acnt_no,emp2.gender,emp2.mrg_status,emp2.ad,emp2.mob,emp2.dob,emp2.birthplace,emp2.s_ques,emp2.ans from user,emp2 where user.user=emp2.user && client_id=" +cid);
                     
                        if(rs.next())
                        {
                     out.print("<table border='1' bgcolor='#CCCCCC' width = 80% height = 500 style='color:#000000'>");
                     out.print("<tr>");
                    out.print("<td>User Name :</td> <td>"+ rs.getString(1)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Password :</td> <td>"+ rs.getString(2)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Email Id:</td> <td>"+ rs.getString(3)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Employee Name:</td> <td>"+ rs.getString(4)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Nationality:</td> <td>"+ rs.getString(5)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Bank Account No:</td> <td>"+ rs.getString(6)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Gender:</td> <td>"+ rs.getString(7)+"</td>");
                     out.print("</tr>");
                    
                     out.print("<tr>");
                    out.print("<td>Marital Status:</td> <td>"+ rs.getString(8)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Address:</td> <td>"+ rs.getString(9)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Mobile No:</td> <td>"+ rs.getString(10)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Date of Birth:</td> <td>"+ rs.getString(11)+"</td>");
                     out.print("</tr>");
                      
                     out.print("<tr>");
                    out.print("<td>Place of Birth:</td> <td>"+ rs.getString(12)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Sequrity question:</td> <td>"+ rs.getString(13)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Answer:</td> <td>"+ rs.getString(14)+"</td>");
                     out.print("</tr>");
                     
                     
            out.print("</table>");
                       }
        }catch(Exception e)
        {  
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
                      <span class="style14 style5 style8 style7"> USER </span></a></p>
                    </blockquote>
                  </div>
              </div>
            </div>
            
            <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="right">
                    <blockquote>
                     
                      <p align="center"><a href="products.jsp"><img src="images/prod.jpg" width="163" height="101"/>
                        <strong class="style14 style5 style8 style7">PRODUCTS</strong></a></p>
                    </blockquote>
                  </div>
              </div>
            </div>
            <div class="post2">
              <div class="entry style6 style11">
               
                    <blockquote>
                     
                      <p align="center"><a href="supplier.jsp"><img src="images/sup.jpg" width="162" height="101"/>
                        <span class="style14 style5 style8 style7"><strong>SUPPLIERS </strong></span></a></p>
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
