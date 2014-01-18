package org.apache.jsp.app.website.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.saturn.auth.User;
import com.saturn.app.utils.DateUtils;
import com.saturn.website.Content;
import com.saturn.website.Article;

public final class editContentArticle_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/app/includes/kindEditor.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>修改文章信息</title>\n");
      out.write("<!-- kindEditor和easyui样式冲突 -->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/window.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/messager.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/panel.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/combo.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/combobox.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/linkbutton.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/icon.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/saturn.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/formValidator/validator.css\">\n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/css/default.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/plugins/code/prettify.css\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/kindeditor.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/lang/zh_CN.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/plugins/code/prettify.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/plugins/filemanager/filemanager.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t");

		String cid = request.getParameter("cid");
		Content content = Content.get(cid);
		String name = content.getName();
		
		Article	article = Article.getOneByCid(cid);
		User user = (User)session.getAttribute("authUser");
		String userId = "";
		String userName = "";
		
		if (user != null) {
			userId = user.getId();
			userName = user.getName();
			
			if (article == null) {
				article = new Article(null, cid, name, "", "article.state.normal", "普通", "visible.true", "显示", "0", DateUtils.getSystemTime(), user.getId(), user.getName(), "");
				Article.add(article);
			}
		}
		
		request.setAttribute("article", article);
	
      out.write("\n");
      out.write("\t\n");
      out.write("\tvar editor = \"\";\n");
      out.write("\t\n");
      out.write("\tfunction edit() {\n");
      out.write("\t\teditor.sync();\n");
      out.write("\t\t$('#editForm').submit();\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tKindEditor.ready(function(K) {\n");
      out.write("\t\teditor = K.create('textarea[name=\"text\"]', {\n");
      out.write("\t\t\tcssPath : '");
      out.print(request.getContextPath());
      out.write("/app/js/kindEditor/plugins/code/prettify.css',\n");
      out.write("\t\t\tfileManagerJson : '");
      out.print(request.getContextPath());
      out.write("/app/system/upload/fileManager.action',\n");
      out.write("\t\t\tuploadJson : '");
      out.print(request.getContextPath());
      out.write("/app/system/upload/upload.action',\n");
      out.write("\t\t\tallowFileManager : true,\n");
      out.write("\t\t\tafterCreate : function() {\n");
      out.write("\t\t\t\tvar self = this;\n");
      out.write("\t\t\t\tK.ctrl(document, 13, function() {\n");
      out.write("\t\t\t\t\tself.sync();\n");
      out.write("\t\t\t\t\tdocument.forms['editForm'].submit();\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t\tK.ctrl(self.edit.doc, 13, function() {\n");
      out.write("\t\t\t\t\tself.sync();\n");
      out.write("\t\t\t\t\tdocument.forms['editForm'].submit();\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("\t\n");
      out.write("\t$(function() {\n");
      out.write("\t\t$('#text').focus();\n");
      out.write("\t\t\n");
      out.write("\t\t");

		Object result = request.getParameter("result");
		if (result != null && "true".equals(result)) {
		
      out.write("\n");
      out.write("\t\t\t$(function() {\n");
      out.write("\t\t\t\t$.messager.show({\n");
      out.write("\t\t\t\t\ttitle:'信息',\n");
      out.write("\t\t\t\t\tmsg:'保存成功',\n");
      out.write("\t\t\t\t\tshowType:'show'\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t});\n");
      out.write("\t\t");

		}
		
      out.write("\n");
      out.write("\t});\n");
      out.write("\t\n");
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
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"panel\" class=\"easyui-panel\" title=\"修改");
      out.print(name);
      out.write("\"\n");
      out.write("\t\ticon=\"icon-edit-form\" collapsible=\"true\" style=\"padding: 10px;\">\n");
      out.write("\t\t<form id=\"editForm\"\n");
      out.write("\t\t\taction=\"");
      out.print(request.getContextPath());
      out.write("/app/website/admin/addOrEdit.action\"\n");
      out.write("\t\t\tmethod=\"post\">\n");
      out.write("\t\t\t<table class=\"table-form\">\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td colspan=\"3\">\n");
      out.write("\t\t\t\t\t\t<div style=\"padding: 10px;\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" onclick=\"edit()\" class=\"easyui-linkbutton\"\n");
      out.write("\t\t\t\t\t\t\t\ticonCls=\"icon-ok\">确定</a> <a href=\"javascript:history.back(-1)\"\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"easyui-linkbutton\" iconCls=\"icon-cancel\">取消</a>(提交: Ctrl + Enter)\n");
      out.write("\t\t\t\t\t\t</div></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t\t<textarea name=\"text\" cols=\"100\" rows=\"8\" style=\"width:700px;height:200px;visibility:hidden;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.text}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("</textarea>\n");
      out.write("\t\t\t<input id=\"id\" type=\"hidden\" name=\"id\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.id}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"type\" type=\"hidden\" name=\"type\" type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.type}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"typeName\" type=\"hidden\" name=\"typeName\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.typeName}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"state\" type=\"hidden\" name=\"state\" type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.state}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"stateName\" type=\"hidden\" name=\"stateName\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.stateName}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"cid\" type=\"hidden\" name=\"cid\" value=\"");
      out.print(cid);
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"title\" type=\"hidden\" name=\"title\" type=\"text\" value=\"");
      out.print(name);
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"createTime\" type=\"hidden\" name=\"createTime\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.createTime}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"operater\" type=\"hidden\" name=\"operater\" type=\"text\" value=\"");
      out.print(userId);
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"operaterName\" type=\"hidden\" name=\"operaterName\" type=\"text\" value=\"");
      out.print(userName);
      out.write("\"></input>\n");
      out.write("\t\t\t<input id=\"image\" type=\"hidden\" name=\"image\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${article.image}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"></input>\n");
      out.write("\t\t</form>\n");
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
