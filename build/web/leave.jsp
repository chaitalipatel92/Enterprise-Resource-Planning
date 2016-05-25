<%-- 
    Document   : leave
    Created on : Apr 18, 2013, 3:18:54 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body bgcolor="cyan">
<form method="post">
<table cellspacing="2" cellpadding="2" border="1">
<tr>
<td>To:</td>
<td>
<input type="text" name="to" size="30" maxlength="30">
</td>
</tr>
<tr>
<td>From:</td>
<td>
<input type="text" name="from" size="30" maxlength="30">
</td>
</tr>
<tr>
<td>Subject</td>
<td>
<input type="text" name="subject" size="30" maxlength="30">
</td>
</tr>
<tr>
<td colspan="2">
<textarea cols="40" rows="10" name="body"></textarea>
</td>
</tr>
<tr>
<td>
<input type="submit" name="submit" value="Submit">
<input type="Reset">
</td>
</tr>
</table>
    
    
    <%
    
    try{
String host = "localhost,127.0.0.1";  //your local host
String to = request.getParameter("to");
String from = request.getParameter("from");
String subject = request.getParameter("subject");
String messageText = request.getParameter("body");
boolean sessionDebug = false;
Properties props = System.getProperties();
props.put("mail.smtp.host", "smtp.gmail.com");
//props.put("mail.transport.protocol", "smtp");
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(messageText);
Transport.send(msg);
out.println("Mail was sent to " + to);
out.println(" from " + from);
out.println(" using host " + host + ".");
}catch(Exception e1)
           {
out.print(e1.getMessage());
}
%>
</form>
</body>
</html>
