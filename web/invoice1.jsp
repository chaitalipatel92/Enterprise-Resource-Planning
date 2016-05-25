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
.style13 {color: #000000; font-size: 10px; font-weight: bold; }
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
		<li><a href="quot.jsp" class="style3">Quotations</a></li>
		<li class="current_page_item"><a href="salesorder.jsp" class="style4">Sales Orders</a></li>
		</ul>
      </div> 
        	<div id="content">
            <h2 class="title"><span class="style7"><strong>sales orders</strong>/(q_number)/invoice</span></h2>
            <br>
                <input name="b1" type="button" value="EDIT" onClick="document.location.href='#'">
            
            &nbsp; OR &nbsp;&nbsp;
                   <label>
              <input type="submit" name="b6" id="b1" value="CREATE">
              </label>
              <br><br>
		    <input name="b3" type="button" value="SEND BY EMAIL">
            &nbsp;&nbsp;
            <input name="b4" type="button" value="REGISTER PAYMENT"  onClick="document.location.href='invoice1.jsp'">
            &nbsp;&nbsp;
            <input name="b5" type="button" value="PRINT">
            <br><br>
    
            <table height="409" width="800" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="750" height="403">
  <table width="808" border="0">
    <tr>
      <td height="57"><span class="style11">DRAFT INVOICE /</span></td>
    </tr>
  </table>
  <table width="810" height="82" border="0" cellpadding="5" bgcolor="#CCCCCC">
             
              <tr>
                <td width="73" class="style7"><strong>CUSTOMER:</strong></td>
                <td height="34" colspan="2"><input type="text" name="t3" value="" size="35" /></td>
                <td width="96" class="style9"><p>INVOICE DATE:</p>
                </td>
                <td width="237"><input type="text" name="t4" value="" size="35" /></td>
              </tr>
              <tr>
              <td height="30" colspan="3">&nbsp;</td>
                <td class="style9">JURNAL:</td>
                <td><input type="text" name="t6" value="" size="35" /></td>
              </tr>
             
      </table>
          
          <table width="810" height="35" border="0">
            <tr>
              <td><span class="style9">ORDER DETAILS :</span></td>
            </tr>
          </table>
          
          <table>
      <tr align="center">  
      <td width="156" height="32" class="style7" bgcolor="#999999"><strong>PRODUCT
        </th>
      </strong>
      <td width="157" bgcolor="#999999"><span class="style9">QUANTITY</span>
        </th>
      <td width="157" class="style9" bgcolor="#999999">TAXES</th>
      <td width="156" class="style9" bgcolor="#999999">UNIT PRICE</th>
      <td width="160" class="style9" bgcolor="#999999">SUBTOTAL</th>      
      </tr>
      </table>
      
  <table width="807" height="80"  border="0" bordercolor="#000000">
      
      <tr>
      <td width="157" height="18" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="157" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="157" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="155" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="159" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td height="17" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td height="18" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td height="18" bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
  </table>
  <br>
  <table width="810" border="0">
    <tr>
      <td width="477" rowspan="4">&nbsp;</td>
      <td width="157" align="right" bgcolor="#999999" class="style12"><strong>UNTAXED AMOUNT :</strong></td>
      <td width="154" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td align="right" bgcolor="#999999" class="style13">TAXES :</td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td class="style7" bgcolor="#999999" align="right"><strong>TOTAL :</strong></td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td class="style7" bgcolor="#999999" align="right"><strong>BALANCE:</strong></td>
      <td bgcolor="#CCCCCC">&nbsp;</td>
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
