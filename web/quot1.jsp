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
<link rel="stylesheet" type="text/css" href="tcal.css" />
	<script type="text/javascript" src="tcal.js"></script> 

       
    <style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style3 {color: #FFFFFF; font-size: 9%; }
.style4 {color: #FFFFFF; font-size: 10%; }
.style7 {color: #000000}
.style9 {color: #000000; font-weight: bold; }
.style11 {
	color: #000000;
	font-size: 18px;
	font-weight: bold;
}
.style13 {
	color: #990066;
	font-size: 14px;
	font-weight: bold;
}
-->
    </style>
     
    <script language ="JavaScript">
        function fun1(a1)
        {
           // alert(a1);
           location.href ="quot1.jsp?id="+a1;
        }
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
            String a="";
            a=session.getAttribute("uname").toString();
            String pid = "";
            pid = request.getParameter("id");
            if(pid==null)
                pid="0";
            
           //out.println("Welcome  " + " " +a+ "!!!!");
        Connection cn = null;
        Statement st=null;
        ResultSet rs=null;
        String s1;
        String a1="",a2="",a3="",a4="";
        String price = "",clientname = "" , clientid="";
        String pprice ="", pname1="";
        String date1 = "";
        java.text.DateFormat df1 = new java.text.SimpleDateFormat("yyyy/MM/dd");
        date1= df1.format(new java.util.Date());
        //out.print(date1);
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
                         }
                                           
                    // out.print("WELCOME");
                        
                        
                     
                         if(price.length() >0)
                              {
   
                             s1 ="insert into quatition(username,prod_id,prod_name,price,date) values('"+a +"',"+ pid + ",'"+ pname1 +"',"+price+",'"+ date1 +"')";
                            // out.print(s1);
                            st = cn.createStatement();
                            st.executeUpdate(s1);
                             st  = cn.createStatement();
		     st.executeUpdate("insert into s_quotation(username,prod_id,prod_name,price,date) values('"+a +"',"+ pid + ",'"+ pname1 +"',"+price+",'"+ date1 +"')");
                     
                            
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
                            <li><a href="<%=a1%>" class="first" onclick="check('<%=a1%>')"><strong>Sales</strong></a></li>
                            <li class="current_page_item" onclick="check('<%=a2%>')"><a href="<%=a2%>"><strong>Purchase</strong></a></li>
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

		<li class="current_page_item"><a href="quot1.jsp" class="style3">Quotations</a></li>
		<li><a href="salesorder3.jsp" class="style4">Sales Orders</a></li>
		</ul>
      </div> 
        	<div id="content">
            <h2 class="title"><span class="style7"><strong>quotations</strong> / NEW</span></h2>
          
            <br>
                    <p>
            <input name="b2" type="button" value="SEND BY EMAIL">&nbsp;
            <input name="b3" type="button" value="PRINT">&nbsp;
            <input name="b4" type="button" value="PLACE ORDER" onClick="document.location.href='salesorder3.jsp'">
            &nbsp;
            <input name="b5" type="button" value="CANCEL" onClick="document.location.href='home.jsp'">
            <br>
            </p>
            <br>
            <table height="358" width="800" border="1" bgcolor="#FFFFFF" cellpadding="5">
<tr>
  <td width="750" height="352">
  <table width="808" border="0">
    <tr>
      <td height="57"><span class="style11">QUOTATION /</span></td>
    </tr>
  </table>
      <table width="810" height="59" border="0" cellpadding="5" bgcolor="#CCCCCC">
             
              <tr>
                <td width="109" class="style7"><strong>CUSTOMER NAME :</strong></td>
                <td height="55" colspan="2" style="color:#CC0000"><strong><%=clientname%></strong></td>
                <td width="74" class="style9">DATE :</td>
                <td width="259"><input type="text" name="date1" disabled="" value="<%java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy/MM/dd"); %>
<%= df.format(new java.util.Date()) %>"></td>
              </tr>
          </table>
          
          <table width="810" height="35" border="0">
            <tr>
              <td><span class="style13">ORDER DETAILS :</span></td>
            </tr>
          </table>
          
          <table width="806">
      
      <tr align="center">  
      <td width="400" height="32" class="style7" bgcolor="#999999"><strong>PRODUCT
        </th>
      </strong>
        </th>
      <td bgcolor="#999999" class="style9">UNIT PRICE</th>            
        
      </tr>
      <tr align="center">
        <td height="25" class="style7" bgcolor="#999999">
            <%
                    
                      try
                     {
            
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from product");
                   
                     
                     }catch(Exception e){}
          %>
          <select name="prodlst" id="prodlst" onChange="fun1(this.value)">
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
        <td width="238" bgcolor="#999999" class="style9"><label>
          <input type="text" name="tprice" disabled  id="tprice" value="<%=price%>">
          </label>      
          <label></label>
        
      </tr>
      </table>
      
		  		p style="color:#000000">
<strong>
 <%
       
                     try
                     {
            
                   
                     rs = st.executeQuery("select * from quatition where  username='" + a + "' ");
                     out.print("<table border =1 width ='90%' align ='center' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print(" <th>Product </th><th>price</th><th></th>");
                         
                        out.print ("</tr>");
                        while(rs.next())
                                                       {
                            out.print("<tr align = 'center'>");
                            String id = rs.getString("qid");
                              out.print("<td width='460'>"+ rs.getString("prod_name") + "</td>");
                            out.print("<td>"+ rs.getString("price") + "</td>");
                              out.print("<td> <a href ='q_deleteData.jsp?x="+ id +"'>Delete</a></td>");
                            out.print("</tr>");
                            
                        }
                          out.print("</table>");
                         
                         }catch(Exception e)
                     {  
                    
                     }
       %>  
		</strong>
        </p>
		         <br>
  </td>
              </tr>
            </table>
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
