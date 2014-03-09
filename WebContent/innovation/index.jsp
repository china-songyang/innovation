<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>创新创业平台</title>
<%@ include file="/include/include.jsp" %>
  <style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
a{color:#333;}
a:hover{color:#3366cc;text-decoration:none;}
</style>
 <script type="text/javascript">
 $(function() {
		//获得文章列表
		getArticleList("practice",20,{aid:"innovation.practice",start:'0',offset:'6'}, 2);
		getArticleList("teacher",20,{aid:"innovation.teacher",start:'0',offset:'6'}, 2);
		getArticleList("harvest",20,{aid:"innovation.harvest ",start:'0',offset:'6'}, 1);
		getArticleList("education",18,{aid:"innovation.education",start:'0',offset:'6'}, 2);
		getArticleList("notice",18,{aid:"innovation.notice",start:'0',offset:'6'}, 2);
		getArticleList("hot",8,{aid:"innovation.hot",start:'0',offset:'100'}, 3);
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
</head>

<body leftmargin="0" topmargin="0">
<%@ include file="/innovation/include/top.jsp" %>
<table width="959" border="0" align="center" cellpadding="0" cellspacing="1">
  <tr> 
    <td width="731" height="288"> 
      <!--焦点图开始-->
      <script type="text/javascript">
	<!--
	
	var focus_width=726
	var focus_height=281
	var text_height=0
	var swf_height = focus_height+text_height
	
	var pics='<%=request.getContextPath()%>/innovation/images/index_internet1.jpg|<%=request.getContextPath()%>/innovation/images/index_internet2.jpg|<%=request.getContextPath()%>/innovation/images/index_internet3.jpg'
	var links='show1.html|show2.html|show3.html'
	var texts='||'
	
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
	document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="<%=request.getContextPath()%>/innovation/images/pixviewer.swf"><param name="quality" value="high"><param name="bgcolor" value="#FFFFFF">');
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
	document.write('<embed src="<%=request.getContextPath()%>/innovation/images/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#cccccc" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');		
    document.write('</object>');
	
	//-->
</script>
<!--焦点图结束-->
	</td>
    <td width="225" valign="top"> <table width="97%" border="0" align="right" cellpadding="0" cellspacing="0">
        <tr> 
        <!-- 最新热点 -->
          <td height="47"><div align="right"><img src="<%=request.getContextPath()%>/innovation/images/index_zxrd.jpg" width="217" height="42"></div></td>
         </tr>
            <tr>
        <tr> 
          <td height="239" background="<%=request.getContextPath()%>/innovation/images/index_zxrd_bg.jpg"> 
           
            <div id="demo" onmouseover="clearInterval(timer)" onmouseout="timer=setInterval(mar,30)" style="overflow:hidden; height:225px; width:100%;">
              <div id="demo1" style="height:100%;" > 
			    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="220"><br>
                      <div class="font_foot01" id="hot">
                     </div>
                    </td>
                  </tr></table>
			    <div id="demo2"></div>
          </div>
			</div>
<script>
var t=getid("demo"),t1=getid("demo1"),t2=getid("demo2"),sh=getid("show"),timer;
t2.innerHTML=t1.innerHTML;
function mar(){
if(t2.offsetTop<=t.scrollTop)
t.scrollTop-=t1.offsetHeight;
else
t.scrollTop++;
}
timer=setInterval(mar,30);
function getid(id){
return document.getElementById(id);
}
</script> 

			</td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td height="183" valign="top"> 
      <table border="0" width="100%" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="50%" valign="top"> 
            <table width="95%" border="0" cellpadding="0" cellspacing="0" class="font_dl">
              <tr> 
                <td width="73%"><img src="<%=request.getContextPath()%>/innovation/images/index_cxsj.jpg" width="257" height="32"></td>
                <td width="27%"><a href="#" id="practiceMore"><img src="<%=request.getContextPath()%>/innovation/images/index_tztg_more.jpg" width="93" height="32" border="0"></a></td>
              </tr>
              <tr id="practice"></tr>
            </table>
            &nbsp;</td>
           <!-- 创新实践 end -->
           
            <!-- 重点成果 -->
          <td width="50%" valign="top"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="font_dl">
              <tr> 
                <td width="77%"><img src="<%=request.getContextPath()%>/innovation/images/index_zdcgzs.jpg" width="260" height="32"></td>
                <td width="23%"><a href="#" id="harvestMore"><img src="<%=request.getContextPath()%>/innovation/images/index_zdcgzs_more.jpg" width="87" height="32" border="0"></a></td>
                <tr id="harvest"></tr>
            </table>
          </td>
          <!-- 重点成果 -->
        </tr>
      </table>
      
    </td>
    <td height="183" valign="top"> 
      <table width="97%" border="0" align="right" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="39" valign="top"><img src="<%=request.getContextPath()%>/innovation/images/index_fwxt.jpg" width="211" height="32"></td>
        </tr>
        <tr> 
          <td height="124"> 
            <div align="left"></div>
            <table width="96%" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="30" bgcolor="efefe1"><a href="#" class="font_top">创新创业学分管理系统</a></td>
              </tr>
              <tr> 
                <td height="30" bgcolor="efefe1"><a href="#" class="font_top">开放实验室管理系统</a></td>
              </tr>
              <tr>
                <td height="30" bgcolor="efefe1"><a href="#" class="font_top">项目申报管理系统</a></td>
              </tr>    
          
            </table>
		    &nbsp;
            <div align="left"></div></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td height="173" valign="top"> 
      <table border="0" width="100%" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="51%" height="168" valign="top"> 
          	<!-- 创新教育 -->
            <table width="95%" border="0" cellpadding="0" cellspacing="0" class="font_dl">
              <tr> 
                <td width="72%"><img src="<%=request.getContextPath()%>/innovation/images/index_cxjy.jpg" width="257" height="32"></td>
                <td width="28%"><a href="#" id="educationMore"><img src="<%=request.getContextPath()%>/innovation/images/index_tztg_more.jpg" width="93" height="32" border="0"></a></td>
                <tr id="education">
              </tr>
            </table>
          </td>
          <!-- 创新教育 end -->
          
          <!-- 通知通告 -->
          <td width="49%" valign="top"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="font_dl">
              <tr> 
                <td width="82%"><img src="<%=request.getContextPath()%>/innovation/images/index_tztg.jpg" width="260" height="32"></td>
                <td width="18%"><a href="#" id="noticeMore"><img src="<%=request.getContextPath()%>/innovation/images/index_tztg_more.jpg" width="93" height="32" border="0"></a></td>
                <tr id="notice"></tr>
            </table>
          </td>
          <!-- 通知通告 end -->
        </tr>
      </table></td>
    <td height="173" valign="top">
<table width="95%" border="0" align="right" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="32"><img src="<%=request.getContextPath()%>/innovation/images/index_yqlj.jpg" width="211" height="32"></td>
        </tr>
        <tr> 
          <td height="137"> 
            <table width="98%" border="0" cellpadding="0" cellspacing="0" class="font01">
              <tr> 
                <td height="30" bgcolor="efefe1">校内快速入口：</td>
              </tr>
              <tr> 
                <td height="30" bgcolor="efefe1">
				<select id="fast_xy" style="width:150">
				 <option value="none" selected>校内快速入口&nbsp; &nbsp;&nbsp;</option>
				 <option value="http://iec.dept.ccut.edu.cn/">国际教育学院</option>
				 <option value="http://www.sohu.com">sohu</option>
                </select>
                   <input type="button" value="进入" onclick="fast_xy();" /></td>
              </tr>
              <tr> 
                <td height="30" bgcolor="efefe1">校外友情链接：</td>
              </tr>
              <tr>
                <td height="30" bgcolor="efefe1"><select id="fast_net" style="width:150">
				<option value="none" selected>校外友情链接&nbsp; &nbsp;&nbsp;</option>
				<option value="http://iec.dept.ccut.edu.cn/">国际教育学院</option>
                  </select>
                 <input type="button" value="进入" onclick="fast_net();" /></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
 <%@ include file="/innovation/include/foot.jsp" %>
</table>
</body>
</html>

