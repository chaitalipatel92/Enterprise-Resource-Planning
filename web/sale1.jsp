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
.style5 {
	color: #0033CC;
	font-weight: bold;
}
.style7 {color: #000000}
.style9 {color: #000000; font-weight: bold; }
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
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
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
                                     a1 ="quot.jsp";
                                 else
                                     a1 ="";
                                 
                                 a2 = rs.getString("purchase"); 
                                 if(a2.equals("1"))
                                     a2 ="purchase1.jsp";
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
                            <li class="current_page_item"><a href="sales1.jsp" class="first"><strong>Sales</strong></a></li>
                            <li><a href="purchase1.jsp"><strong>Purchase</strong></a></li>
                            <li><a href="account1.jsp"><strong>Accouting</strong></a></li>
                            <li><a href="ware1.jsp"><strong>Warehouse</strong></a></li>
                            <li><a href="hr1.jsp"><strong>Human Resource</strong></a></li>
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

		<li  class="current_page_item"><a href="sales1.jsp" class="style1 style2">Customers</a></li>
		<li><a href="lead.jsp" class="style3">Leads</a></li>
		<li><a href="quot.jsp" class="style3">Quotations</a></li>
		<li><a href="salesorder.jsp" class="style4">Sales Orders</a></li>
		<li><a href="product.jsp" class="style4">Products</a></span></li>
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><strong>customers</strong> / <span class="style5">NEW</span></h2>
<div class="entry">
                <input name="v1" type="submit" value="SAVE">
            
            &nbsp; OR &nbsp;&nbsp; <a href="sales1.jsp" class="style1"> DISCARD </a></div>
            </div>
                    <p style="font-size:16px; color: #000000;"><br> 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<strong>
        <%
        Connection cn;
        Statement st;
        ResultSet rs;
        
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String c,co,a,w,d,p,m,f,e,in,s1,a1,a2,a3,a4,a5;
                     
                     c = request.getParameter("t1");
                     co = request.getParameter("t2");
                     
                     a1=request.getParameter("t3");
                     a2=request.getParameter("t5");
                     a3=request.getParameter("t7");
                     a4=request.getParameter("s1");
                     a5=request.getParameter("t9");
                     
                     a = a1 + "&nbsp;" + "," + a2 + " &nbsp;" + "," + a3 + "&nbsp; " + "," + a4 + " &nbsp;" + ","+ a5;
                     
                     w=request.getParameter("t11");
                     d=request.getParameter("t4");
                     p = request.getParameter("t6");
                     m = request.getParameter("t8");
                     f = request.getParameter("t10");
                     e = request.getParameter("t12");
                     in = request.getParameter("t13");
                     int i;
                     i = c.length();
                     
                     if(i != 0)
                     {   
                         PreparedStatement pst;
                         s1="insert into customer values(?,?,?,?,?,?,?,?,?,?)";
                                    pst = cn.prepareStatement(s1); 
                                    pst.setString(1,c);
                                    pst.setString(2,co);
                                    pst.setString(3,a);
                                    pst.setString(4,w);
                                    pst.setString(5,d);
                                    pst.setString(6,p);
                                    pst.setString(7,m);
                                    pst.setString(8,f);
                                    pst.setString(9,e);
                                    pst.setString(10,in);
                                    pst.executeUpdate(); 
                                    
                         // out.print("Data submitted");
                                    session.setAttribute("name",c);
                                    session.setAttribute("desig",d);
                                    session.setAttribute("coname",co);
                                    session.setAttribute("addr",a);
                                    session.setAttribute("mail",e);
                                    session.setAttribute("mob",m);
                     response.sendRedirect("try.jsp");
                     }
                     else
                     {
                         out.print("Name must be filled out!!");
                     }
                             
        }catch(Exception e)
        {
        //  out.print(e);  
        }
       %>  
        </strong>
    </p>
            <table height="406" width="800" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="750" height="400">
  <table width="810" height="365" border="0" cellpadding="5" bgcolor="#CCCCCC">
              <tr>
                <td width="67" height="27"><span class="style9">NAME:</span></td>
                <td colspan="3"><input type="text" name="t1" value="" size="60" /></td>
              </tr>
              <tr>
                <td height="36" class="style9">COMPANY NAME:</td>
                <td colspan="3"><input type="text" name="t2" value="" size="60" /></td>
              </tr>
              <tr>
                <td class="style7"><strong>ADDRESS:</strong></td>
                <td width="286" height="34"><input type="text" name="t3" size="35"/></td>
                <td width="122" class="style9">DESIGNATION:</td>
                <td width="275"><input type="text" name="t4" value="" size="35" /></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
                <td height="27"><input type="text" name="t5" value="" size="35" /></td>
                <td class="style9">PHONE:</td>
                <td><input type="text" name="t6" value="" size="35" /></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
              <td height="27"><input type="text" name="t7" value="" size="15" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <select name="s1" width="15" style="width:auto" size="0">
                      <option value="">--state--</option>
                      <option>andhra pradesh</option>
                      <option>aruachal pradesh</option>
                      <option>assam</option>
                      <option>bihar</option>
                      <option>chandgarh</option>
                      <option>chhatisgarh</option>
                      <option>delhi</option>
                      <option>goa</option>
                      <option>gujarat</option>
                      <option>haryana</option>
                      <option>himachal pradesh</option>
                      <option>jammu & kashmir</option>
                      <option>jharkhand</option>
                      <option>karnataka</option>
                      <option>kerala</option>
                      <option>madhyapradesh</option>
                      <option>manipur</option>
                      <option>meghalaya</option>
                      <option>mizoram</option>
                      <option>nagaland</option>
                      <option>orissa</option>
                      <option>punjab</option>
                      <option>pondicherry</option>
                      <option>rajasthan</option>
                      <option>sikkim</option>
                      <option>tamilnadu</option>
                      <option>tripura</option>
                      <option>uttar pradesh</option>
                      <option>uttaranchal</option>
                      <option>west begal</option>
                </select></td>
                <td class="style7"><strong>MOBILE</strong>:</td>
                <td><input type="text" name="t8" value="" size="35" /></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
                <td height="27"><input type="text" name="t9" value="" size="35" /></td>
                <td class="style9">FAX:</td>
                <td><input type="text" name="t10" value="" size="35" /></td>
              </tr>
              <tr>
                <td height="27" class="style9">WEBSITE:</td>
                <td><input type="text" name="t11" value="" size="35" /></td>
                <td class="style9">EMAIL:</td>
                <td><input type="text" name="t12" value="" size="35" /></td>
              </tr>
              <tr>
                <td height="28" colspan="4" class="style9">INTERNAL NOTES:</td>
              </tr>
              <tr>
                  <td colspan="4" height="83"><textarea name="t13" rows="4" cols="100">
                      </textarea></td>
              </tr>
          </table></td>
              </tr>
            </table>
      </div>
    
      <div style="clear: both;">&nbsp;</div>
      
      </div>
        
      </div>
    <br>
    
   <%@include file="footer.jsp"%>
   <!-- end #footer --> 
    </body>
</html>
