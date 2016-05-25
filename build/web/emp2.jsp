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
.style9 {color: #000000; font-weight: bold; }
.style11 {
	font-size: 14px;
	font-weight: bold;
	font-style: italic;
	color: #FF0000;
}
.style12 {color: #0000FF}
.style14 {
	color: #000000;
	font-weight: bold;
	font-size: 14px;
	font-style: italic;
}
.style15 {font-size: 16px; font-weight: bold; color: #660099; font-style: italic; }
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
        String ename="",nation="",accountno="",gen="",mrg="",ad="",mob="",dob="",pob="",s2;
        
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
                                rs = st.executeQuery("select * from emp2 where user='"+ a + "'" );
                     
                        if(rs.next())
                        {
							ename = rs.getString("emp_name");
							nation = rs.getString("nation");
							accountno = rs.getString("acnt_no");
							gen = rs.getString("gender");
                                                        mrg = rs.getString("mrg_status");
                                                        ad= rs.getString("ad");
                                                         mob= rs.getString("mob");
							dob= rs.getString("dob");
                                                        if(dob==null)
                                                            dob="";
                                                        if(mob==null)
                                                            mob="";
							pob = rs.getString("birthplace");
                                                    
                       }
                                                     
                                         }catch(Exception e1)
                                   {}
            %>
	<div id="header">
		<div id="menu">
			<ul>
                         <li><a href="employee.jsp" class="first"><strong>Home</strong></a></li>
                          <li class="style7"><a href="emp3.jsp" class="style8"><strong><u>PRIVACY SETTINGS</u></strong></a></li>
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
                    <div class="post">
                        <h2 class="title"><strong>EMPLOYEES</strong>/<span class="style12">Details</span></h2>
                    </div>
            <table height="447" width="800" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="750" height="425"><table width="810" height="376" border="0" cellpadding="4" bgcolor="#CCCCCC">
    <tr><td height="372" colspan="2"><table width="810" height="359" border="0" cellpadding="4" bgcolor="#CCCCCC">
    <tr>
      <td width="132" rowspan="4" bgcolor="#FFFFFF">&nbsp;</td>
      <td height="32" colspan="3"><label> <span class="style14">NAME:</span> </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
    <tr>
      <td height="30" colspan="3"><input type="text" name="t2" value="<%=ename%>" size="60"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
    <tr>
      <td height="23" colspan="3" class="style9">&nbsp;</td>
      </tr>
    <tr>
    <td height="23" colspan="4">&nbsp;</td>
      </tr>
<tr>
<td height="24" colspan="4"><span class="style11">PERSONAL INFORMATION:</span></td>
</tr>
<tr>
<td height="26" colspan="2" class="style15">CITIZENSHIP &amp; OTHER&nbsp;INFORMATION:</td>
<td height="26" colspan="2"><span class="style15">CONTACT INFORMATION:</span></td>
</tr>
   
    <tr>
      <td class="style7"><strong>NATIONALITY:</strong></td>
      <td width="245" height="27"><select name="s2" width="15" style="width:auto" size="0">
        <option value="INDIAN">INDIAN</option>
        <option></option>
      </select>      </td>
      <td width="120" class="style9">HOME ADDRESS:</td>
      <td width="271"><textarea name="t5" rows="3" cols="31" value="<%=ad%>" ></textarea></td>
    </tr>
    <tr>
      <td height="30"><span class="style9">BANK ACCOUNT NO:</span></td>
      <td><input type="text" name="t9" value="<%=accountno%>" size="35" /></td>
      <td width="120" class="style9">MOBILE NO.</td>
      <td width="271"><input type="text" name="t" value="<%=mob%>" size="35" /></td>
    </tr>
    
    <tr>
      <td height="28" colspan="2" class="style15">STATUS:</td>
      <td colspan="2" class="style15">BIRTH:</td>
    </tr>
    <tr>
      <td class="style7"><strong>GENDER:</strong></td>
      <td width="245" height="27"><select name="s3" size="0" id="s3" style="width:auto" width="15">
        <option value="MALE">MALE</option>
        <option value="FEMALE">FEMALE</option>
      </select>      </td>
      <td width="120" class="style9">DATE OF BIRTH:</td>
      <td width="271"><input type="text" name="t4" class="tcal"  value="<%=dob%>" size="31" /></td>
    </tr>
     <tr>
      <td class="style7"><strong>MARITAL STATUS:</strong></td>
      <td width="245" height="30"><select name="s4" size="0" id="s4" style="width:auto" width="15">
        <option value="SINGLE">SINGLE</option>
        <option value="MARRIED">MARRIED</option>
        <option value="ENGAGED">ENGAGED</option>
      </select></td>
      <td width="120" class="style9">PLACE OF BIRTH:</td>
      <td width="271"><input name="t6" type="text" id="t6" value="<%=pob%>" size="35" /></td>
    </tr>
  </table>
          </td>
    </tr>
  </table>
  <form name="form1" method="post" action="">
      <label></label>
    </form>
    </td>
              </tr>
            </table>
                     <div class="post">
            
<div class="entry">
  <div align="center">
    <input type="button" name="b1" id="b1" value="<< BACK" onclick="location.href='employee.jsp'" > 
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input name="v1" type="submit" value="SAVE and EXIT">
  </div>
</div>
    </div>
      </div>
    <p style="font-size:16px; color: #000000;"><br> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><strong><strong><strong>
      <%
  
              
                     
                  ename = request.getParameter("t2");
                 nation = request.getParameter("s2");
                    accountno=request.getParameter("t9");
                  gen=request.getParameter("s3");
               mrg = request.getParameter("s4");
                 ad= request.getParameter("t5");
                mob = request.getParameter("t");
                dob = request.getParameter("t4");
                  pob = request.getParameter("t6");
				
       try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     if(ename.length() != 0)
					{     // st.executeUpdate("update emp2 set emp_name = '" + ename1 + "', nation = '" + nation1 +"', acnt_no = '" + accountno1 +"', gender = '" + gen1 +"', mrg_status= '" + mrg1 +"' where user =" + u);
						st.executeUpdate("update emp2 set emp_name = '" + ename + "', nation = '" + nation +"', acnt_no = '" + accountno +"', gender = '" + gen +"', mrg_status= '" + mrg +"', ad = '" + ad +"', mob= '" +mob +"', dob = '" + dob +"', birthplace= '" + pob +"' where user = +'"+ a + "'");
						out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                               out.print("DATA UPDATED");
                                                  response.sendRedirect("employee.jsp");
                     
					}
                   /*  String eid,ename,nation,accountno,gen,mrg,ad,mob,dob,pob,s2;
                     ename = request.getParameter("t2");
                     nation = request.getParameter("s2");
                    
                     accountno=request.getParameter("t9");
                     gen=request.getParameter("s3");
                     mrg = request.getParameter("s4");
                     ad= request.getParameter("t5");
                     mob = request.getParameter("t");
                     dob = request.getParameter("t4");
                     pob = request.getParameter("t6");
                     if(ename.length() > 0)
                       {   
                        
                         PreparedStatement pst;
                         
                     
                        // s2="insert into emp2(emp_name,nation,acnt_no,gender,mrg_status,add,mob,dob,birthplace) values(?,?,?,?,?,?,?,?,?)";
                         s2="insert into emp2(emp_name,nation,acnt_no,gender,mrg_status,ad,mob,dob,birthplace) values(?,?,?,?,?,?,?,?,?)";   
                                pst = cn.prepareStatement(s2); 
                                    pst.setString(1,ename);
                                    pst.setString(2,nation);
                                    pst.setString(3,accountno);
                                    pst.setString(4,gen);
                                    pst.setString(5,mrg);
                                    pst.setString(6,ad);
                                    pst.setString(7,mob);
                                  pst.setString(8,dob);
                                    pst.setString(9,pob);
                                   pst.executeUpdate();
                                   //out.print(ename);
                                   //out.print(dob + ad+ nation + accountno + gen+mrg+mob+pob );*/
                     
                         // response.sendRedirect("emp3.jsp");
                     
                             
        }catch(Exception e)
        { 
            //out.print(e.getMessage());
        }
       %>
      </strong></strong></strong></strong></p>
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
