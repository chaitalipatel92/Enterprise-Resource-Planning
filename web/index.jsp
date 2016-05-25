<%-- 
    Document   : index
    Created on : Feb 2, 2013, 9:51:50 PM
    Author     : Hardik^
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>ERP System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />



<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
     
    <style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style5 {color: #000000}
.style6 {color: #000000; font-weight: bold; }
.style16 {font-size: 14px}
.style17 {font-size: 14px}
.style19 {color: #FFFFFF; font-weight: bold; }
.style20 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 12px;
}
.style21 {font-size: 16px}
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
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="index.jsp" class="first"><strong>Home</strong></a></li>
				<li><a href="sales.jsp"><strong>Services</strong></a></li>
			</ul>
                       
		</div>
		<!-- end #menu -->


	</div>
	<!-- end #header -->
	<!-- end #header-wrapper -->
    <br>
    <div id="bg">
    <br>
    <form method="post" >
   <table width="1237" height="531" border="0" align="center">
  <tr>
  <td width="337" height="527" bgcolor="#000000" bordercolor="#0033FF" >
  <img src="images/4 (2).jpg" width="337" height="247"/>
    </p>
    <table width="250" height="215" border="0" cellpadding="5">
        <tr>
          <td width="69" height="37"><span class="style20">USERNAME</span></td>
          <td width="3">:</td>
          <td width="156"><label>
            <input type="text" name="username" id="t1">
          </label></td>
        </tr>
        <tr>
          <td height="45"><span class="style19">PASSWORD</span></td>
          <td>:</td>
          <td><label>
            <input type="password" name="password" id="t2">
          </label></td>
        </tr>
        <tr>
          <td height="62" colspan="3"><div align="center">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="b1" type="submit" class="style6" id="b1" value="LOGIN">
       
              <label>
              <input name="reset" type="reset" class="style6" id="reset" value="CLEAR">
              </label>
              <br><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
    <%
        Connection cn;
        Statement st;
        ResultSet rs;
        
        try
                               {
            
                               Class.forName("com.mysql.jdbc.Driver");
                               cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                               st  = cn.createStatement();
                               String u, p,s;
                               u = request.getParameter("username");
                               p = request.getParameter("password");
                               s = "select * from user where user ='"+ u + "' and pass = '"+ p +"'";
                              // out.print(s);
                               rs = st.executeQuery(s);
                               if(rs.next())
                              {
                                   String utype = rs.getString("type");
                                  // out.print(utype);
                                   if(utype.equalsIgnoreCase("admin"))
                                   {
                                                session.setAttribute("uname", u);
                                             response.sendRedirect("admin_home.jsp");
                                   }
                                      else if(utype.equalsIgnoreCase("customer"))
                                             {
                                                session.setAttribute("uname", u);
                                                response.sendRedirect("home.jsp");
                                             }
                                              else if(utype.equalsIgnoreCase("warehouse"))
                                             {  
                                                  session.setAttribute("uname", u);
                                                  response.sendRedirect("warehouseman.jsp");
                                             }
                                             else if(utype.equalsIgnoreCase("employee"))
                                             {  
                                                  session.setAttribute("uname", u);
                                                  response.sendRedirect("employee.jsp");
                                             }
                                   else
                                   out.print("Check Username and Password");
                            
                                   }
                               
                               
        }catch(Exception e)
       {
            out.print("");
        }
       %>
          </div></td>
        </tr>
        
        <tr><br><br>
          <td height="57" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><strong><a href="forgot.jsp" class="style1 style21"> forgot password?</a></strong><br>
                <br></td>
        </tr>
       <tr>

  </tr>
      </table>   </td>
    <td width="890" height="527" valign="top">
        <div align="left">
      <table width="882" height="411" border="0">
        <tr >
          <td colspan="5" height="201" align="center" ><blockquote>
            <p><img src="images/1.jpg" >&nbsp;&nbsp;</p>
            </blockquote></td>
            </tr>
            <tr>

          <td width="240" height="201" align="center"><p align="center" class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SALES</span></p>
            <span class="style5">
                <a href="sales.jsp"><img src="images/sale4.jpg" width="140" height="125"/></a>
            </span></td>
          <td width="240" height="201" align="center"><p class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style17">&nbsp;<span class="style16">PURCHASE</span></span></p>
            <span class="style6">
                <a href="purchase.jsp"><img src="images/pur2.jpg" width="140" height="125"/></a>
            </span></td>
          
          <td width="240" height="201" align="center"><p><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style16">&nbsp;&nbsp;HUMAN- RESOURCE</span></span></p>
              <a href="hr.jsp"><img src="images/hr.jpg" width="140" height="125"></a></td>
          <td width="240" height="201" align="center"><p class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style16">&nbsp;&nbsp;WAREHOUSE</span></p>
              <a href="ware.jsp"><img src="images/ware.jpg" width="140" height="125"/></a></td>
            
        </tr>
      </table>
    </div>    </td>
  </tr>
  
</table>
	</form>
    <br>
    </div>
        <br>    
	
	
	<!-- end #page -->
	<div id="footer-bgcontent">
	<div id="footer">

<p><a href="index.jsp">Home</a>  |  <a href="sales.jsp">Services</a> </p>
	</div>
	</div>
	<!-- end #footer -->
</div>
</form>
     
    </body>
</html>
