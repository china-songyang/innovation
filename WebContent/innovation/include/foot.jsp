<%@page import="com.saturn.website.Article"%>
<%@page import="com.saturn.website.WebUtils"%>
<%@page import="com.saturn.website.Content"%>
<%@page import="com.saturn.website.CountPerson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    long count = CountPerson.replaceCount(request.getRealPath("/")+"count.txt");
   if(session.getAttribute("CHEN_CHAO")==null){
    session.setAttribute("CHEN_CHAO","123");
    session.setMaxInactiveInterval(60*60*24);
   count = count+1;
   CountPerson.saveCount(request.getRealPath("/")+"count.txt",count);
}
 %>
<script type="text/javascript">
			$(function() {
				//按获得文章
				$.post("<%=request.getContextPath()%>/webdo/article/onearticle.do", 
						{aid:"jlbhtml.foot",id:""}, 
						function(json){
							var id = json.id;
							var titlez = json.title;
							var text = json.text;
							if(text==null||text.Trim()=="")
								$("#bq").html("");
							else
								$("#bq").html(text);
						}, 
						"json");
			});

			function toIndex(){
			//返回首页
				location="./index.jsp";
			}
			
			function toNew(){
			//跳转到新闻页
				location="./newlist.jsp?cid=ccgdzs.newlist";
			}
			
	/* 获取页底数据 */
	getArticleList("bottom",1000,{aid:"jlb.foot",start:'0',offset:'6'}, 3);
	getArticleList("link",1000,{aid:"jlb.link",start:'0',offset:'6'}, 3);
</script>

 <tr bgcolor="A80023" class="font01"> 
    <td height="72" colspan="2" valign="top"> 
      <div align="center"><br>
        <font color="#FFFFFF">地址：吉林省长春市延安大街2055号 邮编：130012 联系我们 吉ICP备05002091 
        ALEXA排名 360网站安全检测平台 网络中心官方微博<br>
        <br>
        版权所有：长春工业大学创新创业中心 CopyRight2012 ChangChun University Of Teachnology</font></div></td>
  </tr>
 
  