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
.style7 {color: #000000}
.style9 {color: #000000; font-weight: bold; }
.style11 {
	color: #000000;
	font-size: 18px;
	font-weight: bold;
}
.style12 {color: #000000; font-size: 10px; }
-->
    </style>
     <script language ="JavaScript">
	 	var tamt;
        function fun1(a1)
        {
           // alert(a1);
           location.href ="salesorder3.jsp?id="+a1;
        }
        function check(value)
        {
        if(value == 0)
            alert("SORRY !!!! \nYou are not authorised to access this module !!!!");
        else
            {}
        }
    <%--	
        function fun3(pcode,price1,price2,qty1,tamt1)
        {
            //alert(pcode + " " +price1+" " + price2 + " " + qty1 + " " + tamt1);
           location.href ="new.jsp?id="+pcode+"&price1="+price1+"&price2="+price2+"&qty1="+qty1+"&tamt1="+tamt1;
        }
    --%>
		function fun5()
        {
             var r = confirm("Products will be delivered to you within two weeks. \n Are You Sure You Want To Confirm Order?");
                        if(r==true)
                            {
                                location.href ="confirmorder.jsp";
                            }
                else
                    {}
            //alert(pcode + " " +price1+" " + price2 + " " + qty1 + " " + tamt1);
           //location.href ="confirmorder.jsp";
        }

        function fun2(qty,price)
        {
           // alert(qty+ price+tqty);
            //alert(qty + price + aqty);
            qty1 = parseInt(qty);
            price1 = parseInt(price);
            var input="ts1";
            document.forms['form1'].elements[input].value=qty1*price1;
           }
    
	   function fun4(pr1,tprice,qty,pqty,tamt,date1)
        {
		              location.href ="addsale.jsp?id="+pr1+"&price="+tprice+"&qty="+qty+"&pqty="+pqty+"&tamt="+tamt+"&date="+date1;
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
            String a=session.getAttribute("uname").toString();
           // out.println("Welcome  " + " " +a+ "!!!!");
            String pid = "";
            pid = request.getParameter("id");
            if(pid==null)
                pid="0";
        Connection cn=null;
        Statement st=null;
        ResultSet rs=null;
        String s1;
        String a1="",a2="",a3="",a4="";
        String clientname = "" , clientid="";
        String price ="",pname1="",qty="", pqty ="", totalamt ="";
        String pprice ="";
        String date1 = "";
        java.text.DateFormat df1 = new java.text.SimpleDateFormat("yyyy/MM/dd");
        date1= df1.format(new java.util.Date());
		pqty = request.getParameter("qty1");
		totalamt = request.getParameter("ts1");
                                                 if(pqty== null)
                                                          pqty = "0";
                                                if(totalamt ==null)
                                                    totalamt = "0";
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     //out.print(date);
                      s1 = "select * from product where prod_id ="+ pid;
                        // out.print(s1);
                         
                         st = cn.createStatement();
                         rs = st.executeQuery(s1);
						 
                         if(rs.next())
                        {
                          price = rs.getString("prod_price");                                      
                          pname1 = rs.getString("prod_name");     
                          qty=rs.getString("pro_qty");
                         }
                                       
                     
                       s1 = "select * from user where user ='"+ a + "'";
                              // out.print(s);
                               rs = st.executeQuery(s1);
                               if(rs.next())   
                                {
                                 clientname = rs.getString("client_name");   
                                 clientid = rs.getString("client_id");  
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
                                         }catch(Exception e1)
                                   {}
                                %>
	<div id="header">
		<div id="menu">
			<ul>
                            <li><a href="home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="<%=a1%>" class="first" onclick="check('<%=a1%>')"><strong>Sales</strong></a></li>
                            <li class="current_page_item"><a href="<%=a2%>" onclick="check('<%=a2%>')"><strong>Purchase</strong></a></li>
                             <li><a href="<%=a3%>" onclick="check('<%=a3%>')"><strong>Human Resource</strong></a></li>
                            
                            <li><a href="<%=a4%>" onclick="check('<%=a4%>')"><strong>Warehouse</strong></a></li>
                             <li><a href="customer_products.jsp"><strong>PRODUCTS</strong></a></li>
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
		<li><a href="quot1.jsp" class="style3">Quotations</a></li>
		<li class="current_page_item"><a href="salesorder3.jsp" class="style4">Sales Orders</a></li>
		</ul>
      </div> 
        	<div id="content">
            <h2 class="title style7"><strong>PURCHASE order</strong></h2>
    
            <br>
          <input name="b3" type="button" value="DELIVER">
            &nbsp;&nbsp;
<input name="b5" type="button" value="CANCEL" onClick="document.location.href='home.jsp'">
            <br><br>
            
    <table height="336" width="800" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="857" height="330">
  <table width="800" border="0">
    <tr>
      <td height="57"><span class="style11">OUT (DLVR_NUMBER)</span></td>
    </tr>
  </table>
  <table width="715" height="62" border="0" cellpadding="5" bgcolor="#CCCCCC">
             
              <tr>
                <td width="100" class="style7"><strong>CUSTOMER:</strong></td>
                <td width="200" colspan="2" style="color:#990000; font-size:14px"><strong><%=clientname%></strong>&nbsp;</td>
                <td width="100" class="style9">DATE:</td>
                <td width="200"><input type="text" name="date1" disabled="" value="<%java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy/MM/dd"); %>
<%= df.format(new java.util.Date()) %>"></td>
              </tr>
          </table>
          
          <table width="800" height="35" border="0">
            <tr>
              <td><span class="style9"> PRODUCTS:</span></td>
            </tr>
          </table>
          
          <table width="800">
      <tr align="center">  
      <td width="120" height="39" class="style7" bgcolor="#999999"><strong>PRODUCT
      </strong> </td>
     
      <td width="120" bgcolor="#999999"><span class="style9">UNIT PRICE</span></td>
      
      <td width="120" class="style9" bgcolor="#999999">QUANTITY</td>
      <td width="120" class="style9" bgcolor="#999999">SUBTOTAL </td> 
      <td width="120" bgcolor="#999999"><span class="style9"></span></td> 
      <td width="20" bgcolor="#999999" style="visibility:hidden"><span class="style9">AQUANTITY</span></td>    
      </tr>
      </table>
      
  <table width="800" height="22"  border="0" bordercolor="#000000">
      
      <tr>
      <td width="139" height="54" bgcolor="#CCCCCC"><label>
      
        <div align="center">
          <%
                    
                      try
                     {
                          
            
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from product");
                   
                     
                     }catch(Exception e){}
          %>
            <select name="pr1" id="pr1"  onChange="fun1(this.value)">
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
              </label>
        </div></td>
      <td width="140" bgcolor="#CCCCCC">
	  <label>
	  
	    <div align="center">
	      <input type="text" name="tprice" disabled size="15" value="<%=price%>">
	      </label>
	      </div></td>
     
      
      <td width="139" bgcolor="#CCCCCC">        <label>
          <div align="center">
            <input type="text" name="q1" id="q1" size="15" onBlur="fun2(this.value,tprice.value)" value ='<%=pqty%>' >
          </div>
          </label>      </td>
      <td width="139" bgcolor="#CCCCCC"><div align="center"><input name="ts1" type="text" size="15" disabled value = "<%=totalamt%>" >
      </div></td>
        <td width="140" bgcolor="#CCCCCC"><div align="center">
          <input name="b1" type="button"  value="ADD" onClick="fun4(pr1.value,tprice.value,tprice2.value,q1.value,ts1.value,date1.value)">
          
          <br>
          <p style="color:#000000">&nbsp;</p>
          
        </div></td>
        <td width="46" bgcolor="#CCCCCC" style="visibility:hidden"><div align="center">
        <input name="tprice2" type="text" disabled style="visibility:hidden" value="<%=qty%>" size="7">
      </div></td>
       </tr>
  </table>
  <div align="center"><br>
      <br>
    <strong style="color:#000000">
      <%
       
                     try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from temp");
                     out.print("<table border =1 width ='90%' align ='left' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print("<th>Product Name</th> <th>Price</th> <th>Quantity</th> <th>Subtotal</th>");
                           out.print ("</tr>");
                        while(rs.next())
                                                       {
                            out.print("<tr align = 'center'>");
                            //out.print("<td>"+ rs.getString("id") + "</td>");
                            out.print("<td>"+ rs.getString("pname") + "</td>");
                            out.print("<td>"+ rs.getString("price") + "</td>");
                            out.print("<td>"+ rs.getString("pqty") + "</td>");
                            out.print("<td>"+ rs.getString("total") + "</td>");
                            
                            out.print("</tr>");
                            
                        }
                          out.print("</table>");
                          
                    String sum="0";
                          st  = cn.createStatement();
                    rs = st.executeQuery("select sum(total) from temp");
                         
                    if(rs.next())
                                               
                    {
                       
                        sum = rs.getString(1);
                         //out.print(sum);
                    }
                    out.print("<br><br>");
                     out.print("<br><table border =0 width ='90%' align ='center' > ");
                          out.print("<tr><td align ='right'><h2> <u>Total : " + sum +"</u></h2></td></tr>");
                           out.print("<br>");                   
                     
						  out.print("</table>");
                          
                             }catch(Exception e)
                     {  
                    
                     }
       %>
      </strong>
    <input type="button" name="btn2" id="btn2" value="Confirm Order" onClick="fun5()">
  
  </div></td>
          </tr>
            </table>
            
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
