package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class IncidentsTabContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!--\r\n");
      out.write("To change this template, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("         <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\"></script>\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\">           \r\n");
      out.write("        <script  src=\"bootstrap/js/bootstrap-tabs.js\"></script>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"tabbable\">\r\n");
      out.write("            <ul class=\"nav nav-tabs \" data-tabs=\"tabs\">\r\n");
      out.write("                <li id =\"OpenIncidentsTab\" class=\"active\"><a href=\"#OpenIncidents\" data-toggle=\"tab\">Open Incidents</a> </li>\r\n");
      out.write("                <li id=\"LogIncidentTab\"><a href=\"#LogIncident\" data-toggle=\"tab\">Log Incident</a></li>   \r\n");
      out.write("                <li id=\"EditIncidentTab\"><a href=\"#EditIncident\" data-toggle=\"tab\">Edit Incident</a></li> \r\n");
      out.write("            </ul>\r\n");
      out.write("            <div class=\"tab-content\" >\r\n");
      out.write("                <div id=\"OpenIncidents\" class=\"tab-pane active\" name=\"openincidents\">  \r\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "OpenIncidentContent.jsp", out, false);
      out.write("                            \r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"LogIncident\" class=\"tab-pane\" name=\"logincident\"> \r\n");
      out.write("                     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "LogIncidentTabContent.jsp", out, false);
      out.write("\r\n");
      out.write("                </div>   \r\n");
      out.write("                <div id=\"EditIncident\" class=\"tab-pane\" name=\"editincident\"> \r\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "EditIncidentTabContent.jsp", out, false);
      out.write("\r\n");
      out.write("                </div> \r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
