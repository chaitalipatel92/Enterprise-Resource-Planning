<%-- 
    Document   : forgot
    Created on : Feb 5, 2013, 9:27:47 PM
    Author     : Hardik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<%@page language="java" import="java.util.Properties"%>
<%@page language="java" import="javax.mail.PasswordAuthentication" %>
<%@page language="java" import="javax.mail.*"%>
<%@page language="java" import="javax.mail.internet.InternetAddress"%>
<%@page language="java" import="javax.mail.internet.MimeMessage"%>
<jsp:useBean id="i1" scope="page" class="pack1.sendMail" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Rickys web templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
}
-->
</style>
</head>
    <body>
        <form method="POST">
	<form name="f1" method="post">
             <div id="wrapper">
	<div id="logo">
		<h1>enterprice resource planning</h1>
		<p><em>PROVIDES BEST SOLUTIONS FOR YOUR BUSINESS COMPANY<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
				<li ><a href="index.jsp" class="first"><strong>Home</strong></a></li>
			  <li><a href="sales.jsp"><strong>Services</strong></a></li>
			  <li></li>
				<li><a href="contact.jsp"><strong>Contact</strong></a></li>
		  </ul>

	  </div>
    </div>
    <br>
    <div id="bg">
    <form>
      <table width="744" height="591" border="1" align="center">
  <tr>
    <td width="371" height="585"><img src="images/8.jpg" width="444" height="610" alt="img" longdesc="file:///C|/Users/home/Desktop/tem/web1/web/images/8.jpg"></td>
    
    <td width="450">
    <table width="447" height="510" border="0" align="center" cellpadding="10" bgcolor="#0166ff">
        <tr>
          <th height="280" colspan="2" bgcolor="#000000"><img src="images/f.jpg" alt="forgot" width="274" height="205"/></th>
        </tr>
        <tr>
          <td width="101" height="42"><strong>USER NAME</strong>:</td>
          <td width="300"><label>
            <input type="text" name="t2" id="t2" size="50">
            </label>          </td>
        </tr>
        <tr>
          <td height="50"><strong>SECURITY QUESTION:</strong></td>
          <td><select name="d1">
              <option>--SELECT--</option>
              <option value="What is your Father Name?">What is your Father Name?</option>
              <option value="Best Friend Name?">Best Friend Name?</option>
              <option value="Your Nike Name?">Your Nick Name?</option>
              <option value="Your BirthPlace">Your BirthPlace</option>
              <option value="What is your First School Name?">What is your First School Name?</option>
              <option value="Your favourite food?">Your favourite food?</option>
          </select></td>
        </tr>
        <tr>
          <td height="42"><strong>ANSWER:</strong></td>
          <td><input type="password" name="t1" id="t1" size="50"></td>
        </tr>
        <tr>
          <td height="44" colspan="2"><label>
            <div align="center">
              <input type="submit" name="s1" id="s1" value="Submit" align="center">
              </div>
          </label></td>
          </tr>
        <tr>
            <td colspan="2">
              <div align="center">
                <%
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
        boolean b1=false;

        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                    
                     String u,sq,an,s1,sq1,an1,pass,e;
                     
                    
                      u = request.getParameter("t2");
                      sq = request.getParameter("d1");
                      an = request.getParameter("t1");
                     
                      s1="select * from user where user ='"+u+"'";
                      //out.print(s1);
                       st  = cn.createStatement();
                       rs=st.executeQuery(s1);
                        
                                if(rs.next())
                                {
                                        b1=true;
                                        sq1=rs.getString("s_ques");
                                         an1=rs.getString("ans");
                                        pass=rs.getString("pass");
                                         e=rs.getString("email");
                                         if(sq1.equals(sq) && an1.equals(an))
                                                    {
                                                      String message ,sub;
                                                         sub="ERP Password";
                                                         String msg = "Your Username : "+u+ " and Password : "+ pass;
                                                          message = i1.mail1(e, sub, msg);
                                                         out.print("Your Password is mailed to your Email-id !!!");
                                                     }
                                 }
                                 else
                                    {
                                     out.print("Can't found Username !!!!");
                                       }
                       
                       
                      
                      //out.print("Data Submitted");
                      
                               
        }catch(Exception e1)
        {
            out.print(e1.getMessage());
        }
       %>   
              </div></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
      <label> 
      
      </label>
    </form>
    </div>
        <br>
        <div id="footer-bgcontent">
	<div id="footer">

<p><a href="index.jsp">Home</a>  |  <a href="sales.jsp">Services</a>  |  <a href="contact.jsp">Contact</a></p>
	</div>
	</div>
	<!-- end #footer -->
</div>



        </form>

</body>
</html>
