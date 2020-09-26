<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <title>Sports Club</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
    </head>
    <body style="height: 680px;
  background-color: red;
  background-image: linear-gradient(to right,#000000,#003300,#000000); ">
        <%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>



        <script>
            function checkSubmission() {
    var r = confirm("Are You Sure ??");
    if (r == true) {
      //var vals="hii";
       var jspcall = "Outdoor.jsp";
        window.location.href = jspcall;
       
    } 
    else {
        txt = "You pressed Cancel!";
        
    }
   // document.getElementById("demo").innerHTML = txt;
}
    $(function(){
      // bind change event to select
      $('#dynamic_select').on('change', function () {
          var url = $(this).val(); // get selected value
          if (url) { // require a URL
              window.location = url; // redirect
          }
          return false;
      });
    });
    function Recall()
    {
        var jspcall ="newCoachForm.jsp";
        window.location.href = jspcall;
    }
   
</script>

<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>
 <%@page import="java.util.*"%>
              <%@ page import="java.sql.*" %>
                    <%
                        String p="";
                        int b=8;
                        String g1=request.getParameter("cur_id");
if(g1==null)
{
    g1=p;
}
    session.setAttribute("gmid",g1);  %>
   
        <table style="width: 100%; height: 100%;">
            <%
                        int seat=0;
                        String Fees="";
                      //  String g1=request.getParameter("cur_id");
                    String ram= (String)session.getAttribute("Akki");
                    //out.print(ram);%>
   
                        
            <tr>
                <td align="center">
                    <form method="post">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="3" align="center">
                                    <label class="form-control btn-success">Member Account Form</label>
                                </td>
                            </tr>
                            <tr>
                                <td>ID</td>
                                <td colspan="2">
                                    <input type="text" name="gid" size="30"  class="form-control" value="<%out.println(session.getAttribute("memberuid"));;%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control"value="<%out.println(session.getAttribute("mname"));%>">
                                </td>
                            </tr>
                           
                <tr>
		<TD>Game Type:</TD>
		    <TD>
		      
			  <select onchange="if (this.value) window.location.href=this.value">
    <option value="">Select Game Type</option>
    <option value="MemberGames.jsp">Indoor</option>
    <option value="AddMoreOutdoor.jsp">Outdoor</option>
</select>	
			  
                        </TD>
		</tr>
                <tr>
                                <td>Game ID</td>
                                <td>
                                    <input type="text" name="GameId1" size="30"  class="form-control" value="<%out.println(g1);%>">
                                </td>
                            </tr>
                           
		
                         <%
                                   
                                            try
                                            {
                                               
                                                         Connection connection=Helper.connect();
                                                         PreparedStatement ps=connection.prepareStatement("select seat from games where game_id=?");
                                                          ps.setString(1,g1); 
                                                          //out.print("ram");
                                                         ResultSet rs=ps.executeQuery();
                                                        while(rs.next())
                                                        {
                                                             //out.print(rs.getString(1));
                                                             seat=Integer.parseInt((rs.getString(1)));
                                                            //out.print(Price);
                                                        }
                                                            
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                                     %>
                               
                               
<!--JSP IF implementation.-->
<%

if(seat!=0)
{
%>

<td align="Right"><input type="button" value="Take A Coach?" name="Exit"
    onclick="openPage('CoachList.jsp')"  class="btn btn-success" /></td> 
<td align="Right"><input type="button"  value="Next" name="Next" onclick="openPage('ConfirmGames.jsp')" class="btn btn-success" /></td>
                                
<%
}
else if(seat==0 && g1.equalsIgnoreCase(""))
{
   %>

   <td align="Right"><input type="button" value="Take A Coach?" name="Exit"
    onclick="openPage('CoachList.jsp')"  class="btn btn-success" /></td> 
<td align="Right"><input type="button"  value="Next" name="Next" onclick="openPage('ConfirmGames.jsp')" class="btn btn-success" /></td>
  
                      
 
<% 
}
else
{
   %>

  
<td colspan="3" align="center">
                                    <label  style="color:red">Sorry! Seat is Full. Please select another game OR </label>
                                    <input type="button"  value="Exit" name="Exit" onclick="openPage('index.jsp')" class="btn btn-success" />
                                </td>    
                                         
<% 
}
%>
                               
 
                            </tr>
                        </table>
                    </form>
                               
                </td>
            </tr>
        </table>
                                     <%   String g_id=g1; 
                                     out.print(seat);
                                         
                                          session.setAttribute("Akki",g_id);//
                                     %>
              
        <!--<script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        -->
    </body>
</html>
