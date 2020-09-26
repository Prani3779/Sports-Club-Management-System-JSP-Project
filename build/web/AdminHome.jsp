<%-- 
    Document   : AdminHome
    Created on : Jun 22, 2020, 4:13:13 PM
    Author     : Priya Rani
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sports Club</title>
<style>
table {
    border-collapse: collapse;
    
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #1f618d;
    color: white;
}
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
	
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #1f618d;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
	border-radius: 12px;
}

.button2:hover {
    background-color: #555555;
    color: white;
}
.blink_text {

    animation:1s blinker linear infinite;
    -webkit-animation:1s blinker linear infinite;
    -moz-animation:1s blinker linear infinite;

     color: red;
    }

    @-moz-keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.0; }
     100% { opacity: 1.0; }
     }

    @-webkit-keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.0; }
     100% { opacity: 1.0; }
     }

    @keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.0; }
     100% { opacity: 1.0; }
     }
     
    #btn1
	{
	 display: block;
    height: 50px;
    margin-bottom: 10px;
    text-align: center;
    line-height: 50px;
    width: 150px;
    margin: 20px;

    color: #FFF;
    text-align: center;
    border: solid #427AA8 1px;
    border-radius: 5px;
    text-decoration: none;

    /* Gradient */
    background: #427AA8;
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIxJSIgc3RvcC1jb2xvcj0iIzU5YTNlMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0MjdhYTgiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
    background: -moz-linear-gradient(top,  #59A3E0 1%, #427AA8 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(1%,#59A3E0), color-stop(100%,#427AA8));
    background: -webkit-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -o-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -ms-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: linear-gradient(to bottom,  #59A3E0 1%,#427AA8 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#59A3E0', endColorstr='#427AA8',GradientType=0 );

    text-shadow: 1px 1px 0 rgba(0,0,0,0.25);
    box-shadow: 0 1px 0 rgba(255,255,255, 0.3), inset 0 1px 0 rgba(255,255,255, 0.3);
}

.button:hover {
    background: #59A3E0;
    text-decoration: none;
    filter: none;
}
    
     
</style>
<script>
			window.history.forward();
			function noBack(){ window.history.forward();}
			
			</script>
</head>
<body onload="noBack();" >
    <%
                            //String nm=String.valueOf(session.getAttribute("memberuid"));
                            String uname_Admin="";
                            try
                                            {
                                               
                                                         Connection connection=Helper.connect();
                                                         PreparedStatement ps=connection.prepareStatement("select name from exm where id=?");
                                                          ps.setString(1,String.valueOf(session.getAttribute("memberuid"))); 
                                                          //out.print("ram");
                                                         ResultSet rs=ps.executeQuery();
                                                        while(rs.next())
                                                        {
                                                             //out.print(rs.getString(1));
                                                             uname_Admin=rs.getString(1);
                                                             session.setAttribute("admin", uname_Admin);
                                                            //out.print(Price);
                                                        }
                                                      // session.setAttribute("address", address);
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                            %>

<ul>
    
    <li> <a  href="#">WELCOME:</a></li>
    <li><a  class="active" href="#"><% out.print(uname_Admin);%></a></li>
   <li style="float: right;"><a href="index.jsp">Logout</a></li>
  <li style="float: right;"><a  href="#">Contact</a></li>
  <li style="float: right;"><a href="#">About</a></li>
   
    <li style="float: right;"><a  href="AdminHome.jsp">Home</a></li>
  
</ul>

<%
/*String sessn=session.getAttribute("date").toString();
if(sessn.equals(null)){}
else
{
	out.print("<script>alert('Please select  valid date!');</script>");
}*/


%>

<form method="post">
	
	<table width="100%" >
		
		<tr><td >
			<table align="center" border="0" width="750px">
				
				<tr style="background-color: #ffffff;color:white;"><td><input type="submit" value="Member Details" name="act" class="button button2"></td><td ><input type="submit" value="Game Details" name="act" class="button button2"></td><td><input type="submit" value="Coach Details" name="act" class="button button2"></td><td><input type="submit" value="Payment Details" name="act" class="button button2"></td><td><input type="submit" value="My Account" name="act" class="button button2"></td><td><input type="submit" value="Add Admin" name="act" class="button button2"></td></tr>
			</table>
		</td></tr>
		<tr><td >
			
		</td></tr>
	</table>
	</form>
	

		<%
					String act_admin=request.getParameter("act");
					if(act_admin == null){
						
					}else if(act_admin.equals("Game Details"))
					{
						%>
                                                <%@include file="AdminGames.jsp" %>
						
						<%
						//out.print("<script>alert('Sign in button clicked !');</script>");
						
					}else if(act_admin.equals("Member Details"))
					{
						%>
                                                <%@include file="AdminMemberDetails.jsp" %>
						
						<%
					}
					else if(act_admin.equals("Payment Details"))
					{
						%>
                                                <%@include file="AdminPaymentDetails.jsp" %>
						
						<%
					}
					else if(act_admin.equals("Coach Details"))
					{
						%>
						 <%@include file="AdminCoachDetails.jsp" %>
						<%
					}
					else if(act_admin.equals("My Account"))
					{
						%>
						 <%@include file="AdminAccount.jsp" %>
						<%
					}
					else if(act_admin.equals("Add Admin"))
					{
						%>
						 <%@include file="AddAdmin.jsp" %>
						<%
					}
					else if(act_admin.equals("Reset")){
						//out.print("Sign up button clicked !");	
						response.sendRedirect("");
					}
					else if(act_admin.equals("Exit")){
						//out.print("Sign up button clicked !");	
						response.sendRedirect("Index.jsp");
					}
			
	 %>
	
</body>
</html>