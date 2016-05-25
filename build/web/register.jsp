<!doctype html>
   <head>
   <meta charset="UTF-8">
   <title>RTO-ONLINE</title>
   <link rel="icon" href="images/favicon.gif" type="image/x-icon"/>
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
     <![endif]-->

   <link rel="shortcut icon" href="images/favicon.gif" type="image/x-icon"/>
   <link rel="stylesheet" type="text/css" href="css/styles.css"/>

   <link href="css/accordionmenu.css" rel="stylesheet" type="text/css"/>
   <script src="js/accordionmenu.js" type="text/javascript"></script>

   <!-----verification------>
   <script type="text/javascript" src="js/validat.js"></script>
            <style type="text/css">
            .show
            {
                display:table-row-group;
            }
            .hide
            {
                display:none;
            }
        </style>
   
   </head>
   <body onload="DrawCaptcha()">

   <!--start container-->
   <div id="container">

   <!--start header-->
   <header>
    <jsp:include page="header.jsp"></jsp:include>
   </header>

   <!--start intro-->

   <div id="intro">
       <img src="images/bkg_driving_safety_header.jpg"  alt="baner">
   </div>

   <br>
   <strong><marquee direction="left" style="margin-top:10px;background-color:#E1E1E1;font-size:16px">Welcome to RTO Online...Site is under constuction.</marquee></strong>
   <!--end intro-->

   

   <!--start holder-->

   <div class="holder_content">
<!----------------------------------------------------------->
 <section class="group1">
   <h3>RTO Service</h3>

   <div class="holder_news">
   <article >
       <jsp:include  page="home_left_menu.jsp"></jsp:include>
   </article>
   <br>
   <jsp:include page="news.jsp"></jsp:include>
   </div>

</section>
      
 

