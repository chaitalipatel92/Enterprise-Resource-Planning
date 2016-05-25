<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : newuser
    Created on : Feb 5, 2013, 10:59:47 AM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>NEW REGISTRATION</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" /> 
       
    <style type="text/css">
<!--
.style3 {color: #000000}
.style4 {
	color: #FFFFFF;
	font-weight: bold;
}
.style6 {color: #FFFFFF; font-weight: bold; font-size: 16px; }
-->
    </style>
    
    <script type="text/javascript" src="tcal.js"></script>  
    
   <script language="JavaScript" type="text/javascript">
       
       <%--  function showname(a1,a2)
  {
       var cname=document.getElementById('a2');
       if(cname == null)
           {
               alert("must be filled out!!");
              //document.getElementById("name1").innerHTML = "<font color ='red' size=2>Client Name must be filed out !!</font>";
              cname.focus();
       } }
            --%>
        function cn(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>Client name must be filled out !!</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   function add(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>Address must be filled out !!</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   
      function checkEmail(a1,a2)
   {
     var x = a1.value;
     var filter =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
     if(x.length <= 0)
         {
           document.getElementById(a2).innerHTML = "<font color =red size=2>Email Address must be filled out !!</font>";  
         }
     else if (!filter.test(a1.value))
        {
          document.getElementById(a2).innerHTML = "<font color =red size=2>Please enter the valid Email Address</font>";
          email.value="";
          email.focus();
        }
     else
            document.getElementById(a2).innerHTML = "";
    }
    function add(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>Address must be filled out !!</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   function uname(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>User Name must be filled out !!</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   function checkPass(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>Password must be filled out !!</font>"; 
        else if(x.length < 8 || x.length > 16)
            {
             document.getElementById(a2).innerHTML ="<font color =red size=2>Password should be between 8-14 charachter ! </font>";   
            }
        
        else
            document.getElementById(a2).innerHTML = "";
   }
    function sq(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>Security Question must be selected !!</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   function ans(a1,a2)
   {
       var x = a1.value;
       if(x.length <=0)
            document.getElementById(a2).innerHTML ="<font color =red size=2>Answer must be filled out !!</font>"; 
        else
            document.getElementById(a2).innerHTML = "";
   }
   function comparepass(a1)
{
var password=document.getElementById("password");
var cpassword=document.getElementById("cpassword");
if(password.value!=cpassword.value)
{
            //  alert("mismatch");
            document.getElementById(a1).innerHTML ="<font color =red size=2>Password and confirm password do not match !!</font>";
              cpassword.value="";
              cpassword.focus();
}
else
    {
        document.getElementById(a1).innerHTML ="";
    }
}
<%--function comparepass1()
{
    var p = document.form1.p5.value;
    // var cp = document.form1.t8.value;
     if(p.length <= 0)
    alert("khvbyug");
}--%>

   </script>
    
    </head>
    
    <body>
        <form method="POST">
	
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
				<li><a href="index.jsp"><strong>Home</strong></a></li>
                                <li><a href="sales.jsp"><strong>Services</strong></a></li>
				<li><a href="contact.jsp"><strong>Contact</strong></a></li>
		  </ul>
                       
	  </div>
		<!-- end #menu -->
        </div>
        <br>
        <div id="bg">
            
        <form method="POST name="form1">     
         
              <div align="center">
              <table width="1011" height="524" border="1" align="center">
<tr>
                <td width="313" height="518"><img src="images/6.jpg" width="313" height="553" alt="img" longdesc="file:///C|/Users/home/Desktop/tem/web1/web/images/8.jpg"></td>
<td width="682"><table width="722" height="484" border="0" align="center" bgcolor="#0166ff" class="style3">
          <tr>
            <td width="716" height="480"><table width="745" height="510" border="0" align="center" bgcolor="#CCCCCC" class="style3">
            <tr>
              <th height="48" colspan="2" bgcolor="#oooooo"><h1 class="style6">REGISTRATION &nbsp; FORM</h1></th>
               </tr>
             <tr>
                 <td colspan="4" bgcolor="#FFFFFF">Filled mark with asterisk (<span style="color:red">&nbsp;*</span> ) are mandatory.</td>
              </tr>
            <tr>
              <td width="144"><strong>CLIENT NAME:<span style="color:red">&nbsp;*</span></strong></td>
              <td width="591"><input type="text" name="t1" size="40" id="cname" onBlur="cn(this,'p1')"/><span id="p1"></span></td>
            </tr>
            
            <tr>
              <td><strong>ADDRESS:<span style="color:red">&nbsp;*</span></strong></td>
              <td><textarea name="t2" rows="4" cols="31" onBlur="add(this,'p2')"></textarea><span id="p2"></span></td>
            </tr>
            <tr>
              <td><strong>DOB:<span style="color:red">&nbsp;*</span></strong></td>
              <td><input type="text" name="t3" value="" class="tcal" size="36" onBlur="checkEmail(this,'p3')"/></td>
            </tr>
            <tr>
              <td><strong>GENDER:<span style="color:red">&nbsp;*</span></strong></td>
              <td><label>
                      <input type="radio" name="g1" checked="true" id="g1" value="MALE">
                <strong>MALE</strong>
                <input type="radio" name="g1" id="g2" value="FEMALE" >
                <strong>FEMALE</strong></label></td>
            </tr>
            <tr>
              <td><strong>E-MAIL ID:<span style="color:red">&nbsp;*</span></strong></td>
              <td><input type="text" name="t4" value="" size="40" onBlur="checkEmail(this,'p3')"/><span id="p3"></span></td>
            </tr>
            <tr>
              <td><strong>CONTACT NO:</strong></td>
              <td><input type="text" name="t5" value=""  size="40"/></td>
            </tr>
            <tr>
              <td><strong>USER NAME:<span style="color:red">&nbsp;*</span></strong></td>
              <td><input type="text" name="t6" value="" size="40" onBlur="uname(this,'p4')"/><span id="p4"></span></td>
            </tr>
            <tr>
              <td><strong>PASSWORD:<span style="color:red">&nbsp;*</span></strong></td>
              <td><input type="password" name="password" id="password" value="" size="40" onBlur="checkPass(this,'p5')"/><span id="p5"></span></td>
            </tr>
            <tr>
              <td><strong>RE-ENTER PASSWORD:<span style="color:red">&nbsp;*</span></strong></td>
              <td><input type="password" name="cpassword" id="cpassword" value="" size="40" onBlur="comparepass('p6')"><span id="p6"></span></td>
            </tr>
            <tr>
              <td><strong>SELECT SECURITY QUESTION:<span style="color:red">&nbsp;*</span></strong></td>
              <td><select name="d2" onBlur="sq(this,'p7')">
                  <option value=""></option>
                  <option value="First School?">First School?</option>
                  <option value="Your Nike Name?">Your Nike Name?</option>
                  <option value="Your BirthPlace">Your BirthPlace</option>
                  <option value="Your Favourite Food?">Your Favourite Food?</option>
                  <option value="Your Favourite Colour?">Your Favourite Colour?</option>
                  <option value="Your Lucky Number?">Your Lucky Number?</option>
                  <option value="Best Friend Name?">Best Friend Name?</option>
              </select><span id="p7"></span></td>
            </tr>
            <tr>
              <td><strong>ANSWER:<span style="color:red">&nbsp;*</span></strong></td>
              <td><input type="password" name="t9" value="" size="40" onBlur="ans(this,'p8')"/><span id="p8"></span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td></td>
              <td>                
                  <a href="index.jsp">  
<input type="button" name="b1" id="b1" value="&lt;&lt; Back"></a>&nbsp;&nbsp;
<input type="submit" class="style3" value="SUBMIT" onsubmit="fun1()" />&nbsp;&nbsp;
              <label>
              <input name="reset" type="reset" class="style3" id="reset" value="CLEAR">
              </label>
  
              </td>
            </tr>
            <tr>
              <td colspan="2" height="51">&nbsp;
             <%
        Connection cn;
        Statement st;
        ResultSet rs;
        
         try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     String c,a,d,g,e,cnt,u,p,rp,sq,an,s2,s1;
                     int c1,a1,d1,g1,e1,u1,p1,rp1,sq1,an1;
                     c = request.getParameter("t1");
                     a = request.getParameter("t2");
                     d = request.getParameter("t3");
                     g = request.getParameter("g1");
                     e = request.getParameter("t4");
                     cnt = request.getParameter("t5");
                     u = request.getParameter("t6");
                     p = request.getParameter("password");
                     rp = request.getParameter("cpassword");
                     sq = request.getParameter("d2");
                     an = request.getParameter("t9");
                     
                     c1 = c.length();
                     a1 = a.length();
                     d1 = d.length();
                     g1 = g.length();
                     e1 = e.length();
                     u1 = u.length();
                     p1 = p.length();
                     rp1 = rp.length();
                     sq1 = sq.length();
                     an1 = an.length();
                     
                     if(c1 != 0 &&  a1 != 0 && d1 != 0 && g1 != 0 &&  e1 != 0 &&  u1 != 0 &&  p1 != 0 &&  rp1 != 0 &&  sq1 != 0 &&  an1 != 0)
                     {   
                         PreparedStatement pst;
                         s2="insert into register values(?,?,?,?,?,?,?,?,?,?,?)";
                                    pst = cn.prepareStatement(s2); 
                                    pst.setString(1,c);
                                    pst.setString(2,a);
                                    pst.setString(3,d);
                                    pst.setString(4,g);
                                    pst.setString(5,e);
                                    pst.setString(6,cnt);
                                    pst.setString(7,u);
                                    pst.setString(8,p);
                                    pst.setString(9,rp);
                                    pst.setString(10,sq);
                                    pst.setString(11,an);
                                    pst.executeUpdate(); 

                          PreparedStatement pst1;
                            s1="insert into login values(?,?)";
                            pst1 = cn.prepareStatement(s1); 
                            pst1.setString(1,u);
                            pst1.setString(2,p);
                            pst1.executeUpdate();             
                                                                  
                           out.print("<script>alert('data submited')</script>"); 
                      }
                     else
                         out.print("<script>alert('enter valid data !!')</script>");
                                   
                         
        }catch(Exception e)
        {
           
        }
       %>
                 </td>
            </tr>
          </table>            
            <span class="style6"></span></td>
          </tr>
        </table></td>
            </tr>
          </table>
        </div>
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
