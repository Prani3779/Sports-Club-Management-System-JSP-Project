<%@page import="java.util.Random"%>
<html>
    <head>
        <title>SCM Signup Form..</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
     <body style="height: 700px;
  background-color: red;
  background-image: linear-gradient(to right,#000000,#003300,#000000); ">
        <%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>



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
   %>
   
        <table style="width: 100%; height: 100%">
            <tr>
                <td align="center">
                    <form action="CreateAccountPage.jsp" method="Post">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="2" align="center">
                                    <label class="form-control btn-success">User Registration Form</label>
                                </td>
                            </tr>
                            <%
Random rand = new Random();

int n = rand.nextInt(90000) + 10000;
String rs="U"+Integer.toString(n);
%>
                            <tr>
                                <td>ID</td>
                                <td>
                                    <input type="text" name="txt1" size="30" required="" value="<%out.print(rs);%>" class="form-control" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>
                                    <input type="text" name="txt2" size="30" required="" class="form-control">
                                </td>
                            </tr>
                            <tr><td>Gender</td><td><input type="radio" value="Male" name="gen">M <input type="radio" value="Female" name="gen">F</td></tr>
                <tr>
                                <td>Contact</td>
                                <td>
                                    <input type="text" name="contact" size="30" required="" class="form-control">
                                </td>
                            </tr
                            <tr>
		<TD>Address:</TD>
		    <TD>
		      <textarea NAME="Address" cols="28.6" rows="4" class="form-control"></textarea>
		    </TD>
		</tr>
                <tr>
		<TD>Email ID:</TD>
		    <TD>
		      <INPUT TYPE="email" NAME="email" SIZE="37" class="form-control">
		    </TD>
		</tr>
                <tr>
		<td>
			Blood Group</td><td><input type="text" name="BG" size="37" class="form-control"></td>
		</tr>
		
		
			<td>
			Age</td><td><input type="text" name="Age" size="37" class="form-control"></td>
     	</tr>
     	<tr>
     		<td>Password</td>
     		<td><input type="text" name="Password" size="37" class="form-control"></td>
		</tr>
		<tr>
			<TD>Date:</td>
		     <td><input type="text" name="Doj" value="<% out.print(Dt);%>" size="37" class="form-control" readonly="readonly" ></td>
		</tr>
                <tr>
		<TD>Type:</TD>
		    <TD>
		      
			  <select style="width:250px;" name="Type" class="form-control">
				<option value="Type">Type</option>
				<option value="Coach">Coach</option>
				
				<option value="Member">Member</option>
			  </select>
			</TD>
		</tr>
		
                            <tr>
                                <td><input type="Reset" name="Reset" value="Reset" class="btn btn-success"></td>
                                <td align="Right"><input type="Submit" name="Submit" value="Submit"  class="btn btn-success"></td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
                <%  String id1=request.getParameter("txt1");
                                                              
                    session.setAttribute("id",id1);
                %>
        <script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