<!------------------------------------------------------------------------->
<!-- Drop down menu -->

  <aside class="group2">
    <h3>Registration:</h3>
    


   <article class="holder_gallery">
 
       <form name="form1" method="post" action="payment.jsp" onsubmit="return showname()">
          
 		<table frame="border" style="background-color:#e1e1e1;width:600px">
              <tr></br>
                <td colspan="4" align="center" bgcolor="#000000" style="color:white">Your Information</td>
              </tr>
              <tr>
                <td colspan="4" bgcolor="#FFFFFF">Filed mark with asterisk (<span style="color:red">*</span> )are mandatory.</td>
              </tr>
              <tr>
                <td width="162" height="60"><strong>RTO Office<span style="color:red">*&nbsp;</span></strong></td>
                <td width="174"><label for="select"></label>
                  <select name="office" id="office" onchange="show()">
                  <option value="0">-----Select------</option>
                  <option >Ahmedabad</option>
                  <option >Vadodra</option>
                  <option > Surat</option>
                  <option >Rajkot</option>
                  </select></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
              <td id="office1" style="color:#F00"></td>
              </tr>

              <tr>
                  <div class="required">
                      <td><strong>Name</strong><span style="color:red">&nbsp;*</span>(Max. 45 Characters)		</td>
                      <td><label for="Name"></label>
                          <input name="name" type="text" id="name" maxlength="45" ></td><td colspan="2" width="248">*First Name + Middle Name</td>
              </div></tr>
               <tr>
               <td>&nbsp;</td>
               <td id="name1" style="color:#F00"></td>
               </tr>

              <tr>
                <td><strong>Surname<span style="color:red">&nbsp;*</span> </strong></td>
                <td><input type="text" name="surname" id="surname" ></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
              <td id="surname1" style="color:#F00"></td>
              </tr>
  <tr>
      <td><strong>Sex<span style="color:red">&nbsp;</span></strong></td>
      <td><select name="sex" id="sex">
              <option value="0">--select--</option>
    <option name="male">Male</option>
        <option name="female">Female</option>
      </select></td>
    </tr>
              <tr>
                <td><strong>Date Of Birth<span style="color:red">&nbsp;*</span></strong></td>
                <link rel="stylesheet" type="text/css" href="css/datepickr.css" />
                <td><input type="text" name="dob" id="datepick2" size="20" onchange="show()"/></td>
                <script type="text/javascript" src="js/datepickr.min.js"></script>
		<script type="text/javascript">
			new datepickr('datepick2', {
				'dateFormat': 'y-m-d'
			});
			</script>
              </tr>
              <tr>
              <td>&nbsp;</td>
              <td id="dob1" style="color:#F00"></td>
              </tr>

              <tr>
                <td><strong>Email Id<span style="color:red">&nbsp;*</span></strong></td>
                <td><input type="text" name="email" id="email" onchange="checkEmail()"><img src="images/loading15.gif"></td>
                
              </tr>  <tr><td>&nbsp;</td>
                  <td id="email1" style="color:#F00"></td>
              </tr>

              <tr>
                <td><strong>Password<span style="color:red">&nbsp;*</span></strong></td>
                <td><input type="password" name="password" id="password" onchange="lenghtpass()" onClick="show();"></td>
                <td colspan="2"><a href="Password Policy.htm" target="-blank">&nbsp;&nbsp;Password Policy</a></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
              <td id="password1" style="color:#F00"></td>
              </tr>

              <tr>
                <td><strong>Confirm Password<span style="color:red">&nbsp;*</span></strong></td>
                <td><input type="password" name="cpassword" id="cpassword" onchange="comparepass()"></td>
              </tr>
              <tr>
              <td>&nbsp;</td>
              <td id="cpassword1" style="color:#F00"></td>
              </tr>
 <tr>
   <td colspan="2"><strong>Current Address</strong></td>
 </tr>
 <tr>
   <td><strong>Door No</strong></td>
   <td><input type="text" name="doorno" id="doorno" onchange="address_yes()" /></td>
   <td><strong>Street</strong></td>
   <td><input type="text" name="street" id="street" onchange="address_yes()" /></td>
 </tr>
 <tr>
   <td><strong>Village/Town<span style="color:red">*&nbsp;</span></strong></td>
   <td><input type="text" name="village" id="village" onchange="address_yes()" /></td>
   <td><strong>City<span style="color:red">*&nbsp;</span></strong></td>
   <td><input type="text" name="city" id="city" onchange="address_yes()" /></td>
 </tr>
 <tr>
   <td><strong>District<span style="color:red">*&nbsp;</span></strong></td>
   <td><input type="text" name="district" id="district" onchange="address_yes()" /></td>
   <td><strong>Pincode<span style="color:red">*&nbsp;</span></strong></td>
   <td><label for="pincode"></label>
   <input type="text" name="pincode" id="pincode" onchange="address_yes()" /></td>
 </tr>




    <tr>
        <td><strong>Do you have a license?</strong> </td>
        <td><input type="radio" name="RadioGroup2" value="yes" id="RadioGroup2_0" onclick="address_yes()" />
              Yes
              <input type="radio" name="RadioGroup2" value="no" id="RadioGroup2_1" onclick="address_no()"/>
              No
             </td>

    </tr>
             <tr>
                 <td class="hide" id="license"><strong>License No.<span style="color:red">&nbsp;*</span> </strong></td>
                
                 <td class="hide" id="license0"><input type="license_no" name="license_no" id="surname" ></td>
              </tr>
              <tr>
                <td><strong>Contact No.<span style="color:red">&nbsp;*</span> </strong></td>
                <td><input type="text" name="contact_no" id="contact_no" ></td>
              </tr>

              <tr>
                <td><strong>Hint Question<span style="color:red">&nbsp;*</span></strong></td>
                <td><label for="select"></label>
                  <select name="question" id="question">
                  <option value="0">-----Select------</option>
                  <option  >Favourite Colour</option>
                  <option >Favourite Circketer</option>
                  <option >Favourite Food</option>
                  <option>First School</option>
                  <option >First Car Name</option>
                  </select>
                </td>
               </tr>
                <tr>
                <td>&nbsp;</td>
                <td id="question1" style="color:#F00"></td>
                </tr>

              <tr>
                <td><strong>Hint Answer<span style="color:red">&nbsp;*</span></strong></td>
                <td><input type="text" name="answer" id="answer" onchange="show()"></td>
              </tr>
               <tr>
               <td>&nbsp;</td>
               <td id="answer1" style="color:#F00"></td>
               </tr>

              <tr>
                  <td><strong> Enter characters displayed</strong><span style="color:red">&nbsp;*</span></td>
                  <td><textarea id="txtCaptcha" disabled="true" style="background-image:url(images/captch.jpg); text-align:center; border:none;
            font-weight:bold; font-family:Modern"></textarea>
                <td>
                    <input type="button" id="btnrefresh" value="Refresh" onclick="DrawCaptcha();" /></td>
              <tr><td>&nbsp;</td>
                  <td> <input type="text" name="number" id="number"/></td>
              </tr>
                   <tr>
                   <td>&nbsp;</td>
                   <td width="174" id="number1" style="color:#F00"></td>
                   </tr>
              </tr>
              <tr>
                  <td colspan="3" align="right"><strong>
                  <input name="reset" type="reset" value="CLEAR" class="button1"/>
                  <a href="index.jsp"><input name="back" type="button" value="BACK" class="button1"/></a>
                  <input type="submit" name="submit" value="SUBMIT" class="button1"/>
                 </strong></td>
              </tr>
            </table>
          </form>
   </article>

   <article class="holder_gallery"></article>

  </aside>

<!----------------------------------------------------------------->

  

   </div>
   <!--end holder-->

   </div>
   <!--end container-->




   <!--start footer-->
   <footer>
   <div class="container">
   <div id="FooterTwo"> � 2011 Fresh ideas </div>
   <div id="FooterTree"> Valid html5, css3, design and code by <a href="http://www.marijazaric.com">JVM Corporation.</a>   </div>
   </div>
   </footer>
   <!--end footer-->
   <!-- Free template distributed by http://freehtml5templates.com -->
   </body>
</html>
