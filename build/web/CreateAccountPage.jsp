<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>

<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<html>
    <head>
        <title>Sports Club</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>



                              <% try
                                 {
                                            
                                                                Connection connection=Helper.connect();
                                                               
                                                                String tp=request.getParameter("Type");
                                                               String name="",email="";
                                                               name=request.getParameter("txt2");
                                                               email= request.getParameter("email");
                                                               session.setAttribute("ename", name);
                                                               session.setAttribute("email", email);
                                                               session.setAttribute("id",request.getParameter("txt1"));
                                                               session.setAttribute("name",request.getParameter("txt2"));
                                                                //out.println(tp);
                                                                PreparedStatement ps=connection.prepareStatement("insert into exm values(?,?,?,?,?,?,?,?,?,?,?)");
                                                                ps.setString(1, request.getParameter("txt1"));
                                                                ps.setString(2, request.getParameter("txt2"));
                                                               ps.setString(3, request.getParameter("gen"));
                                                               ps.setString(4, request.getParameter("contact"));
                                                               ps.setString(5, request.getParameter("Address"));
                                                               ps.setString(6, request.getParameter("email"));
                                                               ps.setString(7, request.getParameter("BG"));
                                                               ps.setString(8, request.getParameter("Age"));
                                                               ps.setString(9, request.getParameter("Password"));
                                                               ps.setString(10, request.getParameter("Doj"));
                                                               ps.setString(11, request.getParameter("Type"));
                                                               
                                                                int a=ps.executeUpdate();
                                                                if(a>0)
                                                                {
                                                                    connection.commit();
                                                                    out.println("Account Created Successfully");
                                                                }
                                                                else
                                                                {
                                                                    connection.rollback();
                                                                    out.println("Account Not Created");
                                                                }
                                                                Helper.disconnect(connection);
                                                               if(tp.equals("Coach"))
                                                                {
                                                                    response.sendRedirect("newCoachForm.jsp");
                                                                }
                                                                
                                                                else
                                                                {
                                                                    response.sendRedirect("MemberForm.jsp");
                                                                }
                                                           
                                                                }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                              String url="http://localhost:8081/Sport%20Management/index.jsp";
                              String msg="Hi "+request.getParameter("txt2") +". Your User id is " +request.getParameter("txt1") +" And your Password is " +request.getParameter("Password") +'\n'+"For More details click on this link "+url +'\n'+'\n'+'\n'+"Thank You."+'\n'+"Team Sports Club.";
     
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
           return new PasswordAuthentication("nit.sports.club@gmail.com","admin@1234");  
           }    
          });    
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session1);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(request.getParameter("email")));    
           message.setSubject("Registration Details");    
           message.setText(msg);    
           //send message  
           Transport.send(message);    
           
          } catch (MessagingException e) {throw new RuntimeException(e);}    
             
    
                              
                                        %>
                                   
                 
        <script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
