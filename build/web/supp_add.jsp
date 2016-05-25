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
.style11 {font-weight: bold}
.style14 {color: #000000; font-weight: bold; font-size: 14; }
.style16 {color: #0000FF}
.style19 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style21 {color: #000000; font-weight: bold; }
.style23 {font-size: 14px; font-weight: bold; }
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
            <h2 class="title"><span class="style19"><a href="supplier.jsp"><u>suppliers/</u></a><span class="style16">ADD</span></span></h2>
            <div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <br>
           
           
            <table width="684" height="394" border="1" cellpadding="5" bgcolor="#FFFFFF">
    <tr><td width="666" colspan="2"><table width="675" height="345" border="0" cellpadding="4" bgcolor="#CCCCCC">
    <tr>
     <td width="163">
     <strong><span class="style21 style8 style8">SUPPLIER NAME:</span><span style="color:red">&nbsp;*</span></strong>     </td>
      <td height="35" colspan="3"><input type="text" name="sn" value="" size="60" /></td>
      </tr>
    <tr>
    <td>
     <strong><span class="style21 style8 style8">COMPANY NAME:</span><span style="color:red">&nbsp;*</span></strong>
     </td>
      <td height="36" colspan="3"><input type="text" name="cpn" value="" size="60" /></td>
      </tr>
   
    <tr>
      <td><strong><span class="style21 style8 style8">ADDRESS:</span></strong></td>
      <td height="27" colspan="3"><input type="text" name="a1" value="" size="30" /></td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="27" colspan="3"><input type="text" name="a2" value="" size="30" /></td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td width="490" height="27"><select name="a3" width="15" style="width:auto" size="0">
          <option value="">-------------------state--------------------</option>
          <option value="andhra pradesh">andhra pradesh</option>
          <option value="aruachal pradesh">aruachal pradesh</option>
          <option value="assam">assam</option>
          <option value="bihar">bihar</option>
          <option value="chandgarh">chandgarh</option>
          <option value="chhatisgarh">chhatisgarh</option>
          <option value="delhi">delhi</option>
          <option value="goa">goa</option>
          <option value="gujarat">gujarat</option>
          <option value="haryana">haryana</option>
          <option value="himachal pradesh">himachal pradesh</option>
          <option value="jammu & kashmir">jammu & kashmir</option>
          <option value="jharkhand">jharkhand</option>
          <option value="karnataka">karnataka</option>
          <option value="kerala">kerala</option>
          <option value="madhyaparesh">madhyapradesh</option>
          <option value="manipur">manipur</option>
          <option value="meghalaya">meghalaya</option>
          <option value="mizoram">mizoram</option>
          <option value="nagalad">nagaland</option>
          <option value="orissa">orissa</option>
          <option value="pujab">punjab</option>
          <option value="pondicherrry">pondicherry</option>
          <option value="rajasthan">rajasthan</option>
          <option value="sikkim">sikkim</option>
          <option value="tamilnadu">tamilnadu</option>
          <option value="tripura">tripura</option>
          <option value="uttar pradesh">uttar pradesh</option>
          <option value="uttarachal">uttaranchal</option>
          <option value="west begal">west begal</option>
        </select></td>
    </tr>
   
    <tr>
      <td height="35" class="style5 style9"><span class="style8 style8"><strong>DESIGNATION:</strong></span></td>
      <td colspan="3"><input type="text" name="desig" value="" size="30" />
        </td>
      </tr>

<tr>
      <td height="35" class="style5 style9"><span class="style8 style8"><strong>WEBSITE:</strong></span></td>
      <td><input type="text" name="web" value="" size="30" /></td>
    </tr> 
     <tr>
      <td><strong><span class="style21 style8 style8">PHONE:</span><span style="color:red">&nbsp;*</span></strong></td>
      <td height="27" colspan="3"><input type="text" name="phn" value="" size="30" /></td>
      </tr>
       <tr>
      <td><strong><span class="style21 style8 style8">EMAIL:</span><span style="color:red">&nbsp;*</span></strong></td>
      <td height="27" colspan="3"><input type="text" name="email" value="" size="30" /></td>
      </tr>  
    <tr>
      <td height="32" colspan="4" class="style8 style8"><div align="center">
        <input type="submit" name="B1" id="B1" value="CONTINUE">
        &nbsp;&nbsp;&nbsp;
        
        <input type="button" name="B2" id="B2" value="CANCEL" onClick="document.location.href='supplier.jsp'">
        &nbsp;&nbsp;&nbsp;
        <input type="reset" name="B3" id="B3" value="RESET">
      </div></td>
    </tr>
  </table>
          </td>
    </tr>
  </table>
  			 </div>
            </div>
            <strong>
        <%
        
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String sn,cpn,add,desig,web,phn,email,s2,b1,b2,b3;
                     
                     sn = request.getParameter("sn");
                     cpn = request.getParameter("cpn");
                     b1=request.getParameter("a1");
                     b2=request.getParameter("a2");
                     b3=request.getParameter("a3");
                     add = b1 +"  " + b2 + "  " + b3 + "  ";
                     desig = request.getParameter("desig");
                     web = request.getParameter("web");
                     phn=request.getParameter("phn");
                     email=request.getParameter("email");
                     
                     
                     int i,j,k,l,m;
                     i = sn.length();
                     j = cpn.length();
                     k = phn.length();
                     l = email.length();
                     
                     //if(i != 0 && j != 0 && k != 0 && l != 0)
                     if(i != 0)
                     {   
                         PreparedStatement pst;
                         s2="insert into supplier(s_name,cp_name,sup_add,designation,website,phone,email) values(?,?,?,?,?,?,?)";
                                    pst = cn.prepareStatement(s2); 
                                    pst.setString(1,sn);
                                    pst.setString(2,cpn);
                                    pst.setString(3,add);
                                    pst.setString(4,desig);
                                    pst.setString(5,web);
                                    pst.setString(6,phn);
                                    pst.setString(7,email);
                                    
                                    pst.executeUpdate(); 
                          
                                  /*   session.setAttribute("name",cnm);
                                    session.setAttribute("type",tp);
                                    session.setAttribute("uname",u);
                                    session.setAttribute("pswd",p);
                                    session.setAttribute("rpswd",rp);  */
                     response.sendRedirect("sup_add_products.jsp?supname="+sn+"");
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
                      <span class="style14 style5 style8"> USER </span></a></p>
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
