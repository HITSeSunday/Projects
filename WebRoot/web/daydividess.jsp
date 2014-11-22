<%@ page language="java" import="java.util.*,webAction.*,model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>calendar</title>
<link type="text/css" href="<%=basePath%>web/css/daydivide.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath%>web/js/jquery-1.7.min.js"></script> 
<script type="text/javascript"> 

//日历——————————————————————————————————————————
$(function() {
	
	//绘制月历体——————————————————————————————————————————
	
	 for(var i=0;i<24;i++){
	 $("<li><span></span></li>").appendTo(".month-body").addClass("month-cell"); 
	 }

	  var today=new Date()  
	  
	  var FullYear = today.getFullYear(); //获取年份
	  var m = today.getMonth();           //获取月号
	  var month = today.getMonth()+1;     //获取月份
	  
	  if(month<10){
		 month="0"+month; 
	  }
	  var date = today.getDate();	      //获取日期
	document.getElementById("123").innerHTML=FullYear+"年"+month+"月"+date+"日";
	document.getElementById("1").innerHTML=<s:property  value="#Reverse.TeacherName"/>;
	  var f = 0;
	  for(var j=1;j<=24;j++){
		  $("li.month-cell span").eq(f).text(j).parent().addClass("pink");
		  
		  if ("0"+f+":"+"00"+":"+"00"==<s:property value="#Reverse.StartTime"/>)
			$("li.month-cell span").eq(f).text(j).addClass("red");
		 f++; 
	  }
	  for(var j=0;j<8;j++)
	  {
		$("li.month-cell span").eq(firstDay-1+date+j).parent().addClass("red");	
	  }	  
	  $(".month-head span").text(FullYear+"年"+month+"月");
	  
})

</script>
</head>

<body>
	
	<table border="1">
  		<tr>
  			<td>教师名称</td>
  			<td>开始时间</td>
  			<td>结束时间</td>
  			<td>是否可预约 </td>
  			<td>预约</td>

  		</tr>
  		
  		<%
  		LoginAction t=new LoginAction();
  		String s = (String)session.getAttribute("currentstu");
  			int tmp=t.getCurrentStu(s);
  		%>
  		<%=tmp %>
  		<s:iterator value="List" var="Reverse" status="sta">
  			<tr>
  				<td><s:property  value="#Reverse.TeacherName"/></td>
  				<td><s:property value="#Reverse.StartTime"/></td>
  				<td><s:property value="#Reverse.EndTime"/></td>
  				<td><s:property value="#Reverse.ss==0"/></td>
  				<td><a href="reservereserve?stuid=<%=tmp%>&reserveid=<s:property value="#Reverse.ReserveId"/>">预约</a>
  			</tr>
  		</s:iterator>
  	</table>
<div class="month-container" id="body">
	
      <div class="month-head"><span></span></div>
     <ul class="month-body">
      </ul>
      <div class="clear"></div>
	  
	  <div id="show" class="add">
		<a style="cursor: pointer;" title="添加空闲时间" onclick="hidediv();"class="r">关闭X</a>
		<div class="clean"></div>
		<h3>添加</h3>
		<form action="add" method="post" style="text-align:left;">
			<div id="123" >aa</div>
			<div class="item">
				起始时间：<input name="starttime" class="input" />
			</div>
			<br/>
			<div class="item">
				终止时间：<input name="overtime" class="input" />
			</div>
			<br/>
			<input type="submit" class="submit" value="发布" />
		</form>
	</div>
</div>

<script>
	//弹出框
		function showdiv(){
		document.getElementById("show").style.display = "block";
			document.getElementById("body").style.opacity = "0.8";
		}
		function hidediv() {
			document.getElementById("show").style.display = "none";
			document.getElementById("body").style.opacity = "1.0";
		}
		</script>
</body>
</html>
