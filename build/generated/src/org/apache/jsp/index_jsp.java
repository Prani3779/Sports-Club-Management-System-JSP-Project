package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("<head>\n");
      out.write("<title>Sports Club Management System</title>\n");
      out.write("<!-- custom-theme -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Tennis Court Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("\t\tfunction hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //custom-theme -->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/mainStyles.css\" />\n");
      out.write("<link rel='stylesheet' href='css/dscountdown.css' type='text/css' media='all' />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"screen\" property=\"\" />\n");
      out.write("<!-- gallery -->\n");
      out.write("<link href=\"css/lsb.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- //gallery -->\n");
      out.write("<!-- font-awesome-icons -->\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700,900\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("</head>\t\n");
      out.write("<body>\n");
      out.write("<!-- banner -->\n");
      out.write("<div class=\"header\">\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"w3layouts_header_right\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><i class=\"fa fa-phone\" aria-hidden=\"true\"></i>(+91)7759855234</li>\n");
      out.write("\t\t\t\t<li><i class=\"fa fa-envelope\" aria-hidden=\"true\"></i><a href=\"mailto:nit.sports.club@gmail.com\">nit.sports.club@gmail.com</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"w3layouts_header_left\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal2\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i> Log in</a></li>\n");
      out.write("                                        <li><a href=\"CreateAccountForm.jsp\"> <i class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></i>Sign up</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"banner\">\n");
      out.write("\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t<div class=\"navbar-header navbar-left\">\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t\t<h1><a class=\"navbar-brand\" href=\"index.jsp\">Sports Club Management System</a></h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse navbar-right\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t<nav class=\"link-effect-2\" id=\"link-effect-2\">\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t<li ><a href=\"index.jsp\"><span data-hover=\"Home\">Home</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about.html\"><span data-hover=\"About Us\">About Us</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"events.html\"><span data-hover=\"Events\">Events</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" ><span data-hover=\"Achievement\">Achievement</span></a>\n");
      out.write("\t\t\t\t\t\t\t<!--<ul class=\"dropdown-menu agile_short_dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"icons.html\">Web Icons</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"typography.html\">Typography</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>-->\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"mail.html\"><span data-hover=\"Mail Us\">Mail Us</span></a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"w3_agile_search\">\n");
      out.write("\t\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"search\" name=\"Search\" placeholder=\"Search Keywords...\" required=\"\" />\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"Search\">\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</nav>\n");
      out.write("\t\t</div>\n");
      out.write("<!-- //banner -->\t\n");
      out.write("    <div id=\"exampleSlider\">\n");
      out.write("        <div><h3>Sports for Healthy Life Time <span>Play like a Champion</span></h3></div>\n");
      out.write("        <div><h3>Play With Your Instructors <span>Reach Your Goal</span></h3></div>\n");
      out.write("         <div><h3>Sports for healthy Life Time <span>Play like a Champion</span></h3></div>\n");
      out.write("    </div>\n");
      out.write("<!-- banner-bottom -->\t\n");
      out.write("\t\n");
      out.write("<!-- middle -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div class=\"modal video-modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModal\">\n");
      out.write("\t\t<div class=\"modal-dialog\" role=\"document\">\n");
      out.write("\t\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\t\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"signin-form profile\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"agileinfo_sign\">Tennis Court</h3>\t\n");
      out.write("\t\t\t\t\t<div class=\"modal-body\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/sp7.jpg\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //bootstrap-pop-up -->\n");
      out.write("<!-- gallery -->\n");
      out.write("\t<!--<div class=\"gallery\">\n");
      out.write("\t     \t      <h3 class=\"w3l_header w3_agileits_header\">Latest <span>Gallery</span></h3>\n");
      out.write("\t\t  <p class=\"sub_para_agile\">Ipsum dolor sit amet consectetur adipisicing elit</p>\n");
      out.write("\t\t  \t<div class=\"agile_team_grids_top\">\n");
      out.write("\t\t<ul id=\"flexiselDemo1\">\t\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<div class=\"wthree_gallery_grid\">\n");
      out.write("\t\t\t\t\t<a href=\"images/sp7.jpg\" class=\"lsb-preview\" data-lsb-group=\"header\">\n");
      out.write("\t\t\t\t\t\t<div class=\"view second-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/sp7.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"mask\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Tennis Court</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<div class=\"wthree_gallery_grid\">\n");
      out.write("\t\t\t\t\t<a href=\"images/g2.jpg\" class=\"lsb-preview\" data-lsb-group=\"header\">\n");
      out.write("\t\t\t\t\t\t<div class=\"view second-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/g2.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"mask\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Tennis Court</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<div class=\"wthree_gallery_grid\">\n");
      out.write("\t\t\t\t\t<a href=\"images/g3.jpg\" class=\"lsb-preview\" data-lsb-group=\"header\">\n");
      out.write("\t\t\t\t\t\t<div class=\"view second-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/g3.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"mask\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Tennis Court</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<div class=\"wthree_gallery_grid\">\n");
      out.write("\t\t\t\t\t<a href=\"images/g4.jpg\" class=\"lsb-preview\" data-lsb-group=\"header\">\n");
      out.write("\t\t\t\t\t\t<div class=\"view second-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/g4.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"mask\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Tennis Court</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<div class=\"wthree_gallery_grid\">\n");
      out.write("\t\t\t\t\t<a href=\"images/g5.jpg\" class=\"lsb-preview\" data-lsb-group=\"header\">\n");
      out.write("\t\t\t\t\t\t<div class=\"view second-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/g5.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"mask\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Tennis Court</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>-->\n");
      out.write("<!-- //gallery -->\n");
      out.write("<!-- testimonials -->\n");
      out.write("\t<div class=\"testimonials\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t      <h3 class=\"w3l_header w3_agileits_header\">Our <span>Instructors</span></h3>\n");
      out.write("\t\t  <p class=\"sub_para_agile\">Our instructors often help experienced athletes to sharpen their skills</p>\n");
      out.write("\t\t\t<div class=\"w3ls_testimonials_grids\">\n");
      out.write("\t\t\t\t <section class=\"center slider\">\n");
      out.write("\t\t\t\t\t\t<div class=\"agileits_testimonial_grid\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"w3l_testimonial_grid\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Sports instructors demonstrate and explain the skills and rules of particular sports, like golf or tennis, to individuals or groups. They help beginners learn basic rules, stances, grips, movements, and techniques of a game</p>\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Name1</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<h5>Instructor</h5>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"w3l_testimonial_grid_pos\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/m1.png\" alt=\"Avatar\" class=\"img-responsive\" style=\"border-radius: 50%;\"/>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"agileits_testimonial_grid\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"w3l_testimonial_grid\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Sports instructors demonstrate and explain the skills and rules of particular sports, like golf or tennis, to individuals or groups. They help beginners learn basic rules, stances, grips, movements, and techniques of a game</p>\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Name2</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<h5>Instructor</h5>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"w3l_testimonial_grid_pos\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/m1.png\" alt=\"Avatar\" class=\"img-responsive\" style=\"border-radius: 50%;\" />\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"agileits_testimonial_grid\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"w3l_testimonial_grid\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>Sports instructors demonstrate and explain the skills and rules of particular sports, like golf or tennis, to individuals or groups. They help beginners learn basic rules, stances, grips, movements, and techniques of a game</p>\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Name3</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<h5>Instructor</h5>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"w3l_testimonial_grid_pos\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/m1.png\" alt=\"Avatar\" class=\"img-responsive\" style=\"border-radius: 50%;\" />\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</section>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //testimonials -->\n");
      out.write("<!-- footer -->\n");
      out.write("<div class=\"footer_agile_w3ls\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"agileits_w3layouts_footer_grids\">\n");
      out.write("\t        <div class=\"col-md-3 footer-w3-agileits\">\n");
      out.write("\t\t\t\t\t<h3>Training Grounds</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li>MANIT Sports Complex</li>\n");
      out.write("\t\t\t\t\t\t<li>New market</li>\n");
      out.write("\t\t\t\t\t\t<li>MP Nagar</li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-agileits\">\n");
      out.write("\t\t\t\t\t<h3>Specialized</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li>Cricket</li>\n");
      out.write("\t\t\t\t\t\t<li>Football</li>\n");
      out.write("\t\t\t\t\t\t<li>Chess</li>\n");
      out.write("\t\t\t\t\t\t<li>Batminton</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 footer-wthree\">\n");
      out.write("\t\t\t\t\t<h3>Partners</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li>MANIT</li>\n");
      out.write("\t\t\t\t\t\t<li>Google</li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\n");
      out.write("\t\t\t\t<div class=\"col-md-3 footer-agileits-w3layouts\">\n");
      out.write("\t\t\t\t\t<h3>Our Links</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about.html\">About</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"events.html\">Events</a></li>\n");
      out.write("\t\t\t\t\t    <li><a href=\"mail.html\">Mail Us</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"agileits_w3layouts_logo logo2\">\n");
      out.write("\t\t\t<h2><a href=\"index.jsp\">Sports Club Management System </a></h2>\n");
      out.write("\t\t\t<div class=\"agileits-social\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-rss\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-vk\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"wthree_copy_right\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<p>© 2020 MANIT Project. All rights reserved | Design by Priya Rani </a></p>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //footer -->\n");
      out.write("\n");
      out.write("<div class=\"modal fade\" id=\"myModal2\" tabindex=\"-1\" role=\"dialog\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"modal-dialog\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<!-- Modal content-->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"signin-form profile\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"agileinfo_sign\">Sign In</h3>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"login-form\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<form action=\"CoachLoginPage.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"uid\" placeholder=\"User ID\" required=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"password\" name=\"password\" placeholder=\"Password\" required=\"\">\n");
      out.write("                                                                                                                                                                        \n");
      out.write("                                                                                                                                                                            <select name=\"cbo1\" class=\"form-control\" style=\"text-align: center; color:#8F8F8F; \">\n");
      out.write("                                                                                                                                                                                \n");
      out.write("                                                                                                                                                                                <option value=\"Admin\">Admin</option>\n");
      out.write("                                                                                                                                                                             <option value=\"Coach\">Coach</option>\n");
      out.write("                                                                                                                                                                             <option value=\"Member\">Member</option>\n");
      out.write("                                                                                                                                                                         </select>\n");
      out.write("                                                                                                                                                                        <div class=\"tp\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"Sign In\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"login-social-grids\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"www.google.com\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"www.tweeter.com\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-rss\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p><a href=\"CreateAccountForm.jsp\"  > Don't have an account?</a></p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<!-- //Modal1 -->\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<!-- Modal2 -->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("<!-- //bootstrap-pop-up -->\n");
      out.write("\n");
      out.write("<!-- js -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("<!-- //js -->\n");
      out.write("<!-- Counter required files -->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/dscountdown.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/demo-1.js\"></script>\n");
      out.write("\t\t<script>\n");
      out.write("\t\t\tjQuery(document).ready(function($){\t\t\t\t\t\t\n");
      out.write("\t\t\t\t$('.demo2').dsCountDown({\n");
      out.write("\t\t\t\t\tendDate: new Date(\"December 24, 2020 23:59:00\"),\n");
      out.write("\t\t\t\t\ttheme: 'black'\n");
      out.write("\t\t\t\t\t});\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("\t\t</script>\n");
      out.write("\t<!-- //Counter required files -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"js/mainScript.js\"></script>\n");
      out.write("<script src=\"js/rgbSlide.min.js\"></script>\n");
      out.write("<!-- carousal -->\n");
      out.write("\t<script src=\"js/slick.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).on('ready', function() {\n");
      out.write("\t\t  $(\".center\").slick({\n");
      out.write("\t\t\tdots: true,\n");
      out.write("\t\t\tinfinite: true,\n");
      out.write("\t\t\tcenterMode: true,\n");
      out.write("\t\t\tslidesToShow: 2,\n");
      out.write("\t\t\tslidesToScroll: 2,\n");
      out.write("\t\t\tresponsive: [\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t  breakpoint: 768,\n");
      out.write("\t\t\t\t  settings: {\n");
      out.write("\t\t\t\t\tarrows: true,\n");
      out.write("\t\t\t\t\tcenterMode: false,\n");
      out.write("\t\t\t\t\tslidesToShow: 2\n");
      out.write("\t\t\t\t  }\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t  breakpoint: 480,\n");
      out.write("\t\t\t\t  settings: {\n");
      out.write("\t\t\t\t\tarrows: true,\n");
      out.write("\t\t\t\t\tcenterMode: false,\n");
      out.write("\t\t\t\t\tcenterPadding: '40px',\n");
      out.write("\t\t\t\t\tslidesToShow: 1\n");
      out.write("\t\t\t\t  }\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t ]\n");
      out.write("\t\t  });\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //carousal -->\n");
      out.write("<!-- flexisel -->\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(window).load(function() {\n");
      out.write("\t\t\t$(\"#flexiselDemo1\").flexisel({\n");
      out.write("\t\t\t\tvisibleItems: 4,\n");
      out.write("\t\t\t\tanimationSpeed: 1000,\n");
      out.write("\t\t\t\tautoPlay: true,\n");
      out.write("\t\t\t\tautoPlaySpeed: 3000,    \t\t\n");
      out.write("\t\t\t\tpauseOnHover: true,\n");
      out.write("\t\t\t\tenableResponsiveBreakpoints: true,\n");
      out.write("\t\t\t\tresponsiveBreakpoints: { \n");
      out.write("\t\t\t\t\tportrait: { \n");
      out.write("\t\t\t\t\t\tchangePoint:480,\n");
      out.write("\t\t\t\t\t\tvisibleItems: 1\n");
      out.write("\t\t\t\t\t}, \n");
      out.write("\t\t\t\t\tlandscape: { \n");
      out.write("\t\t\t\t\t\tchangePoint:640,\n");
      out.write("\t\t\t\t\t\tvisibleItems:2\n");
      out.write("\t\t\t\t\t},\n");
      out.write("\t\t\t\t\ttablet: { \n");
      out.write("\t\t\t\t\t\tchangePoint:768,\n");
      out.write("\t\t\t\t\t\tvisibleItems: 2\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.flexisel.js\"></script>\n");
      out.write("<!-- //flexisel -->\n");
      out.write("<!-- gallery-pop-up -->\n");
      out.write("\t<script src=\"js/lsb.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t$(window).load(function() {\n");
      out.write("\t\t  $.fn.lightspeedBox();\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //gallery-pop-up -->\n");
      out.write("<!-- flexSlider -->\n");
      out.write("\t<script defer src=\"js/jquery.flexslider.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(window).load(function(){\n");
      out.write("\t\t  $('.flexslider').flexslider({\n");
      out.write("\t\t\tanimation: \"slide\",\n");
      out.write("\t\t\tstart: function(slider){\n");
      out.write("\t\t\t  $('body').removeClass('loading');\n");
      out.write("\t\t\t}\n");
      out.write("\t\t  });\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //flexSlider -->\n");
      out.write("\n");
      out.write("<!-- start-smooth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tjQuery(document).ready(function($) {\n");
      out.write("\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<!-- start-smooth-scrolling -->\n");
      out.write("<!-- for bootstrap working -->\n");
      out.write("\t<script src=\"js/bootstrap.js\"></script>\n");
      out.write("<!-- //for bootstrap working -->\n");
      out.write("<!-- here stars scrolling icon -->\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\t/*\n");
      out.write("\t\t\t\tvar defaults = {\n");
      out.write("\t\t\t\tcontainerID: 'toTop', // fading element id\n");
      out.write("\t\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("\t\t\t\tscrollSpeed: 1200,\n");
      out.write("\t\t\t\teasingType: 'linear' \n");
      out.write("\t\t\t\t};\n");
      out.write("\t\t\t*/\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //here ends scrolling icon -->\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}