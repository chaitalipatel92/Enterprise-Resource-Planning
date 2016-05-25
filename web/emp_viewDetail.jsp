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
.style5 {font-size: 16px}
.style7 {
	font-size: 14px;
	font-weight: bold;
}
.style8 {font-size: 14px}
.style9 {font-family: "Times New Roman", Times, serif}
.style19 {font-size: 9pt}
.style20 {
	font-size: 24px;
	font-weight: bold;
}
.style22 {font-size: 18px}
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
                            <li><a href="employee.jsp" class="first"><strong>Home</strong></a></li>
                             <li class="style7"><a href="emp3.jsp" class="style8"><u>PRIVACY SETTINGS</u></a></li>
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
       <center>
            <h2>
            <font color="#000000">
             
            </h2>
  <div id="cssmenu">
		<ul>
                    <li class="current_page_item"><a href="employee.jsp" class="style1 style2">Employees</a></li>
		<li><a href="" class="style3">Leave Request TO Approve</a></li>
	
		</ul>
      </div> 
        	<div id="content" align="center">
            <div class="post">
            <br>
            <h2 align="center" class="title"><a href="employee.jsp" class="style20"><u>EMPLOYEE</u></a><span class="style19"><span class="style22">/details</span></span></h2>
<div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
                <strong> <div style="font-size:14px">
                <%            
          try
                     {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from emp2 where user =+'"+ a + "' ");
                     
                        if(rs.next())
                        {
                     out.print("<table border='1' bgcolor='#CCCCCC' width = 80% height = 500 style='color:#000000'>");
                     out.print("<tr>");
                    out.print("<td width=170>User Name:</td> <td>"+ rs.getString(1)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Employee Name:</td> <td>"+ rs.getString(2)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Nationality :</td> <td>"+ rs.getString(3)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Bank AccointNo::</td> <td>"+ rs.getString(4)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Gender:</td> <td>"+ rs.getString(5)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Marital Status:</td> <td>"+ rs.getString(6)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Address:</td> <td>"+ rs.getString(7)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>mobile No::</td> <td>"+ rs.getString(8)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Date Of Birth::</td> <td>"+ rs.getString(9)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Place of Birth</td> <td>"+ rs.getString(10)+"</td>");
                     out.print("</tr>");
                     
                     out.print("<tr>");
                    out.print("<td>Sequrity Question</td> <td>"+ rs.getString(11)+"</td>");
                     out.print("</tr>"); 
                     
                     out.print("<tr>");
                    out.print("<td>Answer</td> <td>"+ rs.getString(12)+"</td>");
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
<div id="cssmenu1">
              <a> <h4 class="style9" align="center"> <marquee behavior="alternate">LATEST NEWS</marquee></h4></a> 
               <p><a class="style4">A construction ERP lab was inaugurated by National Institute of Construction Management and Research (NICMAR), Aurigo Software Technologies and Microsoft at the NICMAR campus in Pune</a></p> 
		       <p><a class="style4">The objective of Aurigo's and Microsoft's software grant is to provide construction management students of NICMAR access to the same best-in-class, construction-ready ERP solution that is deployed in many global projects across the world.</a></span></p> 
		       <p><a class="style5">The Dakshin Haryana Bijli Vitran Nigam (DHBVN) launched the Enterprise Resource Planning (ERP) system on Friday to bring more efficiency and transparency in its working. Officials of the Nigam said that DHBVN goes high tech in managerial control by introducing online control of all enterprise resources in integrated manner.</a></p> 
      </div> 
      <div style="clear: both;">&nbsp;</div> 
       
             </div> 
      <br> 
    
    <div id="footer-bgcontent"> 
	<div id="footer"> 
<p><a href="employee.jsp">Home</a>  |  <a href="logout.jsp">logout</a> </p> 
	</div> 
	</div> 
	<!-- end #footer -->  
    </body> 
</html> 
