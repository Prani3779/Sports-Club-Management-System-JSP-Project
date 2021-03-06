

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sports Club</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2059 curtain store
http://www.tooplate.com/view/2059-curtain-store
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
	
<script src="js/prototype.js" type="text/javascript"></script>
<script src="js/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
<script src="js/lightbox.js" type="text/javascript"></script>

</head>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="site_title">
        	<h1><a href="#">Sports Club</a></h1>
        </div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="MemberHome.jsp">Home</a></li>
                <li><a href="#" class="selected">About</a>
                    
                </li>
               
                   
      
                
              

                <li><a href="MemberInformation.jsp">My Profile</a></li>
                <li><a href="AddMoreGames.jsp" target = "_blank">Add Games</a></li>
                <li><a href="index.jsp">Logout</a></li>
     
</li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of menu -->
    
    	
    </div>
    
    <div id="tooplate_main">
    	<div id="tooplate_sidebar">
        	<div class="sb_box">
            	        <form>
                        <%
                            //String nm=String.valueOf(session.getAttribute("memberuid"));
                            String uname="";
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
                                                             uname=rs.getString(1);
                                                             
                                                            //out.print(Price);
                                                        }
                                                      // session.setAttribute("address", address);
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                            %>
                            <h3 ><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WELCOME</b></h3>
                            <h4 style="color: white">  &nbsp;&nbsp;<% out.print(uname);%></h4>
                            
               <ul class="sb_menu">
                    
                    <li><input type="submit" name="P" value="Payment Details" style="font-size: 14px; width:200px; background: #0059b3;color:white;padding: 6px 15px;"/></li><li>&nbsp;</li>
                    <li><input type="submit" name="P" value="Your Games" style="font-size: 14px; width:200px; background: #0059b3;color:white;padding: 6px 15px;"/></li><li>&nbsp;</li>
                    <li><input type="submit" name="P" value="Your Coach" style="font-size: 14px; width:200px; background: #0059b3;color:white;padding: 6px 15px;"/></li>
                    
                </ul>
                    </form>
			</div>
            <div class="sb_box">
                
          	</div>
        	<div class="sb_box">
            	<h3>Get In Touch</h3>
				<a href="#"><img src="images/facebook-32x32.png" title="facebook" alt="facebook" /></a>
                <a href="#"><img src="images/flickr-32x32.png" title="flickr" alt="flickr" /></a>
                <a href="#"><img src="images/twitter-32x32.png" title="twitter" alt="twitter" /></a>
                <a href="#"><img src="images/youtube-32x32.png" title="youtube" alt="youtube" /></a>
            </div>
        </div> <!-- end of sidebar -->
            
            <div id="tooplate_content">
            
            	<h2>Payment Details</h2>
                <div class="col_b float_l">
                    <div id="contact_form">
                       <form method="post" >
    <table class="box" align="center" border="1px" rules=columns width="650" style="background-color:#ffffff;"  id="tblMain"  >
		<tr style="background-color:#1f618d;color:white;">
			<th>User ID</th><th>Game ID</th><th>Game Name</th><th>Total Fee</th><th>Plan</th><th>Payment Date</th>
		</tr>
	
	
       
      
            <%
                    String uid=String.valueOf(session.getAttribute("memberuid"));
                try
                {
                    int i=1;
                    Connection connection=Helper.connect();
                    PreparedStatement ps=connection.prepareStatement("select member.id,games.game_id,games.gname,payment.total_fee,member.plan,payment.pay_date from member,games,payment where games.game_id=member.game_id and payment.game_id=member.game_id and id='"+uid+"' and user_id='"+uid+"'");
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        %>
                        
                        <tbody>
			<tr>
                            <td align="center"><%=rs.getString(1)%></td>
                           
                            <td align="center"><%=rs.getString(2)%></td>
                            <td align="center"><%=rs.getString(3)%></td>
                            <td align="center"><%=rs.getString(4)%></td>
                            <td align="center"><%=rs.getString(5)%></td>
                            <td align="center"><%=rs.getString(6)%></td>
                            
                            
                         
                         
                 
                         </tr>
                         
                        
                        
                        <%
                    }
                    Helper.disconnect(connection);
                }
                
                catch(Exception e)
                {
                    %>
                    <tr>
                        <td align="center">
                            <label class="form-control btn btn-danger">
                                <%out.println(e.getMessage());%>
                            </label>
                        </td>
                    </tr>
                    <%
                }
            %>
            
            </table>
    </form>
 
                    </div> 
                </div>
               
        </div> <!-- end of content -->
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->	
    
    <div id="tooplate_footer">
		Copyright � 2020 Priya Rani
    </div>
</div>
<%
					String act_num=request.getParameter("P");
					if(act_num == null){
						
					}else if(act_num.equals("Payment Details"))
					{
						%>
                                               <% 
                                                    response.sendRedirect("GameInformation.jsp");
                                               %>
						
						<%
						//out.print("<script>alert('Sign in button clicked !');</script>");
						
					}else if(act_num.equals("Your Games"))
					{
						%>
						  <% 
                                                    response.sendRedirect("YourGames.jsp");
                                               %>
						
						<%
					}
                                        else if(act_num.equals("Your Coach"))
                                        {
                                            
                                            %>
                                            <%
                                                response.sendRedirect("CoachDetails.jsp");
                                              %>
                                              
                                              <%
                                        }
					
			
	 %>
</body>
</html>