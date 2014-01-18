package org.apache.jsp.app;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.saturn.auth.User;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/app/includes/header.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>首页</title>\n");
      out.write("<META http-equiv=\"Pragma\" content=\"no-cache\">\n");
      out.write("<META http-equiv=\"Expires\" content=\"-1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/easyui.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/icon.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/saturn.css\">\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/jquery-1.4.4.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/jquery.easyui.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/easyui-lang-zh_CN.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/formValidator.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/formValidatorRegex.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/formValidator/validator.css\">\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/highcharts.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t");

		Object __user = request.getSession().getAttribute("authUser");
		if (__user == null && request.getRequestURI().indexOf("/app/") >= 0) {
	
      out.write("\n");
      out.write("\t\n");
      out.write("\t$(function() {\n");
      out.write("\t\t/*$.messager.show({\n");
      out.write("\t\t\ttitle:'信息',\n");
      out.write("\t\t\tmsg:'用户会话过期，请重新登录',\n");
      out.write("\t\t\tshowType:'show'\n");
      out.write("\t\t});*/\n");
      out.write("\t\t$.messager.confirm('用户过期', '请重新登录', function(r){\n");
      out.write("\t\t\ttop.location.href = '");
      out.print(request.getContextPath());
      out.write("/app/login.jsp';\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("\t");

		}
	
      out.write("\n");
      out.write("</script>");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tfunction addTab(pageTab, node) {\n");
      out.write("\t\tpageTab.tabs('add', {\n");
      out.write("\t\t\ttitle : node.text,\n");
      out.write("\t\t\tcontent : '<iframe scrolling=\"yes\" frameborder=\"0\"  src=\"");
      out.print(request.getContextPath());
      out.write("' + node.attributes.path + '\" style=\"width:100%;height:100%;\"></iframe>',\n");
      out.write("\t\t\ticonCls : 'icon-tap',\n");
      out.write("\t\t\tclosable : true\n");
      out.write("\t\t});\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t$(function() {\n");
      out.write("\t\t$('#navigateTree').tree({\n");
      out.write("\t\t\turl: '");
      out.print(request.getContextPath());
      out.write("/app/auth/resource/listUserResource.action?userId=");
      out.print(((User)session.getAttribute("authUser")).getId());
      out.write("',\n");
      out.write("\t\t\tonClick : function(node) {\n");
      out.write("\t\t\t\tvar text = node.text;\n");
      out.write("\t\t\t\tvar pageTab = $('#pageTab');\n");
      out.write("\t\t\t\tvar tab = pageTab.tabs('getTab', text);\n");
      out.write("\t\t\t\tif (($('#navigateTree').tree('isLeaf',\n");
      out.write("\t\t\t\t\t\tnode.target) == true ) && (node.attributes!=null)) {\n");
      out.write("             \n");
      out.write("\t\t\t\t\tif (tab == null) {\n");
      out.write("\t\t\t\t\t\taddTab(pageTab, node);\n");
      out.write("\t\t\t\t\t} else {\n");
      out.write("\t\t\t\t\t\t$.messager.confirm('提示', '\"'+text+'\"已打开,是否重新打开', function(result){\n");
      out.write("\t\t\t\t\t\t\tif (result){\n");
      out.write("\t\t\t\t\t\t\t\tpageTab.tabs('close', text);\n");
      out.write("\t\t\t\t\t\t\t\taddTab(pageTab, node);\n");
      out.write("\t\t\t\t\t\t\t} else {\n");
      out.write("\t\t\t\t\t\t\t\tpageTab.tabs('select', text);\n");
      out.write("\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body class=\"easyui-layout\">\n");
      out.write("\t<div region=\"north\" split=\"false\"\n");
      out.write("\t\tstyle=\"height: 100px; overflow: hidden;\">\n");
      out.write("\t\t<div class=\"top_img\">\n");
      out.write("\t    <div class=\"user-info\">用户名：");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${authUser.name}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("　　           　[<a href=\"");
      out.print(request.getContextPath());
      out.write("/app/auth/user/logout.action\">退出</a>] </div>\n");
      out.write("\t\t<div class=\"menu-info\"></div>\t\n");
      out.write("\t\t</div> \n");
      out.write("\t</div>\n");
      out.write("\t<div region=\"west\" split=\"true\" title=\"导航栏\"\n");
      out.write("\t\tstyle=\"width: 200px; padding1: 10px; overflow: hidden;\">\n");
      out.write("\t\t<div style=\"padding: 10px;\">\n");
      out.write("\t\t\t<ul id=\"navigateTree\" class=\"easyui-tree\"></ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div region=\"center\" style=\"overflow: hidden;\">\n");
      out.write("\t\t<div id=\"pageTab\" class=\"easyui-tabs\" fit=\"true\" border=\"false\">\n");
      out.write("\t\t\t<div title=\"首页\" style=\"padding: 10px; overflow: hidden;\">欢迎</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
