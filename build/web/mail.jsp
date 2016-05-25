<%-- 
    Document   : mail
    Created on : Apr 17, 2013, 5:53:28 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" width="50%"  cellpadding="0" cellspacing="0">
  <tr>
  <td width="100%">
  <form method="POST" action="email.jsp">
  <table border="1" width="100%" cellpadding="0" cellspacing="0">

  <tr>
  <td width="50%"><b>To:</b></td>
  <td width="100%"><input type="text" name="to" size="50"></td>
  </tr>
  <tr>
  <td width="50%"><b>From:</b></td>
  <td width="100%"><input type="text" name="from" size="50"></td>
  </tr>
  <tr>
  <td width="50%"><b>Subject:</b></td>
  <td width="100%"><input type="text" name="subject" size="50"></td>
  </tr>

<tr>
  <td width="50%"><b>Name:</b></td>
  <td width="100%"><input type="text" name="name" size="50"></td>
  </tr>


<tr>
  <td width="50%"><b>Email:</b></td>
  <td width="100%"><input type="text" name="email" size="50"></td>
  </tr>

<tr>
  <td width="50%"><b>Phone:</b></td>
  <td width="100%"><input type="text" name="phone" size="50"></td>
  </tr>

  <tr>
  <td width="50%"><b>Description:</b></td>
  <td width="100%"><textarea name="description" type="text" 
    cols="40" rows="5" size=80>
  </textarea>
  </td>
  </tr>
  <tr>
  <td><p><input type="submit" value="Send Mail" name="sendMail"></td>
  </tr>
  </table>
  </p>
  </form>
  </td>
  </tr>
</table>
</body>
    </body>
</html>
