<%-- 
    Document   : main
    Created on : Mar 1, 2013, 11:49:06 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Rickys web templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript" src="tcal.js"></script>  
    <style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {font-size: 9%}
.style3 {color: #FFFFFF; font-size: 9%; }
.style7 {color: #000000}
.style12 {color: #0000FF}
.style16 {
	font-size: 18px;
	font-weight: bold;
	font-style: italic;
}
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
                         <li><a href="employee.jsp" class="first"><strong>Home</strong></a></li>
                         <li class="style7" class="current_page_item"><a href="emp3.jsp" class="style8"><strong><u>PRIVACY SETTINGS</u></strong></a></li>
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
                    <li class="current_page_item"><a href="employee.jsp" class="style1 style2">Employees</a></li>
		<li><a href="hrleave.jsp" class="style3">Leave Request TO Approve</a></li>
	
		</ul>
      </div> 
        	<div id="content">
            <br>
                    <div class="post">
                        <h2 class="title"><strong>EMPLOYEES</strong>/<span class="style12">Details</span></h2>
                         *if you have entered security question and answer earlier then it will be updated if you re-enter !!!  
                        <br>
                    </div>
                    
            <table height="280" width="700" border="0" bgcolor="#FFFFFF" cellpadding="5">
<tr>
<td width="200" height="250" rowspan="4">
<img src="images/6.jpg" width="200" height="280" alt="img" longdesc="file:///C|/Users/home/Desktop/tem/web1/web/images/8.jpg"></td>
<td height="70" colspan="2" bgcolor="#000000"><div align="center" class="style16">SAFETY STEPS</div></td>
</tr>
<tr>
  <td height="70" bgcolor="#CCCCCC"><strong><span class="style7">SELECT SECURITY QUESTION:</span><span style="color:red">&nbsp;*</span></strong></td>
  <td bgcolor="#CCCCCC"><select name="d2" onBlur="sq(this,'p7')">
                  <option value=""></option>
                  <option value="First School?">First School?</option>
                  <option value="Your Nike Name?">Your Nick Name?</option>
                  <option value="Your BirthPlace">Your BirthPlace</option>
                  <option value="Your Favourite Food?">Your Favourite Food?</option>
                  <option value="Your Favourite Colour?">Your Favourite Colour?</option>
                  <option value="Your Lucky Number?">Your Lucky Number?</option>
                  <option value="Best Friend Name?">Best Friend Name?</option>
          </select><span id="p7"></span></td>
</tr>
<tr>
  <td height="70" bgcolor="#CCCCCC"><strong><span class="style7">ANSWER:</span><span style="color:red">&nbsp;*</span></strong></td>
  <td height="70" bgcolor="#CCCCCC"><input type="password" name="t9" value="" size="40" onBlur="ans(this,'p8')"/><span id="p8"></span></td>
</tr>
<tr>
  <td height="70" colspan="2" bgcolor="#CCCCCC"><div align="center"><span class="entry">
    <input type="button" name="b1" id="b1" value="<< BACK" onclick="location.href='employee.jsp'" >
    <input name="v1" type="submit" value="SAVE and EXIT" >
  </span></div></td>
</tr>
            </table>
            <br><br>
              <div class="post">
<div class="entry"></div>
            </div>
      </div>
    <p style="font-size:16px; color: #000000;"><br> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><strong><strong><strong>
      <%
       try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String sque,ans;
                     sque = request.getParameter("d2");
                     ans = request.getParameter("t9");
                 
                             if(sque.length() != 0 && ans.length() != 0)
					{       
                                                 st  = cn.createStatement();
						st.executeUpdate("update emp2 set s_ques = '" + sque + "', ans = '" + ans +"'where user = +'"+ a + "' ");
                                                st  = cn.createStatement();
						st.executeUpdate("update user set s_ques = '" + sque + "', ans = '" + ans +"'where user = +'"+ a + "' ");
						
                                                out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                response.sendRedirect("employee.jsp");
                                               // out.print("DATA UPDATED");
					}
					 else
                                                                                         {
                         out.print("<script>alert('Type and Password must be filled out')</script>");
                                         }      
                                   
                    
         }catch(Exception e)
        { 
            //out.print(e.getMessage());
        }
       %>
      </strong></strong></p>
      <div style="clear: both;">&nbsp;</div>
      
      </div>
        
      </div>
    <br>
    <div id="footer-bgcontent">
	<div id="footer">

<p><a href="employee.jsp">Home</a>  |  <a href="logout.jsp">logout</a> </p>
	</div>
	</div>
    </body>
</html>
