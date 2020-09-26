<%-- 
    Document   : saveFile
    Created on : Jul 5, 2020, 12:31:44 PM
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
<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
<%

			String id=request.getParameter("ID");
			String name=request.getParameter("Name");
                        String time=request.getParameter("Time");
                        String price=request.getParameter("Price");
                        
			String gender=request.getParameter("eGender");
			String cont=request.getParameter("Contact");
			
			
			out.print(id+"  "+name);
			
			try
			{
				
                            
                            Connection connection=Helper.connect();
                                                                

                            
				PreparedStatement ps2=connection.prepareStatement("insert into games values(?,?,?,?,?,?)");
				ps2.setString(1,id);
				ps2.setString(2,name);
                                ps2.setString(3,time);
                                ps2.setString(4,price);
				ps2.setString(5,gender);
				ps2.setString(6,cont);
				
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