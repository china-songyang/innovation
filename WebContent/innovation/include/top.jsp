<%@page import="com.saturn.website.WebUtils"%>
<%@page import="com.saturn.website.Content"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
function getArticleList(divid,size,opt,type){
	$("#"+divid+"More").attr("href","<%=request.getContextPath()%>/innovation/list.jsp?cid="+opt.aid);
	//获得文章列表

	$.post("<%=request.getContextPath()%>/webdo/article/articleListByPage.do", 
			opt, 
			
			function(json){
				var str = "";
				$("#"+divid).html(str);
				var num = json.rows.length;
				var aid = "";
				if(num>0){
					for(var i=0;i<num;i++) { 
						var id = json.rows[i].id;
						var image = json.rows[i].image;
						var title = size!=null&&size!=""&&json.rows[i].title.length>size?json.rows[i].title.substr(0,size)+"...":json.rows[i].title;
						var text = size!=null&&size!=""&&json.rows[i].text.length>size?json.rows[i].text.substr(0,size)+"...":json.rows[i].text;
						var datetime = json.rows[i].createTime.substr(0,10);
						var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+opt.aid+"&did="+id;
						var imageUrl = "<%=request.getContextPath()%>/innovation/images/index_dot_2.jpg";
						if(type == 1){
							str=$("#"+divid).html()+"<li><a href=\""+url+"\">"+text+"</li>";
						}else if(type == 2){
							str=$("#"+divid).html()+"<tr><td height=\"22\" colspan=\"2\"><img src="+imageUrl+" width=\"11\" height=\"11\"><a href=\""+url+"\">"+title+" </a></td></tr>";
							
						} else{
							str=$("#"+divid).html()+"<a href=\""+url+"\">"+text+""; 
						}
						$("#"+divid).html(str);
					}
				}
			}, 
			"json");
}
function getArticlezxrd(divid,size,opt,type){
	$("#"+divid+"More").attr("href","<%=request.getContextPath()%>/innovation/list.jsp?cid="+opt.aid);
	//获得文章列表

	$.post("<%=request.getContextPath()%>/webdo/article/articleListByPage.do", 
			opt, 
			
			function(json){
				var str = "";
				$("#"+divid).html(str);
				var num = json.rows.length;
				var aid = "";
				if(num>0){
					for(var i=0;i<num;i++) { 
						var id = json.rows[i].id;
						var image = json.rows[i].image;
						var title = size!=null&&size!=""&&json.rows[i].title.length>size?json.rows[i].title.substr(0,size)+"...":json.rows[i].title;
						var text = size!=null&&size!=""&&json.rows[i].text.length>size?json.rows[i].text.substr(0,size)+"...":json.rows[i].text;
						var datetime = json.rows[i].createTime.substr(0,10);
						var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+opt.aid+"&did="+id;
						var imageUrl = "<%=request.getContextPath()%>/innovation/images/index_dot_2.jpg";
						if(type == 1){
							str=$("#"+divid).html()+"<li><a href=\""+url+"\">"+text+"</li>";
						}else if(type == 2){
							str=$("#"+divid).html()+"<tr><td height=\"22\" colspan=\"2\"><a href=\""+url+"\">"+title+"</a> </td></tr>";
							
						} else{
							str=$("#"+divid).html()+"<a href=\""+url+"\">"+text+""; 
						}
						$("#"+divid).html(str);
					}
				}
			}, 
			"json");
}
</script>
<table width="959" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr> 
    <td width="519" bgcolor="a80023">
<div align="left"><img src="<%=request.getContextPath()%>/innovation/images/index_top_1.jpg" width="195" height="38"></div></td>
    <td width="440" bgcolor="a80023"></td>
  </tr>
  <tr> 
    <td><img src="<%=request.getContextPath()%>/innovation/images/index_top_2.jpg" width="519" height="232"></td>
    <td><img src="<%=request.getContextPath()%>/innovation/images/index_top_3.jpg" width="440" height="232"></td>
  </tr>
  <tr valign="top"> 
    <td colspan="2"> 
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr id="sddm"> 
          <td width="9%" height="48" align="center"><a href="<%=request.getContextPath()%>/innovation/index.jsp"><font color="#FFFFFF"> 首页</font></a></td>
          <td width="9%"><a href="#"  onmouseover="mopen('m1')" onmouseout="mclosetime()"><font color="#FFFFFF">工大创新<br>
            </font></a> 
            <div id="m1" onMouseOver="mcancelclosetime()" onMouseOut="mclosetime()"> 
              <a href="#">工大创新介绍</a> <a href="#">工大创新发展历程</a> </div></td>
          <td width="10%"><a href="#"  onmouseover="mopen('m2')" onmouseout="mclosetime()"><font color="#FFFFFF">创新研究</font></a> 
            <br>
            <div id="m2" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="#">研究模式</a> <a href="#">运作模式</a> <a href="#">创新研究新闻</a> 
              </div>
		  </td>
          <td width="10%"><a href="#" onmouseover="mopen('m3')" onmouseout="mclosetime()"><font color="#FFFFFF">创新教育</font></a> 
            <br>
            <div id="m3" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="#">本科教育</a> <a href="#">系列培训</a> <a href="#">创新教育新闻</a> 
              </div>
		  </td>
          <td width="9%"><a href="#" onmouseover="mopen('m4')" onmouseout="mclosetime()"><font color="#FFFFFF">创新实践</font></a> 
            <br>
			<div id="m4" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="#">学校科研项目</a> <a href="#">大学生竞赛类项目</a> <a href="#">大学生创新创业项目</a> 
              </div>
		  </td>
          <td width="9%"><a href="#" onmouseover="mopen('m5')" onmouseout="mclosetime()"><font color="#FFFFFF">创新导师</font></a> 
            <br>
			<div id="m5" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="<%=request.getContextPath()%>/innovation/list.jsp?cid=innovation.jyteacher&">创新教育导师</a>
               <a href="<%=request.getContextPath()%>/innovation/list.jsp?cid=innovation.sjteacher">创新实践导师</a>  </div>
		  </td>
          <td width="14%"><a href="#" onmouseover="mopen('m6')" onmouseout="mclosetime()"><font color="#FFFFFF">创新创业论坛</font></a> 
            <br>
            <div id="m6" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="#">创新创业讲座发布</a>  </div>
		  </td>
          <td width="11%"><a href="#" onmouseover="mopen('m7')" onmouseout="mclosetime()"><font color="#FFFFFF">企业项目</font></a> 
            <br>
            <div id="m7" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="#">企业简介</a>  <a href="#">企业课题</a> 
              <a href="#">企业课题新闻</a> <a href="#">企业项目公告</a><a href="#">企业项目申报</a> <a href="#">企业项目获奖公布</a> </div>
		  </td>
          <td width="19%"><a href="#" onmouseover="mopen('m8')" onmouseout="mclosetime()"><font color="#FFFFFF">国际青年创新大赛</font></a> 
            <br>
            <div id="m8" onmouseover="mcancelclosetime()" onmouseout="mclosetime()"> 
              <a href="<%=request.getContextPath()%>/innovation/list.jsp?cid=innovation.teacher">大赛介绍</a> <a href="#">媒体关注</a> <a href="#">大赛现场</a> 
              <a href="#">作品展示</a>  </div>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
</table>

