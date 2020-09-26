

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
                <li><a href="CoachHome.jsp">Home</a></li>
                <li><a href="#" class="selected">About</a>
                    
                </li>
               
                   
      
                
              

                <li><a href="CoachInformation.jsp">My Profile</a></li>
                <li><a href="AddCoachGames.jsp" target = "_blank">Add Games</a></li>
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
                            <h3 ><b>WELCOME</b></h3>
                            <h4 style="color: white"><% out.print(uname);%></h4>
                            
               <ul class="sb_menu">
                    
                   <li><input type="submit" name="P" value="Your Games" style="font-size: 14px; width:200px; background: #0059b3;color:white;padding: 6px 15px;"/></li><li>&nbsp;</li>
                    <li><input type="submit" name="P" value="Your Student" style="font-size: 14px; width:200px; background: #0059b3;color:white;padding: 6px 15px;"/></li>
                    
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
            
            	<h2>Your Games</h2>
                <div class="col_b float_l">
                    <div id="contact_form">
                       <form method="post" >
    <table class="box" align="center" border="1px" rules=columns width="650" style="background-color:#ffffff;"  id="tblMain"  >
		<tr style="background-color:#1f618d;color:white;">
			<th>Coach ID</th><th>Game ID</th><th>Student ID</th><th>Plan</th>
		</tr>
	
	
       
      
            <%
                    String uid=String.valueOf(session.getAttribute("memberuid"));
                try
                {
                    int i=1;
                    Connection connection=Helper.connect();
                    PreparedStatement ps=connection.prepareStatement("select * from member where coach_id='"+uid+"'");
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        %>
                        
                        <tbody>
			<tr>
                            <td align="center"><%=rs.getString(3)%></td>
                           
                            <td align="center"><%=rs.getString(2)%></td>
                            
                           <td align="center"><%=rs.getString(1)%></td>
                            <td align="center"><%=rs.getString(4)%></td>
                           
                            
                            
                         
                         
                 
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
           
            <table class="box"  align="center" rules=columns width="650" height="50"  id="tblMain"  >
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                </tr>
            </table>
            <h4><u><b>Find Your Game Details</b></u></h4>
            <table class="box"  align="center" rules=columns width="350"   id="tblMain"  >
                               
                           
                <tr>
                                   <TD align="left"><b>Game ID:</b></TD>
                                    <TD>
                                    <INPUT TYPE="TEXT" NAME="txtid" SIZE="25">
                                    </TD>
                                   
                                       <td align="left">
                                           <input type="submit" value="search" id="submit" name="s" class="submit_btn float_l" style=" display: inline-block;
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    background-color:black;
    padding: 10px 15px;
    font-size: 10px;
    border: 1px solid #2d6898;" />
                                       </td>
                                   
                               </tr>
                           </table>
              <table class="box"  align="center" rules=columns width="650" height="50"  id="tblMain"  >
                <tr>
                    <td></td>
                </tr>
             
              </table>
	
	
       
      
            <%
                String txtgmid="";
                
                String act=request.getParameter("s");
                
               
               
                
					if(act == null){
						
					}
                                        else if(act.equals("search"))
					{%>
             <table class="box" align="center" border="1px" rules=columns width="650" style="background-color:#ffffff;"  id="tblMain"  >
		<tr style="background-color:#1f618d;color:white;">
			<th>Game ID</th><th>Game Name</th><th>Time</th>
		</tr>
                <%
                                               txtgmid=request.getParameter("txtid");
                                             
                                              try
                {
                    int i=1;
                    
                    Connection connection=Helper.connect();
                    PreparedStatement ps=connection.prepareStatement("select game_id,gname,time from games where game_id='"+txtgmid+"'");
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        %>
                        
                       
			<tr>
                            <td align="center"><%=rs.getString(1)%></td>
                           
                            <td align="center"><%=rs.getString(2)%></td>
                            
                                <td align="center"><%=rs.getString(3)%></td>
                              
                    </tr>
                        
                        
                        
                        <%
                        
                    }
                    Helper.disconnect(connection);
                    
                }
                
                catch(Exception e)
                {
                   
                                
                           
                    
                }
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
		Copyright © 2020 Priya Rani
    </div>
</div>
<%
					String act1=request.getParameter("P");
					if(act1 == null){
						
					}else if(act1.equals("Payment Details"))
					{
						%>
                                               <% 
                                                    response.sendRedirect("GameInformation.jsp");
                                               %>
						
						<%
						//out.print("<script>alert('Sign in button clicked !');</script>");
						
					}else if(act1.equals("Your Games"))
					{
						%>
						  <% 
                                                    response.sendRedirect("CoachGames.jsp");
                                               %>
						
						<%
					}
                                        else if(act1.equals("Your Student"))
                                        {
                                            
                                            %>
                                            <%
                                                response.sendRedirect("YourStudent.jsp");
                                              %>
                                              
                                              <%
                                        }
					
			
	 %>
</body>
</html>