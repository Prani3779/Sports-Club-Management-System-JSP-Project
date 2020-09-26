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
                        String p="Not Selected";
                        
                        String cid=request.getParameter("coach_id");
                        //cid=(String)session.getAttribute("cid");
                        
                        if(cid==null)
                        {
                            cid=p;
                            
                            //session.setAttribute("no",cid);
                           
                        }
                        String g1=request.getParameter("cur_id");
                        // out.print(cid);
                        session.setAttribute("cid", cid);
                        //out.print(cid);
            %>
             
        <table style="width: 100%; height: 100%">
            
            <tr>
                <td align="center">
                    <form  method="post">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="3" align="center">
                                    <label class="form-control btn-success" cssStyle="color: #ffffff;">Your Details</label>
                                </td>
                            </tr>
                            <tr>
                                <td>User ID</td>
                                <td colspan="2">
                                    <input type="text" name="gid" size="30"  class="form-control" value="<%out.println(session.getAttribute("id"));%>">
                                </td>
                            </tr>
                            <tr>
                                <td>User Name</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control"value="<%out.println(session.getAttribute("name"));%>">
                                </td>
                            </tr>
                           
               
                <tr>
                                <td>Game ID</td>
                                <td>
                                    <input type="text" name="GameId1" size="30"  class="form-control" value="<%out.println(session.getAttribute("gmid"));%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Coach ID</td>
                                <td>
                                    <input type="text" name="GameId1" size="30"  class="form-control" value="<%out.println(cid);%>">
                                </td>
                            </tr>
		<tr><TD>Plan</TD>
		    <TD>
		      
                        <select name="mem" onchange="window.location.href='Final.jsp?Plan='+this.value " class="form-control">
                            <option value="">Select Plan</option>
				<option value="1">1 Month</option>
				<option value="3">3 Month</option>
				<option value="6">6 Month</option>
				<option value="12">One Year</option>
			  </select>
                        
		
			</TD>
		</tr>
                            <tr>
                                <td></td>
                               
                               <%

if(cid.equalsIgnoreCase("Not Selected"))
{
%>

<td align="Right"><input type="button" value="Proceed to Payment" name="Exit"
                                                        onclick="openPage('Member Payment.jsp')"  class="btn btn-success" /></td>                             
<%
}
else
{
   %>

<td align="Right"><input type="button" value="Proceed to Payment" name="Exit"
                                                        onclick="openPage('MemberPayment.jsp')"  class="btn btn-success" /></td>
                  
 
<% 
}
      %>                         
                               
                              
                            </tr>
                        </table>
                    </form>
                               
                </td>
            </tr>
        </table>
                                     
              
        <!--<script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        -->
        
    </body>
    
</html>
