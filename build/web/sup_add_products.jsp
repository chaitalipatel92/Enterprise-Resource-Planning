<%-- 
    Document   : main
    Created on : Mar 1, 2013, 11:49:06 PM
    Author     : home
--%>

<%@page import="com.sun.org.apache.bcel.internal.generic.Select"%>
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
<script type="text/javascript" language="javascript" src="jquery.js"></script>
<script type="text/javascript" language="javascript" src="menu.js"></script>

       
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
.style21 {color: #000000; font-weight: bold; }
.style22 {
	font-size: 18px;
	font-weight: bold;
	font-style: italic;
}
-->
    </style>
    <script>
        function fun4(product,price,supid,supname)
        {
		              //location.href ="admin_pur_quot2.jsp?id="+pr1+"&price="+tprice+"&qty="+qty+"&pqty="+pqty+";
                              location.href ="sup_add_products2.jsp?id="+supid+"&prodname="+product+"&price="+price+"&supname="+supname;
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
            String supname = "";
            supname = request.getParameter("supname");
           
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
        String s1,supid="";
        String a1="",a2="",a3="",a4="";
        String product="",price="";
        product=request.getParameter("t1");
        price=request.getParameter("t2");
                                         if(product==null)
                                            product="";
                                        if(price==null)
                                            price="0";
        
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                      st  = cn.createStatement();
                      s1 = "select * from supplier where s_name='"+ supname +"'"; 
                      rs=st.executeQuery(s1);
                      if(rs.next())
                                                   {
                          supid=rs.getString("sup_id");
                         // out.print(supid);
                      }
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
		<div id="firstpane" class="menu_list">
<p class="menu_head">SALES</p>
<div class="menu_body"> <a href="admin_sale_quot.jsp">Sales Quatation History</a> <a href="admin_sale_order.jsp">Sales Order History</a> </div>
<p class="menu_head">PURCHASE</p>
<div class="menu_body"><a href="admin_pur_quot.jsp">Request Quatation</a>  <a href="admin_pur_order.jsp">Place order</a>
 <a href="admin_quot_history.jsp">Purchase Quatation History</a> <a href="admin_order_history.jsp">Purchase Order History</a> </div>
<p class="menu_head">HUMAN RESOURCE</p>
<div class="menu_body"> <a href="hr1.jsp">Employee Detail</a> <a href="#">Leave Detail</a> </div>
<p class="menu_head">WARE HOUSE</p>
<div class="menu_body"> <a href="ware1.jsp">All Product detail</a> <a href="saled_products.jsp">Saled Product</a> <a href="purchased_products.jsp">Purchased product</a> </div>

      </div> 
      </div> 
        	<div id="content">
            <div class="post">
            <br>
            <h2 class="title"><span class="style19">suppliers/<span class="style16">ADD PRODUCTS</span></span></h2>
            <div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <br>
           
           
            <table width="684" height="215" border="1" cellpadding="5" bgcolor="#FFFFFF">
    <tr><td width="666" height="209" colspan="2">
    <table width="697" height="40" border="0" cellpadding="5" bgcolor="#FFFFFF">
             <tr>
             <td width="552" height="36" align="center" bgcolor="#999999" style="color:#660000" colspan="4"><div align="left"><span class="style22">ADD PRODUCTS :</span></div></td>
             </tr>
          </table>
    <br>
    <table width="700">
      <tr align="center">
        <td width="298" height="32" class="style11" bgcolor="#999999"><div align="center"><strong><span class="style5">PRODUCT</span>
                  </th>
            </strong>
                </th>
          </div>
        <td bgcolor="#999999" class="style21"><div align="center">PRICE</div>
        <td width="70" rowspan="2" bgcolor="#666666"><input name="a1" type="button" value="Add" onClick="fun4(t1.value,t2.value,'<%=supid%>','<%=supname%>')">
        </td>
      </tr>
      <tr align="center">
          <td height="25" class="style11" bgcolor="#CCCCCC"><input type="text" name="t1" id="t1" value="<%=product%>">
        
        <td width="316" bgcolor="#CCCCCC" class="style11"><label></label>
            <label></label>
            <input type="text" name="t2" id="t2" value="<%=price%>">
        </tr>
       </table>
        <br><br>
   <strong>
        <%
        
         try
                     {
            
                   
                     rs = st.executeQuery("select * from sup_products where  sup_id=" + supid);
                     out.print("<table border =0 width ='100%' align ='center' bgcolor = '#FFFFFF'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='#999999' style = 'color:#000000'>");
                         out.print("<th>Product </th><th>Price</th><th></th>");
                         out.print ("</tr>");
                        
                          while(rs.next())
                                                       {
                              String pname = rs.getString("prod_name");
                            out.print("<tr align = 'center' bgcolor='#CCCCCC'>");
                             out.print("<td>"+ pname + "</td>");
                            out.print("<td>"+ rs.getString("price") + "</td>");
                            out.print("<td> <a href ='sup_products_deleteData.jsp?pname="+ pname +"&supname="+supname+"&x="+supid+"'>Delete</a></td>");
                            
                            out.print("</tr>");
                        }
                          out.print("</table>");
                   
                         }catch(Exception e)
                     {  
                    
                     }
       %>  
        </strong>
         
    
    
    
          </td>
    </tr>
        </table>
  			 </div>
             <div align="center"><br>
               <input name="s2" type="button" value="SAVE" onClick="document.location.href='supplier.jsp'">
              </div>
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
