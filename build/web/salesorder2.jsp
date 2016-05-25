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
.style13 {color: #000000; font-size: 10px; font-weight: bold; }
-->
    </style>
     <script language ="JavaScript">
	 	var tamt;
        function fun1(a1)
        {
           // alert(a1);
           location.href ="salesorder2.jsp?id="+a1;
        }
		
        function fun3(pcode,price1,price2,qty1,tamt1)
        {
            //alert(pcode + " " +price1+" " + price2 + " " + qty1 + " " + tamt1);
           location.href ="new.jsp?id="+pcode+"&price1="+price1+"&price2="+price2+"&qty1="+qty1+"&tamt1="+tamt1;
        }
        function fun2(qty,price,tqty)
        {
           // alert(qty+ price+tqty);
            //alert(qty + price + aqty);
            qty1 = parseInt(qty);
            tqty1 = parseInt(tqty);
            price1 = parseInt(price);
            if(qty1 > tqty1)
                {
                    alert("pls. insert less Qty then Available Qty");
                 //   q1.focus();
                
                }
                else
                    {
                        var input="ts1";
                        document.forms['form1'].elements[input].value=qty1*price1;
                        
                    }
                
    }
        
    </script>
  
    </head>
    <body>
     
        <form name="form1" method="POST">
	
             <div id="wrapper">
	<div id="logo">
		<h1>Enterprice Resource Planning</h1>
		<p><em>PROVIDES BEST SOLUTIONS FOR YOUR BUSINESS COMPANY<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr/>
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
        String price = "",clientname = "" , clientid="",qty="";
        String pprice ="", pname1="";
        String pqty = "",totalamt="";
		
		pqty = request.getParameter("qty1");
		totalamt = request.getParameter("tamt1");
		
        try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
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
                                           
                    
                        
                     
                         if(price.length() >0)
                                                         {
                             s1 ="insert into quatition (username,prod_id,prod_name,price) values('"+a +"',"+ pid + ",'"+ pname1 +"',"+price+")";
                            // out.print(s1);
                            st = cn.createStatement();
                            st.executeUpdate(s1);
                            
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
                                     a2 ="quot1.jsp";
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
		<li class="current_page_item"><a href="salesorder.jsp" class="style4">Sales Orders</a></li>
		</ul>
      </div> 
        	<div id="content">
           
            <h2 class="title"><span class="style7"><strong>PURCHASE order</strong></span></h2>
<br>
                 <input name="b1" type="button" value="EDIT" onClick="document.location.href='#'">
            
            &nbsp;<span class="style7"> OR</span> &nbsp;&nbsp;
			<input name="b4" type="submit" id="b1" value="CREATE">
              <br><br>
            <input name="b2" type="button" value="VIEW DELIEVERY ORDER" onClick="document.location.href='#'">
            &nbsp;
            <input name="b3" type="button" value="CREATE INVOICE" onClick="document.location.href='#'">
            &nbsp;&nbsp;
            <input name="b5" type="button" value="CANCEL" onClick="document.location.href='home.jsp'">
            
            <br><br>
			             
            <table height="327" width="905" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="971" height="321">
  <table width="808" border="0">
    <
      <td height="32"><span class="style11">SALES ORDER (NAME OF CUSTOMER)</span></td>
    </tr>
  </table>
  <table width="810" height="41" border="0" cellpadding="5" bgcolor="#CCCCCC">
             
              <tr>
                <td width="136" class="style7"><strong>CUSTOMER:</strong></td>
                <td height="37" colspan="2" style="color:#990000; font-size:14px"><strong><%=clientname%></strong>&nbsp;</td>
                <td width="95" class="style9">DATE:</td>
                <td width="244"><input type="text" name="t4" value="" size="35" /></td>
              </tr>
              
          </table>
          
          <table width="810" height="35" border="0">
            <tr>
              <td><span class="style9">ORDER LINES :</span></td>
            </tr>
          </table>
          
          <table width="800">
      <tr align="center">  
      <td width="120" height="39" class="style7" bgcolor="#999999"><strong>PRODUCT
      </strong> </td>
     
      <td width="120" bgcolor="#999999"><span class="style9">UNIT PRICE</span></td>
      <td width="120" bgcolor="#999999"><span class="style9">AVAILABLE QUANTITY</span></td>
      <td width="120" class="style9" bgcolor="#999999">QUANTITY</td>
      <td width="120" class="style9" bgcolor="#999999">SUBTOTAL </td> 
      <td width="120" bgcolor="#999999"><span class="style9"></span></td>     
      </tr>
      </table>
      
  <table width="800" height="58"  border="0"  bordercolor="#000000">
      <tr>
      <td width="127" height="54" bgcolor="#CCCCCC"><label>
      
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
      <td width="131" bgcolor="#CCCCCC">
	  <label>
	  
	    <div align="center">
	      <input type="text" name="tprice" disabled size="15" value="<%=price%>">
	      </label>
	      </div></td>
      <td width="129" bgcolor="#CCCCCC"><div align="center">
        <input name="tprice2" type="text" disabled   value="<%=qty%>" size="15">
      </div></td>
      
      <td width="127" bgcolor="#CCCCCC">        <label>
          <div align="center">
            <input type="text" name="q1" id="q1" size="15" onBlur="fun2(this.value,tprice.value,tprice2.value)" value ='<%=pqty%>' >
          </div>
          </label>      </td>
      <td width="126" bgcolor="#CCCCCC"><div align="center"><input name="ts1" type="text" size="15" disabled value = "<%=totalamt%>" >
      </div></td>
        <td width="134" bgcolor="#CCCCCC"><div align="center">
          <input name="Add" type="button"  value="ADD" onClick="fun3(pr1.value,tprice.value,tprice2.value,q1.value,ts1.value)">
          
          <%
          
  try
                     {
            String s3="",prod,b,c,d,ts1,f;
            prod = request.getParameter("pr1");
       //     b = request.getParameter("tprice");
        //    c = request.getParameter("tprice2");
         //   d = request.getParameter("q1");
          //  ts1 = request.getParameter("ts1");
                
                     st  = cn.createStatement();
                     if(pqty.length()>0 && totalamt.length() > 0)
                                                 {
                     s3="insert into temp values('"+a +"','"+ prod+"',"+ price +","+ qty +","+ pqty+","+ totalamt +")";
                   out.print(s3);
                   st.executeUpdate(s3);
                                       }
                     
                     }catch(Exception e){}
%>
          
        </div></td>
       </tr>
  </table>
  <label></label>
  <br>
  <table width="800" border="0">
   
    <tr>
      <td width="391" rowspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td class="style7" bgcolor="#999999" align="right" width="201"><div align="center"><strong>TOTAL :</strong></div></td>
      <td bgcolor="#CCCCCC" width="194">&nbsp;</td>
    </tr>
  </table></td>
              </tr>
            </table>

<br><br>
<p style="color:#000000"><strong>
  <%
       
                     try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from s_order");
                     out.print("<table border =1 width ='90%' align ='center' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print("<th>Product ID</th> <th>Price</th> <th>Quantity</th> <th>Subtotal</th>");
                           out.print ("</tr>");
                        while(rs.next())
                                                       {
                            out.print("<tr align = 'center'>");
                            String id = rs.getString("prod_name");
                            out.print("<td>"+ id + "</td>");
                            out.print("<td>"+ rs.getString("unitprice") + "</td>");
                            out.print("<td>"+ rs.getString("qty") + "</td>");
                            out.print("<td>"+ rs.getString("subtotal") + "</td>");
                            
                            out.print("</tr>");
                            
                        }
                          out.print("</table>");
                         
                         }catch(Exception e)
                     {  
                    
                     }
       %>
</strong></p>
</div>
      <div style="clear: both;">&nbsp;</div>
      </div>
      </div>
    <br>
    
    <%@include file="footer.jsp"%>
    <!-- end #footer --> 
    </form>
    </body>
</html>
