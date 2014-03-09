<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.saturn.website.PaginationUtils"%>
<%@page import="com.saturn.website.Article"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>教师类导师介绍</title>
<%@ include file="/include/include.jsp" %>
<!-- 创新平台js方法 -->
 <script type="text/javascript">
<!--
var timeout         = 500;
var closetimer		= 0;
var ddmenuitem      = 0;
function mopen(id)
{	
	mcancelclosetime();
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
	ddmenuitem = document.getElementById(id);
	ddmenuitem.style.visibility = 'visible';

}
function mclose()
{
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
}
function mclosetime()
{
	closetimer = window.setTimeout(mclose, timeout);
}
function mcancelclosetime()
{
	if(closetimer)
	{
		window.clearTimeout(closetimer);
		closetimer = null;
	}
}
document.onclick = mclose; 
// -->
</script>
<script language="javascript">
	function fast_xy(){
	    var url="";
		var obj = document.getElementById('fast_xy');
	    for(var i=0;i<obj.options.length;i++){
		   if(obj.options[i].selected){
		   url=obj.options[i].value;
           break;
		   }
        }
		if(url!='none'){
			window.open(url);	
		}
	}

	function fast_net(){
		var obj = document.getElementById('fast_net');
	    for(var i=0;i<obj.options.length;i++){
		   if(obj.options[i].selected){
		   url=obj.options[i].value;
           break;
		   }
        }
		if(url!='none'){
			window.open(url);	
		}
	}
</script>

 <script type="text/javascript">
var type='<%=request.getParameter("type")%>'
var cid = '<%=request.getParameter("cid")%>';
var did = '<%=request.getParameter("did")%>';
var opt={aid:cid,start:'0',offset:'25'};
$(function() {
	getArticleListByPage(cid,1,0);
	getMenuTitle(cid);
	});
	
function getMenuTitle(cid){
	//获得菜单标题
	$.post("<%=request.getContextPath()%>/webdo/menu/menubycid.do", 
			{cid:cid}, 
			function(json){
				$("#topmenu").html(json.name);
				$("#topmenu_z").html(json.name);
			}, 
			"json");
}

function getArticleListByPage(aid,pageNo,start){
	opt.start=start;
	//获得文章列表
	if(type!=null&&type!=""&&type=="search"){
		opt.aid=aid;
		$.post("<%=request.getContextPath()%>/webdo/recommend/searchArticle.do", 
				opt,
				function(json){
					var str = "";
					$("#artlist").html(str);
					var num = json.rows.length;
					var aid = "";
					if(num>0){
						for(var i=0;i<num;i++) {
							var id = json.rows[i].id;
							alert(title);
							var image = json.rows[i].image;
							var title = json.rows[i].title;
							var datetime = json.rows[i].createTime.substr(0,10);
							var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+cid+"&did="+id;
							//aid 赋值
							if (did == null||did==""||did=="null") {
								//aid = "ccgdzs.new01.n1";
								did = id;
							}
							str=$("#artlist").html()+"<td width=\"74%\" height=\"22\">.<a href=\""+url+"\">"+title+"</a></td><td width=\"26%\">"+datetime+"</td>";
							$("#artlist").html(str);
						}
					}else{
						$("#artlist").html("没有文章");
					}
					var totle = json.total;
					//分页
					$("#pagemenu").pageMenuBar({
						rowPerPage:parseInt(opt.offset),
						sumRow:parseInt(totle), 
						pageNo:parseInt(pageNo),
						state:1,
						func:'getArticleListByPage',
						args:'"'+cid+'"'
					});
				}, 
				"json");
	}else{
		$.post("<%=request.getContextPath()%>/webdo/article/articleListByPage.do", 
				opt,
				function(json){
					var str = "";
					$("#artlist").html(str);
					var num = json.rows.length;
					var aid = "";
					if(num>0){
						for(var i=0;i<num;i++) {
							var id = json.rows[i].id;
							var image = json.rows[i].image;
							var title = json.rows[i].title;
							var datetime = json.rows[i].createTime.substr(0,10);
							var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+cid+"&did="+id;
							str=$("#artlist").html()+"<tr><td height=\"22\">.<a href=\""+url+"\">"+title+"</a></td>";
							str+="<td>"+datetime+"</td></tr>";
							$("#artlist").html(str);
						}
					}
					var totle = json.total;
					//分页
					$("#pagemenu").pageMenuBar({
						rowPerPage:parseInt(opt.offset),
						sumRow:parseInt(totle), 
						pageNo:parseInt(pageNo),
						state:1,
						func:'getArticleListByPage',
						args:'"'+cid+'"'
					});
				}, 
				"json");
	}
};
</script>
</head>
<body leftmargin="0" topmargin="0">
<%@ include file="/innovation/include/top.jsp" %>
<br>
<table width="959" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="168" valign="top"> <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border_all">
        <tr> 
          <td height="30" bgcolor="#AE000C"><div align="center" class="font_bt">创新导师</div></td>
        </tr>
        <tr> 
          <td height="22"><div align="center"><a href="more.html">创新教育导师</a></div></td>
        </tr>
        <tr> 
          <td height="22"><div align="center"><a href="more.html">创新实践导师</a></div></td>
        </tr>
      </table>
      <br> <img src="images/more_pic.jpg" width="168" height="330"> <br> &nbsp;</td>
    <td width="791" valign="top">
	<table width="95%" align="right" border="0" cellpadding="0" cellspacing="0" class="border_all">
        <tr>
          <td height="26" bgcolor="a0a0a0" class="font01">&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html">首页</a>&gt;&gt;<a href="more.html">创新导师</a>&gt;&gt;创新教育导师</td>
        </tr>
        <tr>
          <td height="394" valign="top"> 
            <table width="90%" align="center" border="0" cellpadding="0" cellspacing="2" class="font_dl">
              <tr id="artlist"> 
              </tr>
              
              <tr> 
                <td height="22" colspan="2"><div align="right" id="pagemenu"></div></td>
              </tr>
            </table>
		  &nbsp;</td>
        </tr>
      </table>
	&nbsp; </td>
  </tr>
   <%@ include file="/innovation/include/foot.jsp" %>
</table>
</body>
</html>
