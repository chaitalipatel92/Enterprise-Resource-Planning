<%-- 
    Document   : email
    Created on : Apr 17, 2013, 5:56:24 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="javax.naming.*,java.io.*,javax.mail.*,
javax.mail.internet.*,com.sun.mail.smtp.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
try{
  Session mailSession = Session.getInstance(System.getProperties());
  Transport transport = new SMTPTransport(mailSession,new URLName("localhost"));
  transport.connect("localhost",25,null,null);
  MimeMessage m = new MimeMessage(mailSession);
  m.setFrom(new InternetAddress(%><%request.getParameter("from")%><%));
  Address[] toAddr = new InternetAddress[] {
  new InternetAddress(%><%request.getParameter("to")%><%)
  };
  m.setRecipients(javax.mail.Message.RecipientType.TO, toAddr );
  m.setSubject(%><%request.getParameter("subject")%><%);
  m.setSentDate(new java.util.Date());

  m.setContent(%><%request.getParameter("description")%><%, "text/plain");
  m.setContent(%><%request.getParameter("name")%><%, "text/plain");
  m.setContent(%><%request.getParameter("email")%><%, "text/plain");
  m.setContent(%><%request.getParameter("phone")%><%, "text/plain");
  transport.sendMessage(m,m.getAllRecipients());
  transport.close();
  out.println("Thanks for sending mail!");
}
catch(Exception e){
  out.println(e.getMessage());
  e.printStackTrace();
}
%>
    </body>
</html>
