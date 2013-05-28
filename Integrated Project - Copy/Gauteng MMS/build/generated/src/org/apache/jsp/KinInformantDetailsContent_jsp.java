package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class KinInformantDetailsContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"js/jquery-1.9.1.js\"></script>\r\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\" src=\"js/jquery.validate.min.js\"></script>\r\n");
      out.write(" <!--<script src=\"js/KinDetailsScript.js\"></script>-->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <legend>Body File> Edit Body File> Body Identification> Kin/Informant Details </legend>\r\n");
      out.write("        <form name=\"Kinform\" id=\"Kinform\" method=\"post\" action=\"SaveKinDetailsServlet\">\r\n");
      out.write("      \r\n");
      out.write("          \r\n");
      out.write("                <table>\r\n");
      out.write("                    <tr>     \r\n");
      out.write("                        <td>Name:  </td> <td><input type=\"text\" name=\"KinName\" id =\"kinName\"  /></td>  \r\n");
      out.write("                    </tr>\r\n");
      out.write("                    \r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>Surname:</td> <td> <input type=\"text\" name=\"KinSurname\" value=\"\" id =\"kinSurname\"  /> </td>\r\n");
      out.write("                    </tr> \r\n");
      out.write("                    \r\n");
      out.write("                    <tr>     \r\n");
      out.write("                        <td>Identification type:  </td> <td> <select name=\"identificationtype\" id=\"kinIdType\">\r\n");
      out.write("                        <option>Select</option>\r\n");
      out.write("                        <option>ID</option>\r\n");
      out.write("                        <option>Passport</option>\r\n");
      out.write("                    </select> </td>\r\n");
      out.write("                      \r\n");
      out.write("                    </tr>\r\n");
      out.write("                        \r\n");
      out.write("                    <tr>\r\n");
      out.write("                         <td> Identification Number:</td>  <td> <input type=\"text\" name=\"KinIDNumber\" value=\"\" id=\"kinIdNumber\" /></td>                       \r\n");
      out.write("                     </tr>\r\n");
      out.write("                        \r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td> Relationship to deceased:</td> <td> <input type=\"text\" name=\"KinRelationship\" value=\"\" id=\"kinRelationDeceased\" /></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        \r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td> Contact number:</td> <td> <input type=\"text\" name=\"KinContact\" value=\"\" id =\"kinContactNumber\"/></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        \r\n");
      out.write("                            <tr>\r\n");
      out.write("                            <td> Residential Address:     </td><td><textarea cols=\"50\" rows=\"3\" name=\"KinRes\" id=\"kinAddress\"> </textarea><br></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            \r\n");
      out.write("                            <tr>\r\n");
      out.write("                            <td> Work Address:     </td><td><textarea cols=\"50\" rows=\"3\" name=\"KinWork\" id=\"kinWorkAddress\"> </textarea><br></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                          \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td> <td>  <input type=\"submit\" value=\"Save\" name=\"bodySave\" /><br></td></td>\r\n");
      out.write("          \r\n");
      out.write("                            </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("            </form>\r\n");
      out.write("    </body\r\n");
      out.write("        \r\n");
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
