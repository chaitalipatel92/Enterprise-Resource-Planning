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
.style5 {color: #000000}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {font-size: 14px}
.style19 {	font-size: 24px;
	font-weight: bold;
	font-style: italic;
}
.style20 {
	color: #FFFFFF;
	font-size: 24px;
	font-style: italic;
	font-weight: bold;
}
-->
    </style>
    <script>
	 function fun4(supname)
        {
           location.href ="admin_pur_quot2.jsp?supname="+supname+"";
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
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
        String s1;
        String a1="",a2="",a3="",a4="";
        String sid = "";
            sid = request.getParameter("spid");
            if(sid==null)
                sid="0";
        
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
                            <li class="current_page_item"><a href="<%=a2%>"><strong>Purchase</strong></a></li>
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
        <li class="current_page_item"><a href="admin_pur_quot.jsp" class="style1 style2">Quotation Requests</a></li>
		<li><a href="admin_pur_order.jsp" class="style3">Purchase Orders</a></li>
                <li><a href="admin_quot_history.jsp" class="style1 style2">Quotation History</a></li>
                  <li><a href="admin_order_history.jsp" class="style1 style2">Order History</a></li>
		
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <h2 class="title"><br>
</h2>
            <h2 class="title"><span class="style19">purchase quotation</span></h2>
            <p><br>
              
              <br>
</p>
            <p align="center" class="style20 style1"><u>SELECT SUPPLIER : </u> </p>
            <p style="color:#000000">
<strong>		</strong>        </p>
            <br>
 <br>            <table width="700" height="75" border="0" cellpadding="5" bgcolor="#FFFFFF" >
               <tr>
                 <td width="200" bgcolor="#CCCCCC"><div align="center"><strong><span class="style5"><strong>SUPPLIER NAME:</strong></span></strong></div></td>
                <td height="33" class="style7" bgcolor="#999999">
                  <div align="center">
                    <%
                    
                      try
                     {
            
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from supplier");
                   
                     
                     }catch(Exception e){}
          %>
                              <select name="suplst">
                                  
                      <%
             while(rs.next())
                                 {
			 	try{
                                        String spid = rs.getString("sup_id");
                                        String sname = rs.getString("s_name");
                                        if(sid.equals(spid))
                                        {
                                              out.print("<option value ="+ sname + ">" + sname + "</option>");
                                        }
                                        else
                                            out.print("<option value ="+ sname + ">" + sname + "</option>");
                                  
				}catch(Exception e1)
				{
				}
                                 
             }
            
			 %>
                                          </select>
               </div>               </tr>
             </table>
             <div align="center"><br>
               <br>
               <br>
               <%--   <% 
                   String sp="";
                   sp =request.getParameter("suplst");
                       if(sp != null)
                           sp = "";
                   out.print(sp);
                                 %>--%>
                       <input name="b1" type="button" value="Continue" onClick="fun4(suplst.value)">
                   
              <br></div><br><br>
            </div>
            <br>
      </div>
            <div id="right">
            
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
            
            <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="right">
                    <blockquote>
                     
                      <p align="center"><a href="products.jsp"><img src="images/prod.jpg" width="163" height="101"/>
                        <strong class="style14 style5 style8">PRODUCTS</strong></a></p>
                    </blockquote>
                  </div>
              </div>
            </div>
            <div class="post2">
              <div class="entry style6 style11">
               
                    <blockquote>
                     
                      <p align="center"><a href="supplier.jsp"><img src="images/sup.jpg" width="162" height="101"/>
                        <span class="style14 style5 style8"><strong>SUPPLIERS </strong></span></a></p>
                </blockquote>
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
