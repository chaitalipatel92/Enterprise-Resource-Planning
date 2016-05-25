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
.style10 {
	color: #0066FF;
	font-weight: bold;
}
.style11 {
	color: #000000;
	font-weight: bold;
}
.style13 {color: #000000; font-weight: bold; font-style: italic; }
.style14 {color: #000000}
-->
    </style>
     
 
    
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
                                <li><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
				<li class="current_page_item"><a href="<%=a2%>"><strong>Purchase</strong></a></li>
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
		<ul>
                <li><a href="purchase1.jsp" class="style1 style2">Quotation</a></li>
		<li><a href="po.jsp" class="style3">Purchase Order</a></li>
                </ul>
      </div> 
        	<div id="content">
            
            <div class="post">
              <h2 class="title"><strong>PRODUCTS</strong>/ <span class="style10">NEW</span></h2> 
                
			<label>
            <input type="submit" name="b1" id="b1" value="SAVE">
              </label> &nbsp; <span class="style14">OR</span> &nbsp; &nbsp;
                <a href="p_prod.jsp" class="style11">DISCARD</a>
       
			<br>
       <br>
            </div>
<form>
	<table width="830" height="449" bgcolor="FFFFFF" cellpadding="5" border="1">
    <tr > <td height="443"><table width="800" border="0" height="431" bgcolor="CCCCCC"  >
  <tr>
    <td height="26" colspan="3"><span class="style11">PRODUCT NAME:</span></td>
    <td width="168"><label>
      <input type="submit" name="b2" id="b2" value="BILL OF MATERIAL">
    </label></td>
  </tr>
  <tr>
    <td height="32" colspan="3"><label> <input type="text" name="t1" id="t1" size="50"></label></td>
    <td><label>
    <input type="submit" name="b3" id="b3" value="REQUEST PROCUREMENT">
    </label></td>
  </tr>
  <tr>
    <td height="32" colspan="3"><span class="style11">CATEGORY:</span></td>
    <td><label>
      <input type="submit" name="b4" id="b4" value="ORDERPOINT">
    </label></td>
  </tr>
  <tr>
    <td height="32" colspan="3"><label>
      <select name="t2" size="1" id="t2">
      </select>
     
    </label>    </td>

  </tr>
  <tr>
    <td width="222" height="40"><label>
      <span class="style11">
      <input type="checkbox" name="t3" id="t3">
      CAN BE SOLD</span></label></td>
    <td width="186"><label>
      <input type="checkbox" name="t4" id="t3">
      <span class="style11"> CAN BE EXPENSED</span></label>
      <span class="style11">&nbsp;</span></td>
    <td width="206"><label>
      <span class="style11">
<input type="checkbox" name="t5" id="t3">
CAN BE PURCHASED</span></label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="32" colspan="4"><span class="style13">INFORMATION:</span></td>
    </tr>
<tr>
    <td height="32"><span class="style11">PRODUCT TYPE:</span></td>
    <td colspan="3"><label>
      <select name="t7" id="t7">
      </select>
    </label></td>
    </tr>
 
  <tr>
    <td height="32"><span class="style11">SALES PRICE:</span></td>
    <td colspan="3"><label>
      <input type="text" name="t8" id="t8">
    </label></td>
    </tr>
    <tr>
    <td height="32"><span class="style11">INTERNAL REFRENCE:</span></td>
    <td colspan="3"><label>
      <input type="text" name="t9" id="t9">
    </label></td>
    </tr>
    <tr>
    <td height="32" colspan="4"><span class="style11">DESCRIBE THE PRODUCT CHARACTERISTICS:</span></td>
    
    </tr>
    <tr>
    <td height="32" colspan="4"><label>
    <textarea name="t10" id="t10" cols="100" rows="5"></textarea>
</label></td>
    </tr>
  
  
  </table>
        </td>
  </tr>
</table>
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
