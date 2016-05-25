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
.style5 {color: #000000}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {font-size: 14px}
.style19 {	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
-->
    </style>
     <script>
        function check(value)
        {
        if(value == 0)
            alert("SORRY !!!! \nYou are not authorised to access this module !!!!");
        else
            {}
        }
        
    </script>
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
                                     a1 ="";
                                 else
                                     a1 ="";
                                 
                                 a2 = rs.getString("purchase"); 
                                 if(a2.equals("1"))
                                     a2 ="quot1.jsp";
                                 else
                                     a2 ="";
                                 
                                 a3 = rs.getString("hr"); 
                                 if(a3.equals("1"))
                                     a3 ="";
                                 else
                                     a3 ="";
                                 
                                 a4 = rs.getString("warehouse");                                                                                                                                    
                                 if(a4.equals("1"))
                                     a4 ="";
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
                            <li><a href="<%=a1%>" class="first style14" onClick="check('<%=a1%>')"><strong>Sales</strong></a></li>
              				<li><a href="<%=a2%>" onClick="check('<%=a2%>')"><strong>Purchase</strong></a></li>
                            <li><a href="<%=a3%>" onClick="check('<%=a3%>')"><strong>Human Resource</strong></a></li>
                            <li><a href="<%=a4%>" onClick="check('<%=a4%>')"><strong>Warehouse</strong></a></li>
                            <li class="current_page_item"><a href="customer_products.jsp"><strong>PRODUCTS</strong></a></li>
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
        <li><a href="<%=a1%>" class="style1 style2" onClick="check('<%=a1%>')">Sales</a></li>
                <li><a href="<%=a2%>" class="style3" onClick="check('<%=a2%>')">Purchase</a></li>
		<li><a href="<%=a3%>" class="style4" onClick="check('<%=a3%>')">Human Resource</a></li>
		<li><a href="<%=a4%>" class="style4" onClick="check('<%=a4%>')">Warehouse</a></span></li>
                <li class="current_page_item"><a href="customer_products.jsp" class="style4">PRODUCTS</a></span></li>
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><br>
</h2>
            <h2 class="title"><span class="style19">products</span></h2>
            <br>
            <div class="entry"></div>
             </div>
                    
    <p align="center" style="color:#000000">
<strong>
 <%
       
                     try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from product");
                     out.print("<table border =1 width ='90%' align ='center' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print("<th>Product Name </th><th></th>");
                         
                        out.print ("</tr>");
                        while(rs.next())
                                                       {
                            out.print("<tr align = 'center'>");
                            String pid = rs.getString("prod_id");
                           // out.print("<td>"+ pid + "</td>");
                            out.print("<td>"+ rs.getString("prod_name") + "</td>");
                            out.print("<td width = '100'> <a href ='cust_prod_viewDetail.jsp?x="+ pid +"'>fullDetail</a></td>");
                           // out.print("<td width = '100'> <a href ='p_deleteData.jsp?x="+ pid +"'>Delete</a></td>");
                           // out.print("<td width = '100'> <a href ='p_editData.jsp?x="+ pid +"'>Edit</a></td>");
                            out.print("</tr>");
                            
                        }
                          out.print("</table>");
                         
                         }catch(Exception e)
                     {  
                    
                     }
       %>  
		</strong>        </p>
      </div>
           
      <div style="clear: both;">&nbsp;</div>
      </div>
      </div>
      <br>
    
    <%@include file="footer.jsp"%>
    <!-- end #footer --> 
    </body>
</html>
