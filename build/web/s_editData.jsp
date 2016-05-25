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
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
.style11 {font-weight: bold}
.style14 {color: #000000; font-weight: bold; font-size: 14; }
.style19 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style21 {color: #0000FF}
body {
	background-repeat: repeat;
}
a:link {
	color: #0033FF;
}
.style31 {font-size: 14px; color: #000000; font-weight: bold; }
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
                            <li><a href="home.jsp" class="first"><strong>Home</strong></a></li>
                            <li class="current_page_item"><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
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
            <br>
            <h2 class="title"><span class="style19"><a href="supplier.jsp" class="style5"><u>Suppliers</u></a>/<span class="style21">edit</span></span></h2>
<div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
                <p><strong>
                <%
                
                 String sid ="";
                sid  = request.getParameter("x");
        
        	String  sname = "", cname = "" , sadd = "" , phn = "", web = "", email = "", desig = "";
					 
                     String cpn1 = request.getParameter("cpname");
                     String  add1 = request.getParameter("add");
                     String desig1 = request.getParameter("des");
                     String  phn1 = request.getParameter("ph");
				
                    try
                     {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
					 if(cpn1.length() != 0 && phn1.length() != 0)
					{
						st.executeUpdate("update supplier set cp_name = '" + cpn1 + "', sup_add = '" + add1 +"',designation = '" + desig1 + "', phone = '" + phn1 +"' where sup_id =" + sid);
						out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                
                                                out.print("DATA UPDATED");
					}
					 else
                                                                                         {
                         out.print("<script>alert('Company Name and Phone must be filled out')</script>");
                                         }
					}catch(Exception e1)
					{
						
					}			
						
					
        
        
          try
                     {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from supplier where sup_id = "+ sid);
                     
                        if(rs.next())
                        {
							sname = rs.getString("s_name");
							cname = rs.getString("cp_name");
							sadd = rs.getString("sup_add");
							desig = rs.getString("designation");
                                                        web = rs.getString("website");
							phn = rs.getString("phone");
							email = rs.getString("email");
                       }
                     
                    // response.sendRedirect("index3.jsp");
        }catch(Exception e)
        {  
        }
       %>  
                </strong>                </p>
                <table width="605" border="1" height="354" bgcolor="#CCCCCC" align="center">
                  <tr>
                    <th width="240" height="36" scope="row"><div align="left" class="style31">ID: </div></th>
                    <td width="349"><div align="left" style="color:#000000"><%=sid%></div></td>
                  </tr>
                  <tr>
                    <th height="32" scope="row"> <div align="left" class="style31">Supplier Name: </div></th>
                    <td><div align="left" style="color:#000000"><%=sname%></div></td>
                  </tr>
                  <tr>
                    <th height="36" scope="row"> <div align="left" class="style31">Company Name: </div></th>
                    <td>
                    <div align="left"><input type="text" name="cpname" id="t2" value ='<%=cname%>' size="50"> </div></td>
                  </tr>
                   <tr>
                    <th height="36" scope="row"> <div align="left" class="style31">Address: </div></th>
                    <td><div align="left" style="color:#000000"><input type="text" name="add" id="t2" value ='<%=sadd%>' size="50" > </div></td>
                  </tr>
                  <tr>
                    <th height="32" scope="row"><div align="left" class="style31">Designation :</div></th>
                    <td>
                      <div align="left">
                      <input type="text" name="des" id="t1" value ='<%=desig%>' size="50" >
                      </div></td>
                  </tr>
                  <tr>
                    <th height="31" scope="row"><div align="left" class="style31">Website :</div></th>
                    <td><div align="left" style="color:#000000"><%=web%></div></td>
                  </tr>
                  <tr>
                    <th height="37" scope="row"><div align="left" class="style31">Phone :</div></th>
                    <td>
                      <div align="left">
                        <input type="text" name="ph" id="t3" value ='<%=phn%>' size="50" >
                      </div></td>
                  </tr>
                  <tr>
                    <th height="35" scope="row"><div align="left" class="style31">Email :</div></th>
                    <td><div align="left" style="color:#000000"><%=email%></div></td>
                  </tr>
                  <tr>
                    <th height="57" colspan="2" scope="row">                      
                      
                      <div align="center" class="style31">
                        <input type="submit" name="Submit" id="Submit" value="&lt;&lt; UPDATE &amp; BACK">                    
                    </div></th>
                  </tr>
                </table>
                <br><br>
                <div align="center">
                    <input type="button" name="b2" id="b2" value="ADD/DELETE PRODUCTS &gt;&gt;" onClick="document.location.href='sup_prod_add_delete.jsp?x='+ '<%=sid%>'+ '&supname='+'<%=sname%>'">
                  <br>
                </div>
</div>
       </div>
        </div>
            
<div id="right">
            <div class="post2">
              <div class="entry style6 style11">
                
                  
                    <blockquote>
                     
                      <p align="center"><a href="products.jsp"><img src="images/prod.jpg" width="163" height="101"/>
                        <strong class="style14 style5 style8">PRODUCTS</strong></a></p>
                    </blockquote>
              </div>
            </div>
             <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="left">
                    <blockquote>
                      <p><a href="user.jsp"><img src="images/log2.jpg" width="172" height="101"/>
                      <span class="style14 style5 style8 style23 style30"> USER </span></a></p>
                    </blockquote>
                  </div>
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
