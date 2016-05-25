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
.style9 {font-weight: bold}
.style10 {font-weight: bold; color: #000000; }
-->
select {
width: 250;}
</style>

    </style>
     <script language ="JavaScript">
             function fun1(a1,supname)
        {
           // alert(a1);
           location.href ="admin_pur_quot2.jsp?id="+a1+"&supname="+supname;
        }                                                   
        
        function fun4(pname,q1,date,spn)
        {
		              //location.href ="admin_pur_quot2.jsp?id="+pr1+"&price="+tprice+"&qty="+qty+"&pqty="+pqty+";
                              location.href ="admin_pur_quot3.jsp?pname="+pname+"&quantity="+q1+"&date="+date+"&supname="+spn+"";
		} 
                function send(sp)
                {
                     var r = confirm("Are You Sure You Want To Send Request to "+sp+" ?");
                        if(r==true)
                            {
                     document.location.href="admin_quotsend.jsp";
                             }
                             else{
                             }
                }
    </script>
</head>
    <body>
     
        <form method="POST" name="form1">
	
             <div id="wrapper">
	<div id="logo">
		<h1>Enterprice Resource Planning</h1>
		<p><em>PROVIDES BEST SOLUTIONS FOR YOUR BUSINESS COMPANY<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr />
	<!-- end #logo -->
         <%
         String supname  = request.getParameter("supname");
        // out.print(supname);
            String a=session.getAttribute("uname").toString();
            String sid = "";
            sid = request.getParameter("spid");
            if(sid==null)
                sid="0";
            String pid = "";
            pid = request.getParameter("id");
            if(pid==null)
                pid="0";
           // out.println("Welcome  " + " " +a+ "!!!!");
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
        String s1;
        String a1="",a2="",a3="",a4="";
        String date1 = "",clientname="",q1="",price1="",totalamt="";
         String sname1="";
        java.text.DateFormat df1 = new java.text.SimpleDateFormat("yyyy/MM/dd");
        date1= df1.format(new java.util.Date());
        q1=request.getParameter("qty2");
        price1=request.getParameter("price");
        totalamt = request.getParameter("tamt1");
                                     if(q1== null)
                                     q1 = "0";
                                     if(totalamt ==null)
                                     totalamt = "";
                                     if(price1 ==null)
                                     price1 = "";
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     
                     
                        s1 = "select * from supplier where s_name ='"+ supname +"'";
                        //out.print(s1);
                         
                         st = cn.createStatement();
                         rs = st.executeQuery(s1);
                         if(rs.next())
                        {
                          sid = rs.getString("sup_id"); 
                            //out.print(sid);                                                              
                         }
                        
                       /*  s1 = "select * from sup_products where prod_id ='"+ pid +"'";
                        //out.print(s1);
                         
                         st = cn.createStatement();
                         rs = st.executeQuery(s1);
                         if(rs.next())
                        {
                          price1 = rs.getString("price");
                       //out.print(sid);                                                              
                         }
                        
                     //out.print(q1);
                       if(q1.length() >0)
                              {
   
                             s1 ="insert into quatition2(username,prod_id,prod_name,quantity,date,sup_name) values('"+a +"',"+pid+",'"+ pname1 +"',"+q1+",'"+ date1 +"','"+sname1+"')";
                            // out.print(s1);
                            st = cn.createStatement();
                            st.executeUpdate(s1);
                             st  = cn.createStatement();
		     st.executeUpdate("INSERT IGNORE INTO s_quotation SELECT * FROM quatition;");
                            }*/
                     
                       s1 = "select * from user where user ='"+ a + "'";
                              // out.print(s);
                               rs = st.executeQuery(s1);
                               if(rs.next())   
                                {
                                 clientname = rs.getString("client_name");     
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
            <br>
            <h2 class="title"><span class="style7"><span class="style5"><strong>quotation request</strong></span></span></h2>
          
<br>
                    <p>
            <input name="b2" type="button" value="SEND BY EMAIL">&nbsp;
            <input name="b3" type="button" value="PRINT">&nbsp;
            <input name="b4" type="button" value="PLACE ORDER" onClick="document.location.href='admin_pur_order.jsp'">
            &nbsp;
            <input name="b5" type="button" value="CANCEL" onClick="document.location.href='admin_home.jsp'">
            <br>
            </p>
            <br>
            <table height="349" width="700" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="700" height="343">
  <table width="700" border="0">
  </table>
  <br>
      <table width="700" height="75" border="0" cellpadding="5" bgcolor="#FFFFFF">
             <tr>
             <td width="109" height="36" bgcolor="#CCCCCC" colspan="2" align="center"><div align="center"><strong><span class="style5"><strong>CLIENT NAME:</strong></span></strong></div></td>
             <td height="36" colspan="2" bgcolor="#999999" align="center" style="color:#660000"><strong><%=clientname%></strong></td>
             </tr>
              <tr>
                <td width="109" bgcolor="#CCCCCC"><div align="center"><strong><span class="style5"><strong>SUPPLIER NAME:</strong></span></strong></div></td>
                <td height="33" class="style7" bgcolor="#999999">
                  <div align="center"><span style="color:#660000"><%=supname%></span></div>
                <td width="118" class="style5" bgcolor="#CCCCCC"><div align="center"><strong>DATE :</strong></div></td>
                <td width="200" bgcolor="#999999"><div align="center">
                  <input type="text" name="date1" disabled="" value="<%java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy/MM/dd"); %>
<%= df.format(new java.util.Date()) %>">
                </div></td>
              </tr>
          </table>
          
          <table width="700" height="35" border="0">
            <tr>
              <td><span class="style13">ORDER DETAILS :</span></td>
            </tr>
          </table>
          
          <table width="700">
      
      <tr align="center">  
      <td width="221" height="32" class="style7" bgcolor="#999999"><div align="center"><strong><span class="style5">PRODUCT</span>
        </th>
        </strong>
        </th>
      </div>
      <td bgcolor="#999999" class="style10"><div align="center">QUANTITY
        </th>     
      </div>
      <td width="56" rowspan="2" bgcolor="#666666">
      <input name="a1" type="button" value="Add" onClick="fun4(pr1.value,qty2.value,date1.value,'<%=supname%>')">   
      </td> 
      </tr>
      <tr align="center">
        <td height="25" class="style7" bgcolor="#CCCCCC">
            <%
                    
                      try
                     {
            
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from sup_products where sup_id="+ sid);
                     
                     }catch(Exception e){}
          %>
          <select name="pr1" id="pr1">
          <%
             while(rs.next())
                                {
			 	try{
                                        String id = rs.getString("prod_id");
                                        String pname = rs.getString("prod_name");
                                        if(pid.equals(id))
                                              out.print("<option value ="+ id + " selected>" + pname + "</option>");
                                        else
                                            out.print("<option value ="+ id + ">" + pname + "</option>");
				}catch(Exception e1)
				{
				}
                                                               }
			 %>
        </select>
        
        <td width="188" bgcolor="#CCCCCC" class="style9"><label></label>    
          <div align="center">
            <input type="text" name="qty2" id="qty2" value ='<%=q1%>'>       
              </div>
        </tr>
      </table>
      <br><br>
    <p style="color:#000000">
<strong>
 <%
       
                     try
                     {
            
                   
                     rs = st.executeQuery("select * from quatition2 where  username='" + a + "' ");
                     out.print("<table border =0 width ='100%' align ='center' bgcolor = '#FFFFFF'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='#999999' style = 'color:#000000'>");
                         out.print("<th>Product </th><th>Quantity</th><th></th>");
                         out.print ("</tr>");
                        
                          while(rs.next())
                                                       {
                            out.print("<tr align = 'center' bgcolor='#CCCCCC'>");
                            String id = rs.getString("qid");
                            //out.print("<td>"+ rs.getString("sup_name") + "</td>");
                            out.print("<td>"+ rs.getString("prod_name") + "</td>");
                            out.print("<td>"+ rs.getString("quantity") + "</td>");
                            out.print("<td> <a href ='ad_p_quot_deleteData.jsp?x="+ id +"&supname="+supname+"'>Delete</a></td>");
                            
                            out.print("</tr>");
                        }
                          out.print("</table>");
                   
                         }catch(Exception e)
                     {  
                    
                     }
       %>  
		</strong>        

    </p>  </td>
              </tr>
            </table>
            <br><br>
            <div align="center">
              <input name="a2" type="button" value="Send Request" onClick="send('<%=supname%>')">
             
                  </div>
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
