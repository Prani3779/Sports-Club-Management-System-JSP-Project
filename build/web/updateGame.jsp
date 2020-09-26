<%-- 
    Document   : updateGame
    Created on : Jul 5, 2020, 1:12:39 PM
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
<%@ page import="java.sql.*" %>
<%                       String time=request.getParameter("time");
			//String emid=request.getParameter("emid");
			String Price=request.getParameter("cont");
			//String address=request.getParameter("add");
			String seat=request.getParameter("Seat");
			String empid=request.getParameter("eid");
			
                        String gid="";
                        gid=String.valueOf(session.getAttribute("admingid"));
			
			try
			{
				Connection connection=Helper.connect();
				PreparedStatement ps2=connection.prepareStatement("update games set time='"+time+"',price='"+Price+"',seat='"+seat+"' where game_id='"+gid+"'");
		
				int i=ps2.executeUpdate();
				//out.print("hii");
				if(i==1)
				{
					out.print(i+" record updated!");
					response.sendRedirect("AdminGames.jsp");
				}
				else
				System.out.println("error !");
                                Helper.disconnect(connection);
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
			
%>
			


</body>
</html>