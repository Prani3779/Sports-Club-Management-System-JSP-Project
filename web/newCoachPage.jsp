<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <title>SCM Coach Form..</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
    </head>
    <body style="height: 700px;
  background-color: red;
  background-image: linear-gradient(to right,#000000,#003300,#000000); ">
        <%@page import="java.util.*"%>
              <%@ page import="java.sql.*" %>
                    <%
                        
                        String g1=request.getParameter("cur_id");
                    if(g1==null)
                    {
                        g1="";
                    }
                    %>
   
        <table style="width: 100%; height: 100%">
            <tr>
                <td align="center">
                    <form method="post" action="newCoachForm.jsp">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="3" align="center">
                                    <label class="form-control btn-success">Coach Details</label>
                                </td>
                            </tr>
                            <tr>
                                <td>ID</td>
                                <td colspan="2">
                                    <input type="text" name="gid" size="30"  class="form-control" value="<%out.println(session.getAttribute("id"));%>" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control"value="<%out.println(session.getAttribute("name"));%>" readonly="readonly">
                                </td>
                            </tr>
                           
                <tr>
		
			  
                        </TD>
		</tr>
                <tr>
                                <td>Game ID</td>
                                <td>
                                    <input type="text" name="GameId" size="30"  class="form-control" value="<%out.print(request.getParameter("GameId"));%>" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <td>Experience</td>
                                <td>
                                    <input type="text" name="exp" size="30" value="<%out.print(request.getParameter("exp"));%>" class="form-control" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <td>Fees</td>
                                <td>
                                    <input type="text" name="fees" size="30" value="<%out.print(request.getParameter("fees"));%>" class="form-control" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <label class="form-control btn-danger">
                            
		
                          
                      
              
        <!--<script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        -->

        <%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>

        <script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>

                              <%
                                  
                                             try
                                            {
                                                                Connection connection=Helper.connect();
                                                                //String tp=request.getParameter("Type");
                                                               
                                                               //session.setAttribute("setfee",request.getParameter("fees"));
                                                               //session.setAttribute("setexpr",request.getParameter("exp"));
                                                                //out.println(tp);
                                                                PreparedStatement ps=connection.prepareStatement("insert into coach values(?,?,?,?,?)");
                                                                ps.setString(1, request.getParameter("gid"));
                                                                ps.setString(2, request.getParameter("gname"));
                                                               ps.setString(3, request.getParameter("GameId"));
                                                               ps.setString(4, request.getParameter("fees"));
                                                               ps.setString(5, request.getParameter("exp"));
                                                                
                                                                
                                                                
                                                                int a=ps.executeUpdate();
                                                                if(a>0)
                                                                {
                                                                    connection.commit();
                                                                    out.println("Account Created Successfully");
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
                                                            
                                        %>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <!--<td ><input type="Submit" name="Submit1" value="Submit"  class="btn btn-success" </td>
                                --><td align="Left"><input type="Submit" name="Submit" value="Add More Games"  class="btn btn-success"></td>
                           
                                <td align="Right"><input type="button" value="Exit" name="Exit"
    onclick="openPage('index.jsp')"  class="btn btn-success" /></td>
                           
 
                            </tr>
                       </table>
                    </form>
                 
        <script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
