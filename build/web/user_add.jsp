<%-- 
    Document   : main
    Created on : Mar 1, 2013, 11:49:06 PM
    Author     : home
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  language="java" import="java.sql.*" %>
<%@page language="java" import="java.util.Properties"%>
<%@page language="java" import="javax.mail.PasswordAuthentication" %>
<%@page language="java" import="javax.mail.*"%>
<%@page language="java" import="javax.mail.internet.InternetAddress"%>
<%@page language="java" import="javax.mail.internet.MimeMessage"%>
<jsp:useBean id="i1" scope="page" class="pack1.sendMail" />

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
.style15 {color: #000000; font-weight: bold; font-size: 14px; }
.style16 {color: #0000FF}
.style19 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
-->
    </style>
    <script language="JavaScript" type="text/javascript">
     function comparepass(a1)
{
var password=document.getElementById("password");
var cpassword=document.getElementById("cpassword");
if(password.value!=cpassword.value)
{
            //  alert("mismatch");
            alert("Password and Re-entered password do not match !!");
              cpassword.value="";
              password.focus();
}
else
    {
        document.getElementById(a1).innerHTML ="";
    }
}
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

        Connection cn;
        Statement st;
        ResultSet rs;
        String s1,s3;
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
            <h2 class="title"><span class="style19"><a href="user.jsp"><u>Users/</u></a><span class="style16">ADD</span></span></h2>
            <div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <br><br><br>
            <table border="1" bgcolor="#FFFFFF" cellpadding="5">
			<tr>
            <td width="661">
            <table width="665" bgcolor="#CCCCCC" border="0" cellpadding="5" >
              <tr>
                <td width="204" height="38"><span class="style15">CLIENT NAME:</span><span style="color:red">&nbsp;*</span></td>
              	<td width="435"><input type="text" name="t1" id="textfield" size="27"></td>
              </tr>
              <tr>
              	<td width="204" height="38"><span class="style15">USER TYPE:</span><span style="color:red">&nbsp;*</span></td>
                <td width="435"><select name="s1" width="15" style="width:auto" size="0">
                  <option value="">--type--</option>
                  <option value="customer">CUSTOMER</option>    
                  <option value="warehouse person">WAREHOUSE PERSON</option>
                  <option value="employee">EMPLOYEE</option>
                </select></td>
              </tr>
              <tr>
              <td width="204" height="38"><span class="style15">USER NAME:</span><span style="color:red">&nbsp;*</span></td>
              <td width="435"><input type="text" name="t2" id="textfield2" size="27"></td>
              </tr>
               <tr>
               <td width="204" height="38"><span class="style15">PASSWORD:</span><span style="color:red">&nbsp;*</span></td>
               <td width="435"><input type="password" name="password" id="password" size="27"></td>
              </tr>
              <tr>
              <td width="204" height="38"><span class="style15">RE-ENTER PASSWORD:</span><span style="color:red">&nbsp;*</span></td>
              <td width="435"><input type="password" name="cpassword" id="cpassword" size="27" onBlur="comparepass('p6')"><span id="p6"></span></td>
              </tr>
              <tr>
                <td width="204" height="38"><span class="style15">EMAIL-ID:</span><span style="color:red">&nbsp;*</span></td>
              	<td width="435"><input type="text" name="t3" id="textfield" size="27"></td>
              </tr>
              <tr>
              <td height="35"><span class="style15">PRIVILLEGE(S):</span></td>
              <td>
              <label>
              <input name="c1" type="checkbox" id="c1" value="1">
              <span class="style5">SALES</span></label>
              <br>
               <label>
              <input name="c2" type="checkbox" id="c2" value="1">
              <span class="style5">PURCHASE</span></label>
              <br>
               <label>
              <input name="c3" type="checkbox" id="c3" value="1">
              <span class="style5">HUMAN RESOURSE</span></label>
              <br>
               <label>
              <input name="c4" type="checkbox" id="c4" value="1">
              <span class="style5">WAREHOUSE</span></label>
               </td>
              </tr>
              <tr>
              <td height="38" colspan="2" align="center"><span class="style15">
                <input type="submit" name="B1" id="B1" value="SAVE">&nbsp;&nbsp;&nbsp;

                <input type="button" name="B2" id="B2" value="CANCEL" onClick="document.location.href='user.jsp'">&nbsp;&nbsp;&nbsp;
                <input type="reset" name="B3" id="B3" value="RESET">
              </span></td>
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
                     String cnm,tp,s2, sales = "0",pur = "0",hr = "0",ware = "0";
                     String u="",p="",e="";
                     u=request.getParameter("t2");
                    p=request.getParameter("password"); 
                    e=request.getParameter("t3");                     
        
                     cnm = request.getParameter("t1");
                     tp = request.getParameter("s1");
                          
                    
                     sales = request.getParameter("c1");
                     sales = (sales==null ? "0":"1");
                     
                     pur = request.getParameter("c2");
                     pur = (pur==null ? "0":"1");
                     hr = request.getParameter("c3");
                     hr = (hr==null ? "0":"1");
                     ware = request.getParameter("c4");                                                             
                     ware = (ware==null ? "0":"1");
                     
                     int i,j,k,l,m1;
                     i = cnm.length();
                     j = tp.length();
                     k = u.length();
                     l = p.length();
                     m1 = e.length();
                     
                     if(i != 0 && j != 0 && k != 0 && l != 0 && m1 != 0)
                     {   
                         PreparedStatement pst;
                         
                         s2="insert into user(client_name,type,user,pass,email,sales,purchase,hr,warehouse) values(?,?,?,?,?,?,?,?,?)";
                                    pst = cn.prepareStatement(s2); 
                                    
                                    pst.setObject(1,cnm);
                                    pst.setObject(2,tp);
                                    pst.setObject(3,u);
                                    pst.setObject(4,p);
                                    pst.setObject(5,e);
                                    pst.setObject(6,sales);
                                    pst.setObject(7,pur);
                                    pst.setObject(8,hr);
                                    pst.setObject(9,ware);
                                    
                                    pst.executeUpdate(); 
                                 /*s3="select * from user where type='employee'"; 
                                 rs=st.executeQuery(s3);
                                 String eid = rs.getString("client_id");
                                    
                                 PreparedStatement pst1;
                                 s1="insert into emp1 values(?,?,?,?,?)";
                                 pst1 = cn.prepareStatement(s1); 
                            pst1.setString(1,eid);
                            pst1.setString(2,cnm);
                            pst1.setString(3,u);
                            pst1.setString(4,p);
                            pst1.setString(5,e);
                            pst1.executeUpdate();*/
                                
                            
               
              String message ,sub;
              sub="ERP login Details";
              String msg = "Your Username : "+u+ " and Password : "+p;
                    message = i1.mail1(e, sub, msg);
                    out.print(message);
                   
                    response.sendRedirect("user.jsp");
                     }
                     else
                     {
                         out.print("<script>alert('All the fields must be filled out!!')</script>");
                     }
                             
        }catch(Exception e1)
        {   e1.getMessage();
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
