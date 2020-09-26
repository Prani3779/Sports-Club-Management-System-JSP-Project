<%@page import="com.core.bank.Helper"%>



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
<script language="javascript">
function SelectRedirect(){
// ON selection of section this function will work
//alert( document.getElementById('s1').value);

switch(document.getElementById('s1').value)
{
    String aj=documnet.getElementById('s1').value;
    <% int priya=0; %>
case "1":
window.location="../Sport%20Management/Final.jsp";
<%
    session.setAttribute("one1", 1);
    int one=1;
    out.print(one);
%>
break;

case "3":
window.location="../Sport%20Management/Final.jsp";
<%
    session.setAttribute("three3", 3);
    int three=3;
    out.print(three);
%>
break;

case "6":
window.location="../Sport%20Management/Member Payment.jsp";
<%
    int six=6;
    out.print(six);
%>
break;
case "12":
window.location="../Sport%20Management/Member Payment.jsp";
<%
    int twelve=12;
    out.print(twelve);
%>
break;

case "HTML":
window.location="../html_tutorial/site_map.php";
break;

/// Can be extended to other different selections of SubCategory //////
default:
window.location="../"; // if no selection matches then redirected to home page
break;
}// end of switch 
}
////////////////// 
</script>
<script type="text/javascript">
//when the webpage has loaded do this
$(document).ready(function() {
//if the value within the dropdown box has changed then run this code
$('#num_cat').change(function() {
//get the number of fields required from the dropdown box
var num = $('#num_cat').val();

var i = 0; //integer variable for 'for' loop
var html = ''; //string variable for html code for fields
//loop through to add the number of fields specified
for (i = 1; i <= 1; i++) {
//concatinate number of fields to a variable
html += ' <input type="text" class="form-control" name="category-' + 1 + '" value="' + num + '"/><br/>';
}

//insert this html code into the div with id catList
$('#catList').html(html);
});
});
</script>
 <%@page import="java.util.*"%>
              <%@ page import="java.sql.*" %>
              <%@ page import="java.util.*" %>
              <%
                   String dop= (new java.util.Date()).toLocaleString();
              
              %>
                    
        <table style="width: 100%; height: 100%">
            <%
                   int seat=0,av_seat=0;
                        int Price=0;
                        int Fees=0;
                        int zero=0;
                        String game_id_num="";
                        String g1=request.getParameter("cur_id");
                    String ram= (String)session.getAttribute("Akki");
                    %>
   
                        <%
                                 
                                            try
                                            {
                                               
                                                         Connection connection=Helper.connect();
                                                         PreparedStatement ps=connection.prepareStatement("select price,seat from games where game_id=?");
                                                          ps.setString(1,ram); 
                                                          //out.print("ram");
                                                         ResultSet rs=ps.executeQuery();
                                                        while(rs.next())
                                                        {
                                                             //out.print(rs.getString(1));
                                                             Price=Integer.parseInt((rs.getString(1)));
                                                             seat=(Integer.parseInt(rs.getString("seat")));
                                                            //out.print(Price);
                                                        }
                                                            
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                                     %>
                            
            <tr>
                <td align="center">
                    <form  action="Member PaymentPage.jsp" method="post">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="3" align="center">
                                    <label class="form-control btn-success">Payment Form</label>
                                </td>
                            </tr>
                            <tr>
			<TD>Date & Time:</td>
		     <td><input type="text" name="Dop" value="<% out.print(dop);%>" size="30" class="form-control" ></td>
                    
                            </tr><!--<tr>
                                <td>User ID</td>
                                <td colspan="2">
                                    <input type="text" name="gid" size="30"  class="form-control" value="<%out.println(session.getAttribute("id"));%>">
                                </td>
                            </tr>-->
                            <%
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;
//System.out.println(n);
session.setAttribute("ncoachpid", n);
%>
                            <tr>
                                <td>Payment ID</td>
                                <td colspan="2">
                                    <input type="text" name="gid" size="30"  class="form-control" value="<%=n%>">
                                </td>
                                
                            </tr>
                            
                            
               <%
               
                                   
                                   
                                            try
                                            {
                                                
                                                         Connection connection=Helper.connect();
                                                         PreparedStatement ps=connection.prepareStatement("select fees from coach where game_id=?");
                                                          ps.setString(1,ram); 
                                                          //out.print("ram");
                                                         ResultSet rs=ps.executeQuery();
                                                        while(rs.next())
                                                        {
                                                             //out.print(rs.getString(1));
                                                             Fees=Integer.parseInt((rs.getString(1)));
                                                            //out.print(Fees);
                                                        }
                                                            
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                                     %>
                            
                            <tr>
                                <td>Coach Amount</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control"value="<%out.print(zero);%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Game Amount</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control" value="<%out.print(Price);%>">
                                </td>
                            </tr>
                             
                            <%
                                   String rvcj = String.valueOf(session.getAttribute("total_fee"));
                                    String m=String.valueOf(session.getAttribute("a"));
                                    int x=(Integer.parseInt(m));
                                    int y=(Integer.parseInt(rvcj));
                                    //out.print(x);
                                   
                                    int rs=y-x;
                                    String plan = String.valueOf(session.getAttribute("p"));
                                    %>
                                    
                 <tr>
                                <td>Total Amount</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control" value="<%out.print(rs);%>">
                                </td>
                            </tr>
		<tr>
                                <td>Your Plan</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control" value="<%out.print(plan);%>">
                                </td>
                            </tr>
                             <!--<tr>
		<TD>Mode of Payment:</TD>
		    <TD>
		      
			  <select style="width:200px;" name="pay_mode" class="form-control" onchange="if (this.value) window.location.href=this.value">
				<option>Select Mode Of Payment</option>
				<option value="AllDetails.jsp">Cash</option>
				<option value="upi.jsp">Online</option>
			
			  </select>
			</TD>
		</tr>-->
		
		
                            <tr><td><input type="Reset" name="Reset" value="Exit" class="btn btn-success" onclick="openPage('index.jsp')"/></td>>
                                <td align="Right"><input type="Submit" name="Submit1" value="Submit"  class="btn btn-success"  /> </td>
                                
 
                            </tr>
                        </table>
                    </form>
                                    
                </td>
            </tr>
        </table>
              <%
//              out.print(seat);
//              //out.print(av_seat);
//              out.print(game_id_num);
              %>
        <!--<script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
       
        -->
    </body>
</html>
