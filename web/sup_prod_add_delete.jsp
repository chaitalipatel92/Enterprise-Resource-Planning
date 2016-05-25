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
.style11 {font-weight: bold}
.style14 {color: #000000; font-weight: bold; font-size: 14; }
.style16 {color: #0000FF}
.style19 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style20 {
	font-size: 18px;
	font-style: italic;
	font-weight: bold;
}
-->
    </style>
     <script>
        function fun4(product,price,supid,supname)
        {
		              //location.href ="admin_pur_quot2.jsp?id="+pr1+"&price="+tprice+"&qty="+qty+"&pqty="+pqty+";
                              location.href ="supEDIT_products_addData.jsp?id="+supid+"&prodname="+product+"&price="+price+"&supname="+supname;
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
            String supname  = request.getParameter("supname");
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
        String s1;
        String a1="",a2="",a3="",a4="";
         String product="",price="";
                                        if(product==null)
                                            product="";
                                        if(price==null)
                                            price="0";
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
                           <li><a href="admin_home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="<%=a1%>" class="first"><strong>Sales</strong></a></li>
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
                <li><a href="<%=a1%>" class="style1 style2">Sales</a></li>
		<li><a href="<%=a2%>" class="style3">Purchase</a></li>
		<li><a href="<%=a3%>" class="style4">Human Resource</a></li>
		<li><a href="<%=a4%>" class="style4">Warehouse</a></span></li>
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <br>
            <h2 class="title"><span class="style19"><a href="supplier.jsp" class="style5"><u>suppliers</u></a>/<span class="style21 style16">details</span></span></h2>
<div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
                <strong> <div style="font-size:14px">
                  <p>
                    <%
                
                 String sid ;
                sid  = request.getParameter("x");
               
          try
                     {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from sup_products where sup_id = "+ sid);
                     
                       out.print("<table border =0 width =550 align ='center' bgcolor = '#FFFFFF' style='font-size:16px; color:#FFFFFF'> ");
                         out.print ("<tr height='50' bgcolor ='#000000'>");
                         out.print("<th>Products</th> <th>Price </th> <th></th>");
                         
                        out.print ("</tr>");
                        while(rs.next())
                           {
                            out.print("<tr align ='center' height='37'style='color:#000000'>");
                            String pname= rs.getString("prod_name");
                            out.print("<td width='350' bgcolor = '#CCCCCC'>"+ pname + "</td>");
                            out.print("<td bgcolor = '#CCCCCC'>"+ rs.getString("price") + "</td>");
                            out.print("<td bgcolor = '#CCCCCC'> <a href ='supEDIT_products_deleteData.jsp?pname="+ pname +"&supname="+supname+"&x="+sid+"'>Delete</a></td>");
                            out.print("</tr>");
                           }
                          out.print("</table>");
                          out.print("<br>");
                          out.print("</td>");
                          out.print("</tr>");
                          out.print("</table>");
        }catch(Exception e)
        {  
        }
       %>  
                    </strong></p>
                  <p class="style20"><u>ADD MORE PRODUCTS:</u></p>
                </div>
<br>
                <table width="554" align="center" bgcolor="#FFFFFF">
                <tr>
                <td width="563">
                <table width="548">
      <tr align="center">
        <td width="333" height="32" class="style11" bgcolor="#000000"><div align="center"><strong><span class="style1">PRODUCT</span>
                  </th>
            </strong>
                </th>
          </div>
        <td bgcolor="#000000" class="style21"><div align="center" class="style1"><strong>PRICE</strong></div>
        <td width="85" rowspan="2" bgcolor="#666666"><input name="a1" type="button" value="Add" onClick="fun4(t1.value,t2.value,'<%=sid%>','<%=supname%>')">
        </td>
      </tr>
      <tr align="center">
          <td height="25" class="style11" bgcolor="#CCCCCC"><input name="t1" type="text" id="t1" value="<%=product%>" size="40">
        
        <td width="129" bgcolor="#CCCCCC" class="style11"><label></label>
            <label></label>
            <input name="t2" type="text" id="t2" value="<%=price%>" size="10">
        </tr>
       </table>
       </td>
       </tr>
       </table>
       <br><br>
       </div>
       </div>
            <div align="center">
  <input type="button" name="s1" id="s1" value="<< SUPPLIER PAGE" onClick="document.location.href='supplier.jsp'">
  &nbsp;&nbsp;
              <input type="button" name="h1" id="h1" value="HOME PAGE >>" onClick="document.location.href='admin_home.jsp'">
                </div>
       	</div>
            
<div id="right">
            <div class="post2">
              <div class="entry style6 style11">
                
                  
                    <blockquote>
                     
                      <p align="center"><a href="products.jsp"><img src="images/prod.jpg" width="163" height="101"/>
                        <strong class="style14 style5 style8">PRODUCTS</strong></a></p>
                    </blockquote>
              </div>
            </div>
            <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="left">
                    <blockquote>
                      <p><a href="user.jsp"><img src="images/log2.jpg" width="172" height="101"/>
                      <span class="style14 style5 style8"> USER </span></a></p>
                    </blockquote>
                  </div>
              </div>
            </div>
            </div>
      <div style="clear: both;">&nbsp;</div>
      </div>
      </div>
      <br>
    
    <%@include file="footer.jsp"%>
    <!-- end #footer --> 
    </body>
</html>
