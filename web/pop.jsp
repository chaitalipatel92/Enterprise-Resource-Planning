<%-- 
    Document   : pop
    Created on : Apr 6, 2013, 10:35:13 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="css/styles.css">
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
<a href="#" id="button">Click me</a>



<div id="modal">
	
<div id="heading">
		
Are you sure you want to do that?
	
</div>

	
<div id="content">
		
<p>Clicking yes will make Comic Sans your new system<br> default font. Seriously, have you thought this through?
</p>

		
<a href="#" class="button green close"><img src="images/tick.png">Yes, do it now!</a>

		
<a href="#" class="button red close"><img src="images/cross.png">No, I’m insane!</a>
	
</div>
</div>



	
<!--jQuery-->
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	
<script src="js/jquery.reveal.js"></script>

	
<script type="text/javascript">
		
$(document).ready(function() 
{
			
$('#button').click(function(e) 
{ 
// Button which will activate our modal
			   	
$('#modal').reveal(
{ 
// The item which will be opened with reveal
				  	
animation: 'fade',                   
// fade, fadeAndPop, none
					
animationspeed: 600,                       
// how fast animtions are
					
closeonbackgroundclick: true,              
// if you click background will modal close?
					
dismissmodalclass: 'close'    
// the class of a button or element that will close an open modal
				
});
			
return false;
			
});
		
});
	
</script>
    </body>
</html>
