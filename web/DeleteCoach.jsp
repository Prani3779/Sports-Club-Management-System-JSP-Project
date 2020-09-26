<%-- 
    Document   : GameDelete
    Created on : Jul 5, 2020, 12:58:13 PM
    Author     : Priya Rani
--%>

<%@page import="com.core.bank.Helper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sports Club</title>
</head>
<body>
<%@page import="java.sql.*" %>
	 <%
					
						String m_id=request.getParameter("idn");
	 					//out.print(id_new);
						//out.print("<script>alert(id_new);</script>");
						
						try
						{
							
							 Connection connection=Helper.connect();
                                                  
                            PreparedStatement ps1=connection.prepareStatement("delete from exm where id='"+m_id+"'");
							
							int i = ps1.executeUpdate();
							if(i==1)
                                                        {
								response.sendRedirect("AdminCoachDetails.jsp");
							//out.print("<script>alert('hii');</script>");
                                                        }
                                                        Helper.disconnect(connection);
							
						}
                                               // Helper.disconnect(connection);
                                                    
						catch(Exception e3)
						{
							System.out.println(e3);
						}
						
                                                
					
			 %>
	
	
	
	
</body>
</html>