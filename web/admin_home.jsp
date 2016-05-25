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
<script type="text/javascript" language="javascript" src="jquery.js"></script>
script type="text/javascript" language="javascript" src="menu.js"></script>
       
       
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
.style14 {font-size: 18px; font-weight: bold; color: #000000; }
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
                            <li class="current_page_item"><a href="admin_home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
                            <li><a href="<%=a2%>"><strong>Purchase</strong></a></li>
                            <li><a href="<%=a3%>"><strong>Human Resource</strong></a></li>
                            <li><a href="<%=a4%>"><strong>Warehouse</strong></a></li>
                            
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
             <%
            out.println("Welcome  " + " " +a+ "!!!!");
            %>
            </h2>
  <div id="cssmenu">
<div id="firstpane" class="menu_list">
<p class="menu_head">SALES</p>
<div class="menu_body"> <a href="admin_sale_quot.jsp">Sales Quatation History</a> <a href="admin_sale_order.jsp">Sales Order History</a> </div>
<p class="menu_head">PURCHASE</p>
<div class="menu_body"><a href="admin_pur_quot.jsp">Request Quatation</a>  <a href="admin_pur_order.jsp">Place order</a>
 <a href="admin_quot_history.jsp">Purchase Quatation History</a> <a href="admin_order_history.jsp">Purchase Order History</a> </div>
<p class="menu_head">HUMAN RESOURCE</p>
<div class="menu_body"> <a href="hr1.jsp">Employee Detail</a> <a href="#">Leave Detail</a> </div>
<p class="menu_head">WARE HOUSE</p>
<div class="menu_body"> <a href="ware1.jsp">All Product detail</a> <a href="saled_products.jsp">Saled Product</a> <a href="purchased_products.jsp">Purchased product</a> </div>

      </div> </div>
        	<div id="content" align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <br> 
         <img src="images/8.jpg" alt="erp" width="400" height="504" />           
            
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

<p><a href="<%=a1%>">Sales</a>  |  <a href="<%=a2%>">purchase</a>  |  <a href="<%=a3%>">human resource</a> |  <a href="<%=a4%>">warehouse</a></p> 
	</div> 
	</div> 
	<!-- end #footer -->  
    </body> 
</html> 
