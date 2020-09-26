<%-- 
    Document   : AdminAccount
    Created on : Jul 5, 2020, 6:18:40 PM
    Author     : Priya Rani
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sports Club</title>
    </head>
    <body>
        <form  method="post" action="AdminAccount.jsp">  
 <table align="center" border="0" width="550px">
				
				</form>
   
    
				<form action="updateAdmin.jsp" method="post">
			 <% 
				String act_new=request.getParameter("srch");
				String admin_id="";
					
					String lid=request.getParameter("eid");
                                        admin_id=String.valueOf(session.getAttribute("memberuid"));
                                        
					session.setAttribute("adminkaid",admin_id);
					try {
						Connection connection=Helper.connect();
                                                String query = "select * from exm where id='"+admin_id+"'";
					Statement st = connection.createStatement();
					ResultSet rs = st.executeQuery(query);
					if(rs.next()){
					%>
					
					<tr><td>User ID</td><td colspan="2"><%=rs.getString(1)%></td></tr>
					<tr><td>Name</td><td colspan="2"><%=rs.getString(2)%></td></tr>
                                        <tr><td>Gender</td><td colspan="2"><%=rs.getString(3)%></td></tr>
					<tr><td>Contact</td><td colspan="2"><input type="text" name="cont" value="<%=rs.getString(4)%>"></td></tr>
					<tr><td>Address</td><td colspan="2"><input type="text" name="add" value="<%=rs.getString(5)%>"></td></tr>
                                        <tr><td>Email Id</td><td colspan="2"><input type="text" name="emid" value="<%=rs.getString(6)%>"></td></tr>
					<tr><td>Blood Group</td><td colspan="2"><%=rs.getString(7)%></td></tr>
                                        <tr><td>Age</td><td colspan="2"><%=rs.getString(8)%></td></tr>
					<tr><td>Password</td><td colspan="2"><input type="text" name="pass" value="<%=rs.getString(9)%>"></td></tr>
                                        <tr><td>Join Date</td><td colspan="2"><%=rs.getString(10)%></td></tr>
						<tr><td style="width:200px;"></td><td></td><td colspan="3" ><input type="submit" value="Update" name="upd" class="button button2"></td></tr>
						</form>
					<%
					}
					}
					catch(Exception e){}
					
				
		
				%>

			
</form>
			</table>
                               
                                
    </body>
</html>
