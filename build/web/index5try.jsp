<%-- 
    Document   : main
    Created on : Mar 1, 2013, 11:49:06 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
.style21 {color: #000000; font-weight: bold; }
.style23 {font-size: 14px; font-weight: bold; }
-->
    </style>
     
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
	<div id="header">
		<div id="menu">
			<ul>
                            <li><a href="home.jsp" class="first"><strong>Home</strong></a></li>
                            <li><a href="sale_s.jsp" class="first"><strong>Sales</strong></a></li>
							<li><a href="purchase1.jsp"><strong>Purchase</strong></a></li>
                                <li><a href="ware1.jsp"><strong>Warehouse</strong></a></li>
                                <li><a href="hr1.jsp"><strong>Human Resource</strong></a></li>
                                <li class="style7"><a href="index.jsp" class="style8"><strong><u>LOGOUT</u></strong></a></li>
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

		<li><a href="sale_s.jsp" class="style1 style2">Sales</a></li>
		<li><a href="purchase1.jsp" class="style3">Purchase</a></li>
		<li><a href="hr1.jsp" class="style4">Human Resource</a></li>
		<li><a href="ware1.jsp" class="style4">Warehouse</a></span></li>
		</ul>
      </div> 
        	<div id="content">
            <div class="post">
            <br>
            <h2 class="title"><span class="style19">suppliers/<span class="style16">ADD</span></span></h2>
            <div class="entry">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <br>
           
           
            <table width="684" height="394" border="1" cellpadding="5" bgcolor="#FFFFFF">
    <tr><td width="666" colspan="2"><table width="675" height="374" border="0" cellpadding="4" bgcolor="#CCCCCC">
    <tr>
      <td width="109" rowspan="3" bgcolor="#FFFFFF">&nbsp;</td>
      <td height="27" colspan="3"><input type="text" name="t14" value="NAME" size="60" /></td>
      </tr>
    <tr>
      <td height="27" colspan="3"><input type="text" name="t2" value="COMAPNY NAME" size="60" /></td>
      </tr>
    <tr>
      <td height="27" colspan="3"><input type="text" name="t" value="TAG" size="60" /></td>
      </tr>
    <tr>
      <td><strong><span class="style21 style8 style8">ADDRESS:</span></strong></td>
      <td width="210" height="27"><input type="text" name="t3" value="" size="30" /></td>
      <td width="100" class="style5 style9"><span class="style23">DESIGNATION:</span></td>
      <td width="214"><input type="text" name="t4" value="" size="35" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="27"><input type="text" name="t5" value="" size="30" /></td>
      <td class="style5 style9"><span class="style23">PHONE:</span></td>
      <td><input type="text" name="t6" value="" size="35" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="27"><select name="s1" width="15" style="width:auto" size="0">
          <option>--state--</option>
          <option>andhra pradesh</option>
          <option>aruachal pradesh</option>
          <option>assam</option>
          <option>bihar</option>
          <option>chandgarh</option>
          <option>chhatisgarh</option>
          <option>delhi</option>
          <option>goa</option>
          <option>gujarat</option>
          <option>haryana</option>
          <option>himachal pradesh</option>
          <option>jammu & kashmir</option>
          <option>jharkhand</option>
          <option>karnataka</option>
          <option>kerala</option>
          <option>madhyapradesh</option>
          <option>manipur</option>
          <option>meghalaya</option>
          <option>mizoram</option>
          <option>nagaland</option>
          <option>orissa</option>
          <option>punjab</option>
          <option>pondicherry</option>
          <option>rajasthan</option>
          <option>sikkim</option>
          <option>tamilnadu</option>
          <option>tripura</option>
          <option>uttar pradesh</option>
          <option>uttaranchal</option>
          <option>west begal</option>
        </select></td>
      <td class="style5"><span class="style23">MOBILE:</span></td>
      <td><input type="text" name="t8" value="" size="35" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="27"><input type="text" name="t9" value="" size="30" /></td>
      <td class="style5 style9"><span class="style23">FAX:</span></td>
      <td><input type="text" name="t10" value="" size="35" /></td>
    </tr>
    <tr>
      <td height="27" class="style5 style9"><span class="style8 style8"><strong>WEBSITE:</strong></span></td>
      <td><input type="text" name="t11" value="" size="30" /></td>
      <td class="style5 style9"><span class="style23">EMAIL:</span></td>
      <td><input type="text" name="t12" value="" size="35" /></td>
    </tr>
    <tr>
      <td height="28" colspan="4" class="style5 style9"><span class="style8 style8"><strong>INTERNAL NOTES:</strong></span></td>
    </tr>
    <tr>
      <td colspan="4" height="80"><span class="style21 style8 style8">
        <textarea name="t13" rows="4" cols="80">
                      </textarea>
      </span></td>
    </tr>
    <tr>
      <td height="32" colspan="4" class="style8 style8"><div align="center">
        <input type="submit" name="B1" id="B1" value="SAVE">
        &nbsp;&nbsp;&nbsp;
        
        <input type="button" name="B2" id="B2" value="CANCEL" onClick="document.location.href='index5.jsp'">
        &nbsp;&nbsp;&nbsp;
        <input type="reset" name="B3" id="B3" value="RESET">
      </div></td>
    </tr>
  </table>
          </td>
    </tr>
  </table>
            
            
            </div>
            </div>
           
        </div>
            
<div id="right">
            <div class="post2">
              <div class="entry style6 style11">
                
                  
                    <blockquote>
                     
                      <p align="center"><a href="index5.jsp"><img src="images/prod.jpg" width="163" height="101"/>
                        <strong class="style14 style5 style8">PRODUCTS</strong></a></p>
                    </blockquote>
              </div>
            </div>
            <div class="post2">
              <div class="entry style6 style11">
                
                  <div align="left">
                    <blockquote>
                      <p><a href="index3.jsp"><img src="images/log2.jpg" width="172" height="101"/>
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
