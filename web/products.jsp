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
.style19 {	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
-->
    </style>
    <script>
         $(document).ready(function()
{
	//slides the element with class "menu_body" when paragraph with class "menu_head" is clicked 
	$("#firstpane p.menu_head").click(function()
    {
		$(this).css({backgroundImage:"url(down.png)"}).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
       	$(this).siblings().css({backgroundImage:"url(left.png)"});
	});

});
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
                           
                            <li><a href="<%=a4%>"><strong>Warehouse</strong></a></li>
                             <li class="style7"><a href="logout.jsp" class="style8"><strong><u>LOGOUT</u></strong></a></li>
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

      </div> 
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><br>
</h2>
            <h2 class="title"><span class="style19">products</span></h2>
            <br>
            <div class="entry">
                <input name="v1" type="button" value="ADD" onClick="document.location.href='product_add.jsp'">
                </div>
             </div>
                    
    <p style="color:#000000">
<strong>
 <%
       
                     try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from product");
                     out.print("<table border =1 width ='90%' align ='center' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print("<th>Product Name </th><th></th><th></th><th></th>");
                         
                        out.print ("</tr>");
                        while(rs.next())
                                                       {
                            out.print("<tr align = 'center'>");
                            String pid = rs.getString("prod_id");
                           // out.print("<td>"+ pid + "</td>");
                            out.print("<td>"+ rs.getString("prod_name") + "</td>");
                            out.print("<td width = '100'> <a href ='p_viewDetail.jsp?x="+ pid +"'>fullDetail</a></td>");
                            out.print("<td width = '100'> <a href ='p_deleteData.jsp?x="+ pid +"'>Delete</a></td>");
                            out.print("<td width = '100'> <a href ='p_editData.jsp?x="+ pid +"'>Edit</a></td>");
                            out.print("</tr>");
                            
                        }
                          out.print("</table>");
                         
                         }catch(Exception e)
                     {  
                    
                     }
       %>  
		</strong>
        </p>
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
