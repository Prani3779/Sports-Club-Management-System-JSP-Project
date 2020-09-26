<%-- 
    Document   : AdminAccount
    Created on : Jul 5, 2020, 6:18:40 PM
    Author     : Priya Rani
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Calendar"%>
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
        <form  method="post" action="Add.jsp">  
 <table align="center" border="0" width="550px">
				
				</form>
   
    
				<form action="AddAdmin.jsp" method="post">
			 <% 
                             int id=0;
String id_new=null;
int idb=0;
String ida=null;
Calendar cal=Calendar.getInstance();
   int date=cal.get(Calendar.DATE);
   int month=cal.get(Calendar.MONTH)+1;
   int year=cal.get(Calendar.YEAR);
   
   String Dt=date+"/"+month+"/"+year;
   session.setAttribute("Date",Dt);
   String nm="";
   nm=request.getParameter("upd");
  
   
					if(nm == null){
						
					}else if(nm.equals("Add"))
					{
						try
                                 {
                                          Connection connection=Helper.connect();
                                                                
                                                                PreparedStatement ps=connection.prepareStatement("insert into exm values(?,?,?,?,?,?,?,?,?,?,?)");
                                                                ps.setString(1, request.getParameter("uid"));
                                                                ps.setString(2, request.getParameter("uname"));
                                                               ps.setString(3, request.getParameter("gen"));
                                                               ps.setString(4, request.getParameter("cont"));
                                                               ps.setString(5, request.getParameter("add"));
                                                               ps.setString(6, request.getParameter("email"));
                                                               ps.setString(7, request.getParameter("bg"));
                                                               ps.setString(8, request.getParameter("age"));
                                                               ps.setString(9, request.getParameter("pass"));
                                                               ps.setString(10, request.getParameter("Doj"));
                                                               ps.setString(11, request.getParameter("admin"));
                                                               
                                                                int a=ps.executeUpdate();
                                                                if(a>0)
                                                                {
                                                                    connection.commit();
                                                                    out.println("New Admin Added!!");
                                                                    response.sendRedirect("AdminHome.jsp");
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
				
						//out.print("<script>alert('Sign in button clicked !');</script>");
						
					}
                                      
					%>
					
					<tr><td>User ID</td><td colspan="2"><input type="text" name="uid" ></td></tr>
					<tr><td>Name</td><td colspan="2"><input type="text" name="uname" ></td></tr>
                                        <tr><td>Gender</td><td colspan="2"><input type="radio" value="Male" name="gen">M <input type="radio" value="Female" name="gen">F</td></tr>
					<tr><td>Contact</td><td colspan="2"><input type="text" name="cont" ></td></tr>
					<tr><td>Address</td><td colspan="2"><input type="text" name="add" ></td></tr>
                                        <tr><td>Email Id</td><td colspan="2"><INPUT TYPE="email" NAME="email"></td></tr>
					<tr><td>Blood Group</td><td colspan="2"><INPUT TYPE="text" NAME="bg"></td></tr>
                                        <tr><td>Age</td><td colspan="2"><INPUT TYPE="text" NAME="age"></td></tr>
					<tr><td>Password</td><td colspan="2"><input type="text" name="pass" ></td></tr>
                                        <tr><td>Join Date</td><td colspan="2"><input type="text" name="Doj" value="<% out.print(Dt);%>" readonly></td></tr>
                                        <tr><td>Type</td><td colspan="2"><input type="text" name="admin" value="Admin" readonly="Admin"></td></tr>
						<tr><td style="width:200px;"></td><td></td><td colspan="3" ><input type="submit" value="Add" name="upd" class="button button2"></td></tr>
						</form>
					
					
				
		
				

			
</form>
			</table>
                               
                                
    </body>
</html>
