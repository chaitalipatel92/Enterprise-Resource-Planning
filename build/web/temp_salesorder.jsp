<%-- 
    Document   : temp_salesorder
    Created on : Apr 15, 2013, 7:26:51 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <script language ="JavaScript">
	 	var tamt;
        function fun1(a1)
        {
           // alert(a1);
           location.href ="temp_salesorder.jsp?id="+a1;
        }
		
                            <%-- function fun3(pcode,price1,price2,qty1,tamt1)
        {
            //alert(pcode + " " +price1+" " + price2 + " " + qty1 + " " + tamt1);
           location.href ="new.jsp?id="+pcode+"&price1="+price1+"&price2="+price2+"&qty1="+qty1+"&tamt1="+tamt1;
                            
        }--%>
		function fun5()
        {
            //alert(pcode + " " +price1+" " + price2 + " " + qty1 + " " + tamt1);
           location.href ="confirmorder.jsp";
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
    
	   function fun4(pr1,tprice,qty,pqty,tamt)
        {
		              location.href ="addsale.jsp?id="+pr1+"&price="+tprice+"&qty="+qty+"&pqty="+pqty+"&tamt="+tamt;
		} 
		
    </script>

    </head>
    <body>
        <form name="form1" method="post" action="">
          <%
		              String a="abc";
					  String pid = "";
            			String price ="",pname1="",qty="", pqty ="", totalamt ="";
			
			pid = request.getParameter("id");
            if(pid==null)
                pid="0";
						pqty = request.getParameter("qty1");
						totalamt = request.getParameter("tamt1");
                                                      if(pqty== null)
                                                          pqty = "0";
                                                if(totalamt ==null)
                                                    totalamt = "0";

					  Connection cn=null;
        				Statement st=null;
				        ResultSet rs=null;
						try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
			          st  = cn.createStatement();
                      
                        // out.print(s1);
                         
                         st = cn.createStatement();
                         rs = st.executeQuery("select * from product where prod_id ="+ pid);
						 
                         if(rs.next())
                        {
                          price = rs.getString("prod_price");                                      
                          pname1 = rs.getString("prod_name");     
                          qty=rs.getString("pro_qty");
                         }
                                           
                          
					 
        		}catch(Exception e1)
				{
				out.print("Error");
				}
        
		  %>
          
          <p>&nbsp;</p>
          <p>
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
            <br>
             <input type="text" name="tprice" disabled size="15" value="<%=price%>">


      <td width="129" bgcolor="#CCCCCC">
        <input name="tprice2" type="text" disabled   value="<%=qty%>" size="15">
</p>
<input type="text" name="q1" id="q1" size="15" onBlur="fun2(this.value,tprice.value,tprice2.value)" value ='<%=pqty%>' >
<input name="ts1" type="text" size="15" disabled value = "<%=totalamt%>" >
         <input name="b1" type="button" value="add value" onClick="fun4(pr1.value,tprice.value,tprice2.value,q1.value,ts1.value)">
          <p>&nbsp;</p>
          <br>
          <br>
          <p style="color:#000000"><strong>
  <%
       
                     try
                     {
            
                     Class.forName("com.mysql.jdbc.Driver");
                     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?zeroDateTimeBehavior=convertToNull","root","");
                     st  = cn.createStatement();
                     rs = st.executeQuery("select * from temp");
                     out.print("<table border =1 width ='90%' align ='center' bgcolor = '#CCCCCC'style='font-size:16px; color:#000000'> ");
                         out.print ("<tr bgcolor ='black' style = 'color:#FFFFFF'>");
                         out.print("<th>Product ID</th> <th>Product Name</th> <th>Price</th> <th>Quantity</th> <th>Subtotal</th>");
                           out.print ("</tr>");
                        while(rs.next())
                                                       {
                            out.print("<tr align = 'center'>");
                            out.print("<td>"+ rs.getString("id") + "</td>");
                            out.print("<td>"+ rs.getString("pname") + "</td>");
                            out.print("<td>"+ rs.getString("price") + "</td>");
                            out.print("<td>"+ rs.getString("pqty") + "</td>");
                            out.print("<td>"+ rs.getString("total") + "</td>");
                            
                            out.print("</tr>");
                            
                        }
                          out.print("</table><br>");
                          
                    String sum="0";
                          st  = cn.createStatement();
                    rs = st.executeQuery("select sum(total) from temp");
                         
                    if(rs.next())
                                               
                    {
                       
                        sum = rs.getString(1);
                         //out.print(sum);
                    }
                     out.print("<table border =0 width ='90%' align ='center'  ");
                          out.print("<tr><td align ='right'><h3> <u>Total : " + sum +"</u></h3></td></tr>");
                          out.print("</table>");
                                              
                     
                             }catch(Exception e)
                     {  
                    
                     }
       %>
</strong></p>
          <p style="color:#000000">
            <input type="button" name="btn2" id="btn2" value="Confirm Order" onClick="fun5()">
          </p>
      </form>
        <h1>&nbsp;</h1>
</body>
</html>
