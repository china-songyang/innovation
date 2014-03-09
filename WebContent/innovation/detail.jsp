<%@page import="com.saturn.website.PaginationUtils"%>
<%@page import="com.saturn.website.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/include.jsp" %>
<title>详细信息</title>
<script type="text/javascript">
$(function() {
	var cid = '<%=request.getParameter("cid")%>';
	var did = '<%=request.getParameter("did")%>';
	//按获得文章
	$.post("<%=request.getContextPath()%>/webdo/article/onearticle.do", 
			{aid:cid,id:did}, 
			function(json){
				var id = json.id;
				var titlez = json.title;
				var text = json.text;
				var time = json.createTime;
				if(titlez==null||titlez=="")
					$("#title").html("");
				else
					$("#title").html(""+titlez);
				if(text==null||text=="")
					$("#content").html("");
				else
					$("#content").html(text);
				if(time == null || time == "")
					$("#time").html("");
				else
					$("#time").html(""+time);
			}, 
			"json");
	});
/* 成功案例 */
function getArticle_cgal(divid,size,opt){
	$("#"+divid+"More").attr("href","<%=request.getContextPath()%>/innovation/list.jsp?cid="+opt.aid);
	$.post("<%=request.getContextPath()%>/webdo/article/articleListByPage.do", 
			opt, 
			function(json){
				var str = "";
				$("#"+divid).html(str);
				var num = json.rows.length;
				if(num>0){
					for(var i=0;i<num;i++) {
						var id = json.rows[i].id;
						var image = json.rows[i].image!=""?json.rows[i].image:"images/jctp_01.jpg";
						var title = size!=null&&size!=""&&json.rows[i].title.length>size?json.rows[i].title.substr(0,size)+"...":json.rows[i].title;
						var datetime = json.rows[i].createTime.substr(0,10);
						var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+opt.aid+"&did="+id;
						str=$("#"+divid).html()+"<li><a href=\""+url+"\"><img width=\"140\" height=\"118\" alt=\""+json.rows[i].title+"\" src=\""+image+"\"/></a><br><span>"+title+"</span></li>";
						$("#"+divid).html(str);
					}
				}
				
				$(".scrollleft").imgscroll({
					speed: 20,    //图片滚动速度
					amount: 0,    //图片滚动过渡时间
					width: 1,     //图片滚动步数
					dir: "left"   // "left" 或 "up" 向左或向上滚动
				});
			}, 
			"json");
};

getArticle_cgal("case",21,{aid:"innovation.case",start:'0',offset:'16'}, 3);

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
              <tr> 
                <td height="22"><div align="center" class="font01"><h2 style="font-size:16px;font-weight: bold;" id="title"></h2></div></td>
              </tr>
              <tr> 
                <td height="22"><div align="center">发布时间：<span id="time"></span></div></td>
              </tr>
              <tr> 
                <td height="334" valign="top"  style=font-size:14px;line-height:23px;margin:20px; id="content"></td>
              </tr>
            </table>
		  &nbsp;</td>
        </tr>
      </table>
	&nbsp; </td>
  </tr>
<%@ include file="/innovation/include/foot.jsp" %></div>
</body>
</html>
