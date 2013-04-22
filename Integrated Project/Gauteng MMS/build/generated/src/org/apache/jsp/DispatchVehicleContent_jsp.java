package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class DispatchVehicleContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("                label.error { \n");
      out.write("                    float: none; \n");
      out.write("                    color: red; \n");
      out.write("                    padding-left: .5em; \n");
      out.write("                    vertical-align: top; \n");
      out.write("                }\n");
      out.write("            </style>\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js\"></script>\n");
      out.write(" <script src=\"js/DispatchVehicleScript.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <legend>Incidents> Log Incident> Dispatch Vehicle</legend>\n");
      out.write("        <form id=\"vehicleform\" name=\"vehicleform\">\n");
      out.write("    <table>\n");
      out.write("   Select Vehicle: <select name=\"vehicle\"  id=\"vehicle\">\n");
      out.write("       <option selected=\"selected\">Select</option>\n");
      out.write("       <option>vehicle 1</option>\n");
      out.write("        <option>vehicle 2</option>\n");
      out.write("        <option>vehicle 3</option>\n");
      out.write("        <option>vehicle 4</option>\n");
      out.write("        <option>vehicle 5</option>\n");
      out.write("        <option>vehicle 6</option>\n");
      out.write("    </select>\n");
      out.write("   <br><br><input type=\"submit\" value=\"Submit\" />\n");
      out.write("    </table>\n");
      out.write("</form>      \n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("\n");
      out.write("</html>\n");
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
