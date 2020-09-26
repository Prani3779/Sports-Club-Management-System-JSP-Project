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
<%                       
    
                      String contact=request.getParameter("cont");
			//String emid=request.getParameter("emid");
			String address=request.getParameter("add");
			//String address=request.getParameter("add");
			String email=request.getParameter("emid");
			String pass=request.getParameter("pass");
			
                        String gid="";
                        gid=String.valueOf(session.getAttribute("adminkaid"));
			
			try
			{
				Connection connection=Helper.connect();
				PreparedStatement ps2=connection.prepareStatement("update exm set contact='"+contact+"',email='"+email+"',address='"+address+"',password='"+pass+"' where id='"+gid+"'");
		
				int i=ps2.executeUpdate();
				//out.print("hii");
				if(i==1)
				{
					out.print(i+" record updated!");
					response.sendRedirect("AdminHome.jsp");
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