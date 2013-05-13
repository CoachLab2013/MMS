package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CallDetailsContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("                <style type=\"text/css\">\r\n");
      out.write("                label.error { \r\n");
      out.write("                    float: none; \r\n");
      out.write("                    color: red; \r\n");
      out.write("                    padding-left: .5em; \r\n");
      out.write("                    vertical-align: top; \r\n");
      out.write("                }\r\n");
      out.write("            </style>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js\"></script>\r\n");
      out.write(" <script src=\"js/CallDetailsScript.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <legend>Incidents> Log Incident> Call Details</legend>\r\n");
      out.write("        <form name=\"callform\" id=\"callform\">\r\n");
      out.write("            <table>\r\n");
      out.write("                <tr>     \r\n");
      out.write("                    <td>  Time of Call:  </td><td>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Time.jsp", out, false);
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>  Caller's Phone Number:  </td><td> <input type=\"text\" name=\"phonenumber\" id=\"phonenumber\"/><br></td>\r\n");
      out.write("                </tr> \r\n");
      out.write("                    <tr>\r\n");
      out.write("\r\n");
      out.write("                        <td> Name of Caller:   </td><td>       <input type=\"text\" name=\"name\" id=\"name\"/><br></td>\r\n");
      out.write("\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td> Name of institution: </td><td>    <input type=\"text\" name=\"institution\" id=\"institution\" /><br></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                        <td> Scene Address:     </td><td><textarea cols=\"50\" rows=\"3\" name=\"address\" id=\"address\"> </textarea><br></td>\r\n");
      out.write("\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                        <td> Provinces:         </td><td>      <select name=\"province\" id=\"province\"><br>\r\n");
      out.write("\r\n");
      out.write("          <option slected=\"selected\">Select</option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("          <option></option>\r\n");
      out.write("      </select><br></td>\r\n");
      out.write("\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                    <td>  Region:</td><td><select name=\"region\" id=\"region\"><br>\r\n");
      out.write("         <option selected=\"selected\">Select</option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("         <option></option>\r\n");
      out.write("                        </select><br></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("\r\n");
      out.write("                        <tr>\r\n");
      out.write("                    <td>  Scene condition: </td><td><textarea cols=\"50\" rows=\"3\" name=\"condition\" id=\"condition\"> </textarea><br></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td></td> <td>  <input type=\"submit\" value=\"Create Incident\" name=\"createincident\" /> <input type=\"reset\" value=\"Cancel\" id=\"callcancel\" /><br></td>\r\n");
      out.write("\r\n");
      out.write("                        </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("    </form>\r\n");
      out.write("</body>\r\n");
      out.write("        \r\n");
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
