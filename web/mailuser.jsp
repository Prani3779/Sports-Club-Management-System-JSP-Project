

<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>

<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String name="Akhilesh Kumar";
                String email="nit.sports.club@gmail.com";
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");   
          Session session1 = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication("abcSender@gmail.com","password");  
           }    
          });    
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session1);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress("abcReceiver@gmail.com"));    
           message.setSubject("sub");    
           message.setText("Hi");    
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}    
             
    
        %>
    </body>
</html>
