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
                                                        }
                                                            
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                                     %>
                            
            <tr>
                <td align="center">
                    <form  action="index.jsp" method="post">
                        <table class="table-condensed" style="border-color: green; border-style: double; border-width: 5px; background-color:#ffffff;">
                            <tr>
                                <td colspan="3" align="center">
                                    <label class="form-control btn-success">Payment Details</label>
                                </td>
                            </tr>
                             <tr>
			<TD>Date & Time:</td>
		     <td><input type="text" name="Dop1" value="<% out.print(dop);%>" size="30" class="form-control" ></td>
                    
                            </tr>
                            <%
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;
out.print(n);
%>
                            <tr>
                                <td>Payment ID</td>
                                <td colspan="2">
                                    <input type="text" name="pid" size="30"  class="form-control" value="<%out.print(session.getAttribute("coachpid"));%>">
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
                                    <input type="text" name="gname" size="30"  class="form-control"value="<%out.print(Fees);%>">
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
                                    String plan = String.valueOf(session.getAttribute("p"));
                                    
                                    %>
                                    
                 <tr>
                                <td>Total Amount</td>
                                <td>
                                    <input type="text" name="gname" size="30"  class="form-control" value="<%out.print(rvcj);%>">
                                </td>
                            </tr>
		<tr>
                                <td>Your Plan</td>
                                <td>
                                    <input type="text" name="plan" size="30"  class="form-control" value="<%out.print(plan);%>">
                                </td>
                            </tr>
                                 <!--<tr>
		<TD>Mode of Payment:</TD>
		    <TD>
		      
			  <select style="width:200px;" name="pay_mode1" class="form-control" onchange="if (this.value) window.location.href=this.value">
				<option>Select Mode Of Payment</option>
				<option value="AllDetails.jsp">Cash</option>
				<option value="upi.jsp">Online</option>
			
			  </select>
			</TD>
		</tr>-->
                                 <tr>
                                <td colspan="2" align="center">
                                    <label class="form-control btn-danger">
		<% try
                                 {
                                            
                                                                Connection connection=Helper.connect();
                                                               String payid = Integer.toString(n);
                                                               String cpayid = String.valueOf(session.getAttribute("coachpid"));
                                                               String pay_gmid=String.valueOf(session.getAttribute("gmid"));
//                                                               String total_fee=request.getParameter("gname");
//                                                               String pay_date=request.getParameter("Dop1");
//                                                                out.println(rvcj);
//                                                                 out.println(dop);
                                                               
                                                                PreparedStatement ps=connection.prepareStatement("insert into payment values(?,?,?,?,?)");
                                                                ps.setString(1, cpayid);
                                                                ps.setString(2, String.valueOf(session.getAttribute("id")));
                                                               ps.setInt(3, (Integer.parseInt(rvcj)));
                                                             ps.setString(4, dop);
                                                             ps.setString(5, pay_gmid);
                                                           
                                                               
                                                               
                                                             PreparedStatement ps2=connection.prepareStatement("insert into member values(?,?,?,?)");
                                                                ps2.setString(1, String.valueOf(session.getAttribute("id")));
                                                                ps2.setString(2, String.valueOf(session.getAttribute("gmid")));
                                                               ps2.setString(3, String.valueOf(session.getAttribute("cid")));
                                                             ps2.setString(4, plan);
                                                             seat=seat-1;
                                                             if(seat<0)
                                                             {
                                                                 seat=0;
                                                             }
                                                             game_id_num=String.valueOf(session.getAttribute("gmid"));
                                                             PreparedStatement ps3=connection.prepareStatement("Update games set seat='"+seat+"' where game_id='"+game_id_num+"'");
                                                           // String sql="Update users set seat=? where game_id="+ram;
                                                            //ps = con.prepareStatement(sql);
                                                           // ps3.setInt(1,seat);
                                                            
                                                            int i = ps3.executeUpdate();
                                                            
            
                                                             
                                                                int a=ps.executeUpdate();
                                                                int b=ps2.executeUpdate();
                                                                if(a>0&&b>0&&i>0)
                                                                {
                                                                    connection.commit();
                                                                    out.println("Registration Successful");
                                                                }
                                                                else
                                                                {
                                                                    connection.rollback();
                                                                    out.println("Sorry! You Cant Register");
                                                                }
                                                                Helper.disconnect(connection);
                                                               
                                                           
                                                                }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                                        %>
                                   
                                    </label>
                                </td></tr>
                           <tr><td></td>
                                <td align="Right"><input type="Submit" name="Submit1" value="Exit"  class="btn btn-success" onclick="openPage('index.jsp')" /> </td>
                                
 
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
