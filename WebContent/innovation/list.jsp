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
  <script type="text/javascript">
 $(function() {
		//获得文章列表
		getArticleList("teacher",20,{aid:"innovation.teacher",start:'0',offset:'15'}, 2);
		getArticleList("jyteacher",20,{aid:"innovation.jyteacher",start:'0',offset:'15'}, 2);
 });
 </script>
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
							var image = json.rows[i].image;
							var title = json.rows[i].title;
							var datetime = json.rows[i].createTime.substr(0,10);
							var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+cid+"&did="+id;
							//aid 赋值
							if (did == null||did==""||did=="null") {
								//aid = "ccgdzs.new01.n1";
								did = id;
							}
							str=$("#artlist").html()+"<li><a href=\""+url+"\">"+title+"</a><span style=\"float:right;margin-right:20px;\">"+datetime+"</span></li>";
	                    
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
	}else if(type!=null&&type!=""&&type=="cgal"){
		$.post("<%=request.getContextPath()%>/webdo/article/articleListByPage.do", 
				opt,
				function(json){
					var str = "";
					$("#artlist").html(str);
					var num = json.rows.length;
					var aid = "";
					if(num>0){
						str+=$("#artlist").html()+"<table><tr>";
						for(var i=0;i<num;i++) {
							var id = json.rows[i].id;
							var image = json.rows[i].image;
							var title = json.rows[i].title;
							var datetime = json.rows[i].createTime.substr(0,10);
							var url="<%=request.getContextPath()%>/innovation/detail.jsp?cid="+cid+"&did="+id;
							//aid 赋值
							if (did == null||did==""||did=="null") {
								//aid = "ccgdzs.new01.n1";
								did = id;
							}
							str+=$("#artlist").html()+"<td><a href=\""+url+"\"><img src="+image+" width='140' height='110' style=\"padding:5px;border: 1px solid #CCCCCC\"><br><center style=\"margin-top:5px;\">"+title+"</center></a></td>";
							if((i+1)%5==0){
								str+=$("#artlist").html()+"</tr><tr>";
							}
						}
						str+=$("#artlist").html()+"</tr></table>";
						$("#artlist").html(str);
					}
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
							//aid 赋值
							if (did == null||did==""||did=="null") {
								//aid = "ccgdzs.new01.n1";
								did = id;
							}
							str=$("#artlist").html()+"<li><span>"+datetime+"</span><a href=\""+url+"\">"+title+"</a></li>";
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

getArticle_cgal("case",21,{aid:"innovation.case",start:'0',offset:'100'}, 3);
</script>
<style type="text/css">
/* scrollleft */
.scrollleft{width:920px;padding:5px 20px 0px 20px;margin:0px auto;}
.scrollleft li{float:left;margin-right:7px;display:inline;width:158px;text-align:center;line-height:19px}
.scrollleft img{width:136px;height:100px;padding:10px;border:solid 1px #ddd;}
</style>
</head>

<body>
<div class="body">
<%@ include file="/innovation/include/top.jsp" %>
<%-- <p id="back-to-top"><a href="#top"><span style="background: url('./images/top.png');"></span></a></p>
<div class="con20">
 		<div class="con22">
 			<div class="con22_top"></div>
           	  <div class="con22_main">
           	  <ul id="artlist"> </ul>
           	  <p><span id="pagemenu"></span></p>
            </div>
            <div class="con22_bottom"></div>
        </div><!--右侧-->
</div>
<%@ include file="/innovation/include/roll.jsp" %> --%>
<br>
<table width="959" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="168" valign="top"> <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border_all">
        <tr> 
          <td height="30" bgcolor="#AE000C"><div align="center" class="font_bt">创新导师</div></td>
        </tr>
       
        <tr> 
          <td height="22"><div align="center"> <a href="<%=request.getContextPath()%>/innovation/list.jsp?cid=innovation.jyteacher">创新教育导师</a> </div></td>
        </tr>
        <tr> 
          <td height="22"><div align="center">创新实践导师</div></td>
        </tr>
      </table>
      <br> <img src="images/more_pic.jpg" width="168" height="330"> <br> &nbsp;</td>
    <td width="791" valign="top">
	<table width="95%" align="right" border="0" cellpadding="0" cellspacing="0" class="border_all">
        <tr>
           <td height="26" bgcolor="a0a0a0" class="font01">
		 
		首页&gt;&gt;创新导师&gt;&gt;创新教育导师</td>
        </tr>
        <tr id="jyteacher"></tr>
        <tr>
          <tr id="teacher"></tr>
          <!--   <td height="394" valign="top"> 
            <table width="90%" align="center" border="0" cellpadding="0" cellspacing="2" class="font_dl">
              <tr> 
                <td width="74%" height="22">·<a href="show.html">学科建设工程首席教授:骆红云</a></td>
                <td width="26%">2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·<a href="show.html">国立名师：张德江</a></td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·学科建设工程首席教授：张会轩</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·中青年骨干教师：王占礼</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·博士生导师：韩立强</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·主讲教授：韩立强</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·讲师：王龙天</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·特约讲师：李红喜</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·特约讲师：任立生</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·特约讲师：刘喜明</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·特约讲师：周振华</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·讲演名师：于燕</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">·讲演名师：吴化</td>
                <td>2014-01-24</td>
              </tr>
              <tr> 
                <td height="22">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr> 
                <td height="22" colspan="2"><div align="right">&lt;&lt; 首页 &lt; 
                    上页 下页 &gt; 末页 &gt;&gt;</div></td>
              </tr>
            </table>
		  &nbsp;</td>
 -->  
        </tr>
      </table>
	&nbsp; </td>
  </tr>
 <%@ include file="/innovation/include/foot.jsp" %>
</table>
</div>
</body>
</html>
