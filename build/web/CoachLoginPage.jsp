<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.core.bank.Validator"%>
<html>
    <head>
        <title>Sports Club</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        
                           <%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
                                     <%
                                           // Connection con=null;
                       try
			{
                            String type=request.getParameter("cbo1");
                            
				Connection connection=Helper.connect();
                                PreparedStatement ps=connection.prepareStatement("select * from exm");
                                 ResultSet rs=ps.executeQuery();
                                
				
				
                        int x=0;
				while(rs.next())
				{
				//	out.print(" "+rs.getString(1).trim());
					//session.setAttribute("name",rs.getString(3));
                                    
					
						//out.print("hii");
                                    String a=(rs.getString(9));
                                out.print(a);
                                    
						String uid=request.getParameter("uid");
                                                session.setAttribute("memberuid", uid);
						
						 if(request.getParameter("uid").equalsIgnoreCase(rs.getString(1)) && request.getParameter("password").equalsIgnoreCase(rs.getString(9)) && request.getParameter("cbo1").equalsIgnoreCase(rs.getString(11)))
						{
							//x=1;
							//out.print("hii");
                                                    session.setAttribute("idd",request.getParameter("cbo1"));
                                                    session.setAttribute("iddd","priya");
                                          if(type.equalsIgnoreCase("Admin"))
                                          {
                                             response.sendRedirect("AdminHome.jsp"); break;
							//break; 
                                          }
                                           if(type.equalsIgnoreCase("Coach"))
                                          {
                                             response.sendRedirect("CoachHome.jsp");break;
							//break; 
                                          }
                                           if(type.equalsIgnoreCase("Member"))
                                          {
                                             response.sendRedirect("MemberHome.jsp"); break;
							//break; 
                                          }
							
						}
                                                
						else
						{
								
							// x=2;
                                                    out.print("<script>alert('Invalid Username,Password or Type!!!');window.location.href='index.jsp';</script>");
					
						}
							
					
				}
				if(x==1)
				{
					%>
					<jsp:include page="index.jsp"/>
					
                                        <%--<jsp:include page="Login.jsp"/>--%>
				<%}
                                Helper.disconnect(connection);
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			       
                                %>
                                  
                                
                                
                                
                                
                                
        <script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
