<%@page import="com.core.bank.Helper"%>



<html>
    <head>
        <title>Sports Club</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
    </head>
    <body>
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
                        int Price=0;
                        int Fees=0;
                        String g1=request.getParameter("cur_id");
                    String ram= (String)session.getAttribute("Akki");
                    %>
   
                        <%
                                 
                                            try
                                            {
                                               
                                                         Connection connection=Helper.connect();
                                                         PreparedStatement ps=connection.prepareStatement("select price from games where game_id=?");
                                                          ps.setString(1,ram); 
                                                          //out.print("ram");
                                                         ResultSet rs=ps.executeQuery();
                                                        while(rs.next())
                                                        {
                                                             //out.print(rs.getString(1));
                                                             Price=Integer.parseInt((rs.getString(1)));
                                                            //out.print(Price);
                                                        }
                                                            
                                                            
                                                            
                                                            
                                             }
                                            catch(Exception e)
                                            {
                                                out.println(e.getMessage());
                                            }
                                     %>
           
                            
                            
                            
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
                            
                            <%
                                            
       String cid=request.getParameter("coach_id");
       String lun=(String)session.getAttribute("cid");
       //session.getAttribute(name)
       
        String memb=request.getParameter("Plan");
        //String group = String.valueOf(session.getAttribute("ta"));
        int total_amt=0;
        
        if(memb.equalsIgnoreCase("1"))
        {
            total_amt=(Fees+Price)*1;
            String oneM="One Month";
           // out.print(total_amt);
            session.setAttribute("total_fee", total_amt);
            response.sendRedirect("ConfirmGames.jsp?coach_id="+lun);
            session.setAttribute("p", oneM);
            session.setAttribute("a", Fees*1);
        }
        else if(memb.equalsIgnoreCase("3"))
        {
            total_amt=(Fees+Price)*3;
            String twoM="Three Month";
           // out.print(total_amt);
            session.setAttribute("total_fee", total_amt);
            response.sendRedirect("ConfirmGames.jsp?coach_id="+lun);
             session.setAttribute("p", twoM);
             session.setAttribute("a", Fees*3);
        }
        else if(memb.equalsIgnoreCase("6"))
        {
            total_amt=(Fees+Price)*6;
            String threeM="Six Month";
            session.setAttribute("total_fee", total_amt);
            response.sendRedirect("ConfirmGames.jsp?coach_id="+lun);
            session.setAttribute("p", threeM);
            session.setAttribute("a", Fees*6);
        }
        else if(memb.equalsIgnoreCase("12"))
        {
            total_amt=(Fees+Price)*12;
            String oYear="One Year";
            session.setAttribute("total_fee", total_amt);
            response.sendRedirect("ConfirmGames.jsp?coach_id="+lun);
           session.setAttribute("p", oYear);
           session.setAttribute("a", Fees*12);
        }
        else{
            out.print("Errrrroooor");
        }
        
    
            %>
                            
                 
                                
              
        <!--<script src="jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        -->
    </body>
</html>
