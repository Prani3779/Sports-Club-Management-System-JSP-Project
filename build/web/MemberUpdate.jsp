<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <title>Sports Club</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>



                              <% 
                                   String userid=request.getParameter("uid");
                                   String username=request.getParameter("uname");
                                   String emailid=request.getParameter("email");
                                   String contactno=request.getParameter("cnum");
                                   String password=request.getParameter("pass");
                                   String address=request.getParameter("Address");
                                  try
                                 {
                                            
                                                                Connection connection=Helper.connect();
                                                                
                                                               
                                                               
                                                                PreparedStatement ps=connection.prepareStatement("update exm set name='"+username+"',contact='"+contactno+"',address='"+address+"',email='"+emailid+"',password='"+password+"' where id='"+userid+"'");
                                                               
                                                               
                                                                int a=ps.executeUpdate();
                                                                session.setAttribute("a",a);
                                                                if(a>0)
                                                                {
                                                                    connection.commit();
                                                                    response.sendRedirect("MemberInformation.jsp");
                                                                }
                                                                else
                                                                {
                                                                    connection.rollback();
                                                                    out.println("Account Not Created");
                                                                }
                                                                Helper.disconnect(connection);
                                 }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
//                                   out.print(username);
//                                   out.print(address);
                                        %>                                  
                 
        <script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

