package com.core.bank;

import java.util.Properties;    
import java.util.Scanner;
import javax.mail.*;    
import javax.mail.internet.*;    
class Mailer{  
    public static void send(final String from,final String password,String to,String sub,String msg){  
          //Get properties object    
          Properties props = new Properties();
          
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");    
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(from,password);  
           }    
          });    
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
           message.setSubject(sub);    
           message.setText(msg);    
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}    
             
    }  
}  
public class SendMailSSL{    
 public static void main(String[] args) { 
     Scanner sc = new Scanner(System.in);
     String yourmaidid="",id="10001",password="1234",name="Akhilesh Kumar";
     String pass="",url="http://localhost:8081/Sport%20Management/index.jsp";
     
     String msg="Hi "+name +". Your User id is " +id +" And your Password is " +password +'\n'+"For More details click on this link "+url +'\n'+'\n'+'\n'+"Thank You."+'\n'+"Team Sports Club.";
     //from,password,to,subject,message  
     Mailer.send("nit.sports.club@gmail.com","admin@1234","prani3779@gmail.com","Registration Details",msg);  
     //change from, password and to  
 }    
}    