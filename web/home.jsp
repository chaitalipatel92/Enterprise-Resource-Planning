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
.style6 {color: #0033FF}
.style7 {
	font-size: 14px;
	font-weight: bold;
}
.style8 {font-size: 14px}
.style9 {font-family: "Times New Roman", Times, serif}
.style11 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 16px;
}
.style12 {font-family: Geneva, Arial, Helvetica, sans-serif}
.style14 {color: #FFFF00}
-->
    </style>
    <script>
        function check(value)
        {
        if(value == 0)
            alert("SORRY !!!! \nYou are not authorised to access this module !!!!");
        else
            {}
        }
        
    </script>
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
                                     a1 ="";
                                 else
                                     a1 ="";
                                 
                                 a2 = rs.getString("purchase"); 
                                 if(a2.equals("1"))
                                     a2 ="quot1.jsp";
                                 else
                                     a2 ="";
                                 
                                 a3 = rs.getString("hr"); 
                                 if(a3.equals("1"))
                                     a3 ="";
                                 else
                                     a3 ="";
                                 
                                 a4 = rs.getString("warehouse");                                                                                                                                    
                                 if(a4.equals("1"))
                                     a4 ="";
                                 else
                                     a4 ="";
                                 
                               }
                                                     
                                         }catch(Exception e1)
                                   {}
            %>
	<div id="header">
		<div id="menu">
			<ul>
                            <li class="current_page_item"><a href="home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="<%=a1%>" class="first style14" onClick="check('<%=a1%>')"><strong>Sales</strong></a></li>
                             <li><a href="<%=a2%>" onClick="check('<%=a2%>')"><strong>Purchase</strong></a></li>
                            <li><a href="<%=a3%>" onClick="check('<%=a3%>')"><strong>Human Resource</strong></a></li>
                            <li><a href="<%=a4%>" onClick="check('<%=a4%>')"><strong>Warehouse</strong></a></li>
                            <li><a href="customer_products.jsp"><strong>PRODUCTS</strong></a></li>
                             <li><a href="cust_security.jsp"><strong>PRIVACY SETTINGS</strong></a></li>
                            <li class="style7"><a href="logout.jsp" class="style8"><u>LOGOUT</u></a></li>
		  </ul>
                       
	  </div>
		<!-- end #menu -->
        </div>
        <!-- end #header -->
	<!-- end #header-wrapper -->
    <br>
    
   <div id="bg1">

    <div id="page">
    <br>
       <center>
            <h2>
            <font color="#000000">
                <%
            out.println("Welcome  " + " " +a+ "!!!!");
            %>
            
            </h2>
  <div id="cssmenu">
		<ul>

		<li><a href="<%=a1%>" class="style1 style2" onClick="check('<%=a1%>')">Sales</a></li>
                <li><a href="<%=a2%>" class="style3" onClick="check('<%=a2%>')">Purchase</a></li>
		<li><a href="<%=a3%>" class="style4" onClick="check('<%=a3%>')">Human Resource</a></li>
		<li><a href="<%=a4%>" class="style4" onClick="check('<%=a4%>')">Warehouse</a></span></li>
                <li><a href="customer_products.jsp" class="style4">PRODUCTS</a></span></li>
		</ul>
      </div> 
        	<div id="content" align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="images/header.jpg" width="707" height="159"/> 
            <br><br>
<div class="post2">
      <div class="entry style6 style11">
        <ul>
          <li><strong class="style6 ">The key to understanding ERP software is to think “integration.” ERP software links systems across an enterprise to streamline workflow, share information among different departments, and provide insight into a business’s operations.</strong></li>
          </ul>
        <ul>
          <li><strong class="style6 ">An ERP system does away with each department using its own software to do its work . Instead, an ERP system stores all company data in a single, relational database.</strong></li>
        </ul>
        </div>
            </div>
            <div class="post2" style="margin-left:10px">
      <div class="entry style6">
            <img src="images/8.jpg" alt="erp" width="200" height="405" />            </div>
            </div>    
            <div class="post2 style9" style="float:right">
            <div class="entry style6 style5 style12">
           <ul>
             <li><strong>Microsoft has unveiled plans to allow customers to access its ERP software over the Internet. The next release of Microsoft Dynamics AX will include a new Windows eight  user interface and will able to be delivered on the web with HTML 5 user interface from Windows Azure.</strong></li>
             </ul>
           <ul>
             <li><strong class="style6 ">This is the feedback according to Hal Howard, corporate VP of Microsoft Dynamics engineering at today’s Microsoft Dynamics Technical conference. </strong></li>
           </ul>
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
             </div>
      <br>
    
    <div id="footer-bgcontent">
	<div id="footer">

<p><a href="<%=a1%>">Sales</a>  |  <a href="<%=a2%>">purchase</a> |  <a href="<%=a3%>">human resource</a> |  <a href="<%=a4%>">warehouse</a></p>
	</div>
	</div>
	<!-- end #footer --> 
    </body>
</html>
