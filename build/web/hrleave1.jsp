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
                            <li><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
				<li><a href="<%=a2%>"><strong>Purchase</strong></a></li>
                                <li class="current_page_item"><a href="<%=a3%>"><strong>Human Resource</strong></a></li>
                                
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
		<ul>

		<li><a href="hr1.jsp" class="style1 style2">Employees</a></li>
		<li class="current_page_item"><a href="hrleave.jsp" class="style3">Leave Request TO Approve</a></li>
	
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><strong>REQUEST TO .../NEW</strong></h2>
<div class="entry">
                <input name="b1" type="button" value="SAVE" onClick="document.location.href='#'">
            
            &nbsp; OR &nbsp;&nbsp;

            <form name="form1" method="post" action="">
              <label>
              <input name="b4" type="submit" id="b1" value="DISCARD">
              </label>
            </form>
            </div>
            </div>
            <br>
            <div class="post">
            <input name="b2" type="button" value="APPROVE" onClick="document.location.href='#'">     
           </div>
            <form name="form2" method="post" action="">
    </form>

    <table height="410" width="905" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="971" height="404"><table width="824" height="300" border="0" cellpadding="5" bgcolor="#CCCCCC"><tr><td width="810" height="161">
  <form name="form3" method="post" action="">
    <table width="810" height="147" border="0" cellpadding="5" bgcolor="#CCCCCC">
      <tr>
        <td width="73" class="style9">DESCRIPTION:</td>
        <td height="32" ><span class="style9">
          <input type="text" name="t1" value="" size="35" />
        </span></td>
        <td width="137" class="style9">MODE:</td>
        <td width="237"><input type="text" name="t4" value="" size="35" /></td>
      </tr>
      <tr>
        <td height="35"  width="137"><span class="style9">LEAVE TYPE:</span></td>
        <td width="70"><label>
          <select name="D1" class="watermark" id="D1">
          </select>
          </label>        </td>
        <td class="style9">EMPLOYEES:</td>
        <td class="style9"><input type="text" name="t4" value="" size="35" /></td>
               </tr>
      <tr>
        <td height="35" ><span class="style9">DURATION:</span></td>
        <td width="312"><span class="style9">
          <input type="text" name="t2" value="" size="35" />
        </span></td>
		<td class="style9">DEPARTMENT: </td>    
        <td class="style9"><input type="text" name="t5" value="" size="35" /></td> 
      </tr>
      <tr>
      <td class="style9"></td>  
      <td><input type="text" name="t5" value="" size="10" />
        <span class="style9"> DAYS </span></td>
      </tr>
    </table>
  </form>              </td>
                </tr>
  </table>
          
<table width="810" height="35" border="0">
            <tr>
              <td>&nbsp;</td>
        </tr>
          </table>
  </td>
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
