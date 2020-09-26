<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.bank.Helper"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
       <!--<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="extra/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="extra/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="extra/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="extra/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="extra/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="extra/css/util.css">
	<link rel="stylesheet" type="text/css" href="extra/css/main.css">
       -->
       
       <style>
.html,body{
margin:0px;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    width:100%;
}

li {
    float: left;
    
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 10px 40px;
    text-decoration: none;
    font-size:15px;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #1f618d;
}

#btn1
	{
	 display: block;
    height: 50px;
    margin-bottom: 10px;
    text-align: center;
    line-height: 50px;
    width: 150px;
    margin: 20px;

    color: #FFF;
    text-align: center;
    border: solid #427AA8 1px;
    border-radius: 5px;
    text-decoration: none;

    /* Gradient */
    background: #427AA8;
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIxJSIgc3RvcC1jb2xvcj0iIzU5YTNlMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0MjdhYTgiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
    background: -moz-linear-gradient(top,  #59A3E0 1%, #427AA8 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(1%,#59A3E0), color-stop(100%,#427AA8));
    background: -webkit-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -o-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -ms-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: linear-gradient(to bottom,  #59A3E0 1%,#427AA8 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#59A3E0', endColorstr='#427AA8',GradientType=0 );

    text-shadow: 1px 1px 0 rgba(0,0,0,0.25);
    box-shadow: 0 1px 0 rgba(255,255,255, 0.3), inset 0 1px 0 rgba(255,255,255, 0.3);
}

.button:hover {
    background: #59A3E0;
    text-decoration: none;
    filter: none;
}

#btn2{
	width:200px;
	height:50px;
	background-color:#2980B9;
	color:#ffffff;
	font-size:20px;
}

.myBox {
border: none;
padding: 5px;
font: 14px/26px sans-serif;
width: 780px;
height: 430px;
overflow: scroll;
border-collapse:collapse;
}
th, td {
    text-align: center;
    padding: 7px;
}


th {
    background-color: #1f618d;
    color: white;
}
     


/* Scrollbar styles */
::-webkit-scrollbar {
width: 12px;
height: 12px;
}

::-webkit-scrollbar-track {
border-radius: 10px;
width: 2px;
border: #2980B9;
}

::-webkit-scrollbar-thumb {
background: #2980B9; 
border-radius: 10px;
}
::-webkit-scrollbar-thumb:hover {
background: #2980B9;  
}

.squaredOne {
  width: 15px;
  height: 15px;
  position: relative;
  margin: 20px auto;
  background-color: #32CD32;
  } 
input[type="checkbox"] {
        background-color: #32CD32;
      border: #7f83a2 1px solid;
   }

   tr:nth-child(even) {
  background: #D1F2EB;
}
.box{
    position:absolute;
    top:20%;
    left:21%;
}
</style>

</head>
<body style="height: 650px;
  background-color: red;
  background-image: linear-gradient(to right,#000000,#004080,#000000); ">
    <script>
        
        function myFunction() {
    var txt;
   
    var r = confirm("Are You Sure ??");
    if (r == true) {
      
      
        
        
        var checkboxes = document.getElementsByName('chkout[]');
        var vals = "";
        for (var i=0, n=checkboxes.length;i<n;i++) 
        {
            if (checkboxes[i].checked) 
            {
                vals +=checkboxes[i].value;
              
                alert(vals);
            }
        }
        
        txt = "You pressed OK!"+vals;
        var jspcall = "MemberForm.jsp?cur_id="+vals;
        window.location.href = jspcall;
    } else {
        txt = "You pressed Cancel!";
        
    }
    document.getElementById("demo").innerHTML = txt;
}
       /* function myFunction() {
    var txt;
   
    var r = confirm("Are You Sure ??");
    if (r == true) {
      
       
        var checkboxes = document.getElementsByName('chkout[]');
        
        var vals = "";
        for (var i=0, n=checkboxes.length;i<n;i++) 
        {
            if (checkboxes[i].checked) 
            {
             alert(checkboxes[i].value);
              //alert(vals);
                
                //session.setAttribute("game",vals);
              
               
            }
            //session.setAttribute("game",checkboxes[i].value);
            // response.sendRedirect("Outdoor.jsp");
        }
         var jspcall = "Outdoor.jsp";
        window.location.href = jspcall;
        //txt = "You pressed OK!"+vals;
        //var jspcall = "checkBoxAction.jsp?cur_id="+vals;
        //window.location.href = jspcall;
    } 
        //out.print(vals);
        else {
        txt = "You pressed Cancel!";
    }
        }
         response.sendRedirect("Outdoor.jsp");
       

 function ActionFunction() {
     
     var val=document.getElementsByName('Submit')[0].value;
     document.write(val);
 }
     //session.setAttribute("one",val);*/
     
     
     
     
 
     </script>
    <form method="post" >
    <table class="box" align="center" border="1px" rules=columns width="800" style="background-color:#ffffff;" id="tblMain">
		<tr style="background-color:#1f618d;color:white;">
                    <th>Game ID</th><th>Game Name</th><th>Time</th><th>Price</th><th>Available seats</th><th>Type</th><th>Select</th>
		</tr>
	
	<!--<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						
						<thead>
							<tr class="table100-head">
								<th class="column1">Game ID</th>
								<th class="column2">Game Name</th>
								<th class="column3">Time</th>
								<th class="column4">Price</th>
								<th class="column5">Type</th>
								<th class="column6">Action</th>
							</tr>
						</thead>-->
       
      
            <%
                //int chess=2;
                //int carrom=1;
                
                try
                {
                    int i=1;
                    Connection connection=Helper.connect();
                    PreparedStatement ps=connection.prepareStatement("select * from games where type='Indoor'");
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        %>
                        
                        <tbody>
			<tr>
                            <td><%=rs.getString(1)%></td>
                           
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(6)%></td>
                            
                            <td><%=rs.getString(5)%></td>
                         <% out.print("<td><input type='checkbox' style='background-color:#000000;' name='chkout[]' id='chk1' onclick='myFunction();' value='"+rs.getString(1)+"' autocomplete='off'></td>");
                         
                  //String nm=rs.getString(1);
                         //session.setAttribute("one",nm);
                         out.print("</tr>");
                          %>
                        
                        
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
            <%
                String str=String.valueOf(session.getAttribute("seat_avl"));
                %>
    </form>
 
<script language="javascript">
        var tbl = document.getElementById("tblMain");
        if (tbl != null) {
            if (tbl.rows[0] != null) {
                tbl.rows[0].style.backgroundColor = "#365890";
                tbl.rows[0].style.color = "#FFFFFF";
            }
            for (var i = 1; i < tbl.rows.length; i++) {
                tbl.rows[i].style.cursor = "pointer";
                tbl.rows[i].onmousemove = function () { this.style.backgroundColor = "#b3ffcc"; this.style.color = "#000000"; };
                tbl.rows[i].onmouseout = function () { this.style.backgroundColor = ""; this.style.color = ""; };
            }
        }
    </script>
</body>
</html>