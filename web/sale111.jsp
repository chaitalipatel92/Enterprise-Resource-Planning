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
	        <%
            String aa1 =session.getAttribute("name").toString();
            String b1 =session.getAttribute("desig").toString();
            String c1 =session.getAttribute("coname").toString();
          // String d1 =session.getAttribute("addr").toString();
            String e1 =session.getAttribute("mail").toString();
            String f1 =session.getAttribute("mob").toString();
            %>        
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
                                         }catch(Exception g1)
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
		<li><a href="quot.jsp" class="style3">Quotations</a></li>
		<li><a href="salesorder.jsp" class="style4">Sales Orders</a></li>
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><strong>customers</strong> / <span class="style5">NEW</span></h2>
<div class="entry">
                <input name="v1" type="submit" value="SAVE" onClick="document.location.href='#'">
            
            &nbsp; OR &nbsp;&nbsp; <a href="sales1.jsp" class="style1"> DISCARD </a><label> <p style="font-size: 12px; color: #000000;"> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%--     <%
        Connection cn;
        Statement st;
        ResultSet rs;
        String s,c="";
        
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                 //   String c,co,a,w,d,p,m,f,e,in,s1,a1,a2,a3,a4,a5;
                     
                   /*   c = request.getParameter("t1");
                     co = request.getParameter("t2");
                     a1=request.getParameter("t3");
                     a2=request.getParameter("t5");
                     a3=request.getParameter("t7");
                     a4=request.getParameter("s1");
                     a5=request.getParameter("t9");
                     
                     a=a1+a2+a3+a4+a5;
                     
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
                                    
                        //  out.print("Data submitted"); 
   
                     }
                    */
                     
                     s = "select * from customer";
                     rs= st.executeQuery(s);
                     while(rs.next())
                     {
                         c=rs.getString("cname");
						 //d=rs.getString("designation");
						// co=rs.getString("co_name");
						// a=rs.getString("add");
						// e=rs.getString("email");
						// m=rs.getString("mob");
                     }        
        }catch(Exception e)
        {
        //  out.print(e);  
        }
       %>
--%>
    </p>
             </label></div>
            </div>
                
        <table height="447" width="800" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="750" height="425">
  <table width="750" height="278" border="0" cellpadding="5" bgcolor="#CCCCCC" align="center">
              <tr>
                <td width="191" height="46"><div align="right"><span class="style9">NAME:</span></div></td>
                <td width="593" align="center"><input type="text" name="t1" value="<%out.print(aa1);%>" size="60" /></td>
              </tr>
               <tr>
                <td width="191" height="44"><div align="right"><span class="style9">DESIGNATION:</span></div></td>
                <td align="center"><input type="text" name="t1" value="<%out.print(b1);%>" size="60" /></td>
              </tr>
              <tr>
                <td height="44" class="style9"><div align="right">COMPANY NAME:</div></td>
                <td align="center"><input type="text" name="t2" value="<%out.print(c1);%>" size="60" /></td>
              </tr>
              <tr>
                <td class="style7"><div align="right"><strong>ADDRESS:</strong></div></td>
                <td height="40" align="center"><input type="text" name="t3" value="<%=session.getAttribute("addr")%>" size="60"/></td>
              </tr>
              <tr>
                <td height="46" class="style9"><div align="right">EMAIL:</div></td>
                <td align="center"><input type="text" name="t11" value="<%out.print(e1);%>" size="60" /></td>
              </tr>
               <tr>
                <td height="44" class="style9"><div align="right"><span class="style7"><strong>MOBILE</strong>:</span></div></td>
                <td align="center"><input type="text" name="t11" value="<%out.print(f1);%>" size="60" /></td>
              </tr>
          </table></td>
              </tr>
            </table>
      </div>
   
      <div style="clear: both;">&nbsp;
        
      </div>
      
      </div>
        
      </div>
    <br>
    
    
    
/
<%@include file="footer.jsp"%>
   <!-- end #footer --> 
    </body>
</html>
