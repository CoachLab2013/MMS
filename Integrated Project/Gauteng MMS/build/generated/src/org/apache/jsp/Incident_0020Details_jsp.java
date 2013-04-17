package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Incident_0020Details_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("          <link type=\"text/css\" rel=\"stylesheet\"  href=\"CSS/Design.css\"> \n");
      out.write("      <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"offset5  span7 \">\n");
      out.write("            <fieldset class=\"fieldset\">\n");
      out.write("                <legend class=\"legend\">Incident Details</legend> \n");
      out.write("        <table >\n");
      out.write("            <div class=\"control-group\">       \n");
      out.write("     <td>FPS Incident Log Number:  </td> <td><input type=\"text\" name=\" FPS Incident Log Number \" value=\"\" /></td>\n");
      out.write("            </div>\n");
      out.write("              \n");
      out.write("                    <tr>\n");
      out.write("                    <div class=\"control-group\">\n");
      out.write("     <td>  SAPS\\ IR number reference number:</td> <td> <input type=\"text\" name=\"SAPS\\ IR number reference number:\" value=\"\" /> </td>\n");
      out.write("                    </div>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    <tr>  \n");
      out.write("                    <div class=\"control-group\">\n");
      out.write("     <td> Incident date:</td>  <td> <input type=\"text\" name=\"Incident date:\" value=\"\" /></td>\n");
      out.write("                    </div>\n");
      out.write("                    </tr>\n");
      out.write("                    <div class=\"control-group\">\n");
      out.write("     <td> Incident time:</td> <td> <input type=\"text\" name=\"incident time\" value=\"\" /></td>\n");
      out.write("                    </div>\n");
      out.write("      \n");
      out.write("    </fieldset>\n");
      out.write("      \n");
      out.write("         \n");
      out.write("                <tr> \n");
      out.write("              <td> Number of bodies:</td> <td><select name=\"number of bodies\">\n");
      out.write("                <option>1</option>\n");
      out.write("                <option>2</option>\n");
      out.write("                <option>3</option>\n");
      out.write("                <option>4</option>\n");
      out.write("                <option>5</option>\n");
      out.write("                <option>6</option>\n");
      out.write("                <option>7</option>\n");
      out.write("                <option>8</option>\n");
      out.write("                <option>9</option>\n");
      out.write("                <option>10</option>\n");
      out.write("                <option>11</option>\n");
      out.write("                <option>12</option>\n");
      out.write("                <option>13</option>\n");
      out.write("            </select>\n");
      out.write("            </td>        \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td> Place where body was found:</td> <td><input type=\"text\" name=\"place where body found\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("            <tr>\n");
      out.write("            <td> Circumstances of death:</td> <td><input type=\"text\" name=\"circumstances of death\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td> Special Circumstances:</td> <td><select name=\"special circumstances\">\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("                <option></option>\n");
      out.write("            </select>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                <br> <br>  <td>    <input type=\"submit\" value=\"record call details\" /><td><br/></td>\n");
      out.write("                </td>  \n");
      out.write("            </tr>\n");
      out.write("          \n");
      out.write("         \n");
      out.write("    </body>\n");
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
