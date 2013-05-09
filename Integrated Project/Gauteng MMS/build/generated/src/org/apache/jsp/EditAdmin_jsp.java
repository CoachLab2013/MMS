package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EditAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\">           \n");
      out.write("        <script src=\"bootstrap/js/bootstrap-tabs.js\"></script>\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"CSS/Design.css\">\n");
      out.write("        <script src=\"js/jquery-1.7.1.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.validate.min.js\"></script>\n");
      out.write("        <script src=\"js/script.js\"></script>\n");
      out.write("        <link  type=\"text/css\" href=\"CSS files/style.css\" rel=\"stylesheet\">\n");
      out.write("        <title>Edit User</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            //Java code
                 String name = "";
                String surnme = "";
                String email = "";
                String personnel ="";
                int level = 0;
                Boolean active = false;
                String editResult ="";
                String Supervisor = " ";
                String fpsOfficer = " ";
                String Pathologist = " ";
                String Administrator = " ";

                String Afalse = "";
                String Atrue = "";
            try {
                  name = (String) session.getAttribute("name");
                  surnme = (String) session.getAttribute("surname");
                  email = (String) session.getAttribute("email");
                  personnel = (String) session.getAttribute("personnel");
                  level = Integer.parseInt(session.getAttribute("level").toString());
                  active = (Boolean) session.getAttribute("active");
                  editResult = session.getAttribute("result").toString();
                  Supervisor = " ";
                  fpsOfficer = " ";
                  Pathologist = " ";
                  Administrator = " ";

                  Afalse = "";
                  Atrue = "";
                if (level == 1) {
                    Supervisor = "selected";
                } else if (level == 2) {
                    fpsOfficer = "selected";
                } else if (level == 3) {
                    Pathologist = "selected";
                } else if (level == 4) {
                    Administrator = "selected";
                }

                if (active) {
                    Atrue = "selected";
                } else if (!active) {
                    Afalse = "selected";
                }
            } catch (NullPointerException ex) {
                //Log out
                
                 response.sendRedirect("Login.jsp");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div align=\"center\"><h2>Edit User  </h2> </div>  \n");
      out.write("\n");
      out.write("        <form name=\"EditUser\" id=\"EditUser\" method=\"post\" action=\"EditUser\" class=\"form-horizontal\">\n");
      out.write("\n");
      out.write("            <div class=\"offset2 span7 \">\n");
      out.write("                <input type=\"text\" name=\"form\" value=\"EditUser\" style=\"visibility: hidden\" />\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend>User Personal Details</legend>\n");
      out.write("                    <label   > ");
 out.println(String.valueOf(editResult));
      out.write(" </label>\n");
      out.write("                    <div class=\"control-group \">\n");
      out.write("\n");
      out.write("                        <label  class=\"control-label\" for=\"firstName\">Full Name(s):</label> \n");
      out.write("                        <div class=\"controls error\">\n");
      out.write("                            <input type=\"text\" name=\"firstName\" id=\"firstName\" value=");
      out.print( name);
      out.write("  /> \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"control-group  \">\n");
      out.write("                        <label  class=\"control-label\" for=\"surname\">Surname:</label> \n");
      out.write("                        <div class=\"controls error\">\n");
      out.write("                            <input  type=\"text\" name=\"surname\"  id=\"surname\"  value=");
      out.print( surnme);
      out.write(" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"control-group  \">\n");
      out.write("                        <label  class=\"control-label\" for=\"email\" >Email:</label> \n");
      out.write("                        <div class=\"controls error\">\n");
      out.write("                            <input type=\"text\" name=\"email\" value=");
      out.print( email);
      out.write(" id=\"email\" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </fieldset>\n");
      out.write("\n");
      out.write("                </br> </br>\n");
      out.write("\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend>User Employment Details</legend>\n");
      out.write("                    <div class=\"control-group  \">\n");
      out.write("                        <label  class=\"control-label\" for=\"personnelNumber\">Persal Number:</label>\n");
      out.write("                        <div class=\"controls error\">\n");
      out.write("                            <input type=\"text\" maxlength=\"8\" readonly name=\"personnelNumber\" value=");
      out.print( personnel);
      out.write(" id=\"personnelNumber\"  />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"control-group  \">\n");
      out.write("                        <label  class=\"control-label\" for=\"level\">Access Level:</label>\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        <div class=\"controls error\">\n");
      out.write("                            <select name=\"level\" id=\"level\">\n");
      out.write("                                <option value=\"\"> ");
 out.println(String.valueOf("-Please Select-"));
      out.write("</option>\n");
      out.write("                                <option ");
 out.println(String.valueOf(Supervisor));
      out.write("  value=\"1\">Supervisor</option>\n");
      out.write("                                <option ");
 out.println(String.valueOf(fpsOfficer));
      out.write("   value=\"2\">FPS Officer</option>\n");
      out.write("                                <option ");
 out.println(String.valueOf(Pathologist));
      out.write("   value=\"3\">Pathologist</option>\n");
      out.write("                                <option ");
 out.println(String.valueOf(Administrator));
      out.write("  value=\"4\">Administrator</option>\n");
      out.write("\n");
      out.write("                                </option>\n");
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"control-group  \">\n");
      out.write("                        <label  class=\"control-label\" for=\"active\">Active:</label>\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        <div class=\"controls error\">\n");
      out.write("                            <select name=\"active\" tabindex=\"1\" id=\"active\">\n");
      out.write("                                <option value=\"\"> ");
 out.println(String.valueOf("-Please Select-"));
      out.write("</option>\n");
      out.write("                                <option ");
 out.println(String.valueOf(Afalse));
      out.write(" value=\"false\">False</option>\n");
      out.write("                                <option ");
 out.println(String.valueOf(Atrue));
      out.write("value=\"true\">True</option>\n");
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </fieldset>\n");
      out.write("                <br/> <br/>                                 \n");
      out.write("                <div class=\"offset4\">\n");
      out.write("                    <input type=\"submit\"  class=\"btn btn-primary\" type=\"button\" value=\"Save Changes\" /> \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <br/> <br/> \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </div> \n");
      out.write("</body>\n");
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
