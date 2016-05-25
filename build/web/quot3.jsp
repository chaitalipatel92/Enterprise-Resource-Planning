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
.style7 {color: #000000}
.style9 {color: #000000; font-weight: bold; }
.style11 {
	color: #000000;
	font-size: 18px;
	font-weight: bold;
}
.style12 {color: #000000; font-size: 10px; }
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
		<ul>
		<li class="current_page_item"><a href="quot.jsp" class="style3">Quotations</a></li>
		<li><a href="salesorder.jsp" class="style4">Sales Orders</a></li>
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><strong>Q_NUMBER/OUT/DLVR_NUMBER</strong></h2>
<div class="entry">
                <input name="b1" type="button" value="EDIT" onClick="document.location.href='newuser.jsp'">
            
            &nbsp; OR &nbsp;&nbsp;

            <form name="form1" method="post" action="">
              <label>
                <input name="b4" type="submit" id="b1" value="CREATE">
              </label>
            </form>
            </div>
        <div class="post">&nbsp;
          <input name="b3" type="button" value="DELIVER">
            &nbsp;&nbsp;
        <input name="b5" type="button" value="CANCEL" onClick="document.location.href='quot2.jsp'">
            <br>
            </div>
    <table height="409" width="875" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="857" height="403">
  <table width="808" border="0">
    <tr>
      <td height="57"><span class="style11">OUT (DLVR_NUMBER)</span></td>
    </tr>
  </table>
  <table width="810" height="86" border="0" cellpadding="5" bgcolor="#CCCCCC">
             
              <tr>
                <td width="118" class="style7"><strong>CUSTOMER:</strong></td>
                <td height="32" colspan="2"><input type="text" name="t3" value="" size="35" /></td>
                <td width="102" class="style9">TIME:</td>
                <td width="237"><input type="text" name="t4" value="" size="35" /></td>
              </tr>
              <tr>
              <td width="118" class="style7"><strong>STOCK JOURNAL:</strong></td>
              <td height="35" colspan="2"><input type="text" name="t3" value="" size="35" /></td>
                <td class="style9">SCHEDULED TIME:</td>
                <td><input type="text" name="t6" value="" size="35" /></td>
      </tr>
             
          </table>
          
          <table width="810" height="35" border="0">
            <tr>
              <td><span class="style9"> PRODUCTS:</span></td>
            </tr>
          </table>
          
          <table>
      <tr align="center">  
      <td width="155" height="39" bgcolor="#999999" class="style7"><strong>PRODUCT
        
      </strong></td>
      <td width="316" class="style9" bgcolor="#999999">QUANTIY</td>
   
      <td width="320" class="style9" bgcolor="#999999">STATUS</td>
      </tr>
      </table>
      
  <table width="807" height="82"  border="0" bordercolor="#000000">
      
      <tr>
      <td width="157" height="18" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      </tr>
    <tr>
      <td height="17" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      </tr>
    <tr>
      <td height="19" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      </tr>
    <tr>
      <td height="18" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      </tr>
  </table>
  <br>
  <table width="810" border="0">
    <tr>
      <td width="477">&nbsp;</td>
      <td colspan="2" align="right" bgcolor="#FFFFFF" class="style12"></td>
      </tr>
  </table></td>
              </tr>
            </table>
            </div>
</div>
      <div style="clear: both;">&nbsp;</div>
      </div>
      </div>
    <br>
    
    <%@include file="footer.jsp"%>	<!-- end #footer --> 
    </body>
</html>
