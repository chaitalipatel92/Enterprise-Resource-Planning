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
.style11 {
	color: #000000;
	font-weight: bold;
}
.style19 {font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style20 {color: #0000FF}
.style23 {color: #000000}
.style26 {
	font-style: italic;
	color: #990099;
	font-weight: bold;
	font-size: 14px;
}
.style27 {
	font-size: 14px;
	font-weight: bold;
}
.style29 {color: #000000; font-weight: bold; font-size: 14px; }
.style30 {font-size: 14px}
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
     
     <form method="POST" >
	
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
    <div id="page"><br>
        
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
            <h2 class="title"><span class="style19"><a href="products.jsp"><u>products</u></a>/<span class="style20">new</span></span></h2>
            <br>
    </div>
            
<form>
<table width=500" height="386" bgcolor="FFFFFF" cellpadding="5" border="1">
    <tr > <td width="490" height="380"><table width="584" border="0" height="368" bgcolor="CCCCCC"  >
  <tr>
    <td height="34" colspan="4" class="style8 style8"><span class="style27"><span class="style23">PRODUCT NAME:</span><span style="color:red">&nbsp;*</span>      
          <label></label>        
        </span></td>
    </tr>
  <tr>
    <td height="32" colspan="4" class="style8 style8"><span class="style27">
      <label> 
      <input type="text" name="pname" id="t1" size="50">
      </label>      
      <label></label>      
      </span></td>
    </tr>
  <tr>
    <td height="36" colspan="4" class="style8 style8"><span class="style26">INFORMATION:</span></td>
    </tr>
<tr>
    <td width="203" height="32" class="style8 style8"><span class="style29">PRODUCT TYPE:</span><span style="color:red">&nbsp;*</span></td>
    <td width="371" colspan="3" class="style8 style8"><strong>
      <label>
      <select name="ptype" id="t7">
       <option value="">--Select Type--</option>
      <option value="Mobile">Mobile</option>
      <option value="Laptop">Laptop</option>
      <option value="Computer">Computer</option>
      </select>
      </label>      
      </strong></td>
    </tr>
 
  <tr>
    <td height="32" class="style8 style8"><span class="style29">SALES PRICE:</span><span style="color:red">&nbsp;*</span></td>
    <td colspan="3" class="style8 style8"><strong>
      <label>
      <input type="text" name="pr" id="t8">
      </label>      
      </strong></td>
    </tr>
    <tr>
    <td height="32" class="style8 style8"><span class="style29">QUANTITY:</span><span style="color:red">&nbsp;*</span></td>
    <td colspan="3" class="style8 style8"><strong>
      <label>
      <input type="text" name="qty" id="qty">
      </label>      
      </strong></td>
    </tr>
    
    <tr>
    <td height="41" colspan="4" class="style8 style8"><span class="style29">DESCRIBE THE PRODUCT CHARACTERISTICS:</span></td>
    </tr>
    <tr>
    <td height="78" colspan="4" class="style8 style8">
      <span class="style27">
      <label>
      <textarea name="chr" id="t10" cols="80" rows="4"></textarea>
      </label>
       </span></td>
    </tr>
    <tr>
      <td height="32" colspan="4" class="style8 style8"><div align="center">
        <input type="submit" name="B1" id="B1" value="SAVE">
        &nbsp;&nbsp;&nbsp;
        
        <input type="button" name="B2" id="B2" value="CANCEL" onClick="document.location.href='products.jsp'">
        &nbsp;&nbsp;&nbsp;
        <input type="reset" name="B3" id="B3" value="RESET">
      </div></td>
    </tr>
  </table>
        </td>
  </tr>
</table>
            <strong>
        <%
        
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String pname,ptype,price,charc,s2,s3,qty;
                     
                     pname = request.getParameter("pname");
                     ptype = request.getParameter("ptype");
                     price=request.getParameter("pr");
                     charc=request.getParameter("chr"); 
                     qty=request.getParameter("qty"); 
                    
                     int i,j,k,l;
                     i = pname.length();
                     j = ptype.length();
                     k = price.length();
                    
                     if(i != 0 && j != 0 && k != 0)
                     {   
                         PreparedStatement pst;
                         
                         s2="insert into product(prod_name,prod_type,prod_price,prod_char,pro_qty) values(?,?,?,?,?)";
                                    pst = cn.prepareStatement(s2); 
                                    
                                    pst.setObject(1,pname);
                                    pst.setObject(2,ptype);
                                    pst.setObject(3,price);
                                    pst.setObject(4,charc);
                                    pst.setObject(5,qty);
                                    pst.executeUpdate(); 
                                    
                        s3="insert into warehouse(prod_name,quantity) values('"+pname +"', "+ qty + ")";
                      st.executeUpdate(s3);            
                          
                     response.sendRedirect("products.jsp");
                     }
                     else
                     {
                         out.print("<script>alert('All the fields marked with * must be filled out!!')</script>");
                     }
                             
        }catch(Exception e)
        {  
        }
       %>  
        </strong>
    
</div>

            <div id="right">
            
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
            
            <div class="post2">
              <div class="entry style6 style11">
               
                    <blockquote>
                     
                      <p align="center"><a href="supplier.jsp"><img src="images/sup.jpg" width="162" height="101"/>
                        <span class="style14 style5 style8 style23 style30"><strong>SUPPLIERS </strong></span></a></p>
                </blockquote>
              </div>
            </div>
	</form>
            </div>            
      <div style="clear: both;">&nbsp;</div>
      </div>
    </div>
      <br>
    
   <%@include file="footer.jsp"%>
   <!-- end #footer --> 
    </body>
</html>
