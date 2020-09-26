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
					
						String game_id=request.getParameter("idn");
	 					out.print(game_id);
						//out.print("<script>alert(id_new);</script>");
						
						try
						{
							out.print(game_id);
							 Connection connection=Helper.connect();
                                                  out.print(game_id);
                            PreparedStatement ps1=connection.prepareStatement("delete from games where game_id='"+game_id+"'");
							out.print(game_id);
							int i = ps1.executeUpdate();
                                                        out.print(game_id);
							if(i>0)
                                                        {
								response.sendRedirect("AdminGames.jsp");
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