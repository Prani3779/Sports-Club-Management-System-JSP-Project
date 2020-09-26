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
                    <form method="post" action="newCoachPage.jsp">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="3" align="center">
                                    <label class="form-control btn-success"> Coach Form</label>
                                </td>
                            </tr>
                            <tr>
                                <td>ID</td>
                                <td colspan="2">
                                    <input type="text" name="gid" size="30"  class="form-control" value="<%out.println(session.getAttribute("memberuid"));%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control"value="<%out.println(session.getAttribute("cname"));%>">
                                </td>
                            </tr>
                           
                <tr>
		<TD>Game Type:</TD>
		    <TD>
		      
			  <select onchange="if (this.value) window.location.href=this.value">
    <option value="">Select Game Type</option>
    <option value="Indoor.jsp">Indoor</option>
    <option value="Outdoor.jsp">Outdoor</option>
</select>	
			  
                        </TD>
		</tr>
                <tr>
                                <td>Game ID</td>
                                <td>
                                    <input type="text" name="GameId" size="30"  class="form-control" value="<%out.println(g1);%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Experience</td>
                                <td>
                                    <input type="text" name="exp" size="30"  class="form-control">
                                </td>
                            </tr>
                            <tr>
                                <td>Fees</td>
                                <td>
                                    <input type="text" name="fees" size="30" class="form-control">
                                </td>
                            </tr>
		
                            <tr><td></td>
                                <td align="Right"><input type="Submit" name="Submit1" value="Submit"  class="btn btn-success" </td>
                                <!--<td align="Right"><input type="Submit" name="Submit" value="Add More Games"  class="btn btn-success"></td>
                           -->
 
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
