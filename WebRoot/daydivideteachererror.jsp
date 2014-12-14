<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>calendar</title>
<link type="text/css" href="../css/daydivide.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/spig.js"></script>
<link rel="stylesheet" href="../css/spigPet.css" type="text/css"/>
<script type="text/javascript" src="../js/jquery-1.7.min.js"></script> 

<link rel="stylesheet" href="../css/black/master.css" type="text/css" media="screen" />
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script src="../js/config.js" type="text/javascript"></script>
<script src="../js/cufon-yui.js" type="text/javascript"></script>
<script src="../js/ChunkFive_400.font.js" type="text/javascript"></script>
<script src="../js/PT_Sans_400.font.js" type="text/javascript"></script>
<!--[if IE 6]>
	<script type='text/javascript' src='js/DD_belatedPNG_0.0.8a-min.js'></script>
	<script>DD_belatedPNG.fix('img');</script>
<![endif]-->
<script type="text/javascript">
var isindex = true;
var visitor = true;
</script>
</head>

<body>
<input type="hidden" id="1" value=<s:property value="errors.add[0]"/> >
<Script Language="JavaScript">
var a="<%=session.getAttribute("adderror") %>";
alert(a);
</Script>
	<br/>
	<br/>
	<br/>
<div id="wrap">
<div id="tableWrap">
<table id="premiumTable" cellspacing="0" summary="Premium Table Template">

<thead>
  <tr id="labels">
    <th   class="priceLabels topLeft"><div style="font-size: 1.2em;">起始时间</th>
    <th scope="col"  class="priceLabels"><div style="font-size: 1.2em;"><strong>终止时间</strong></div></th>
    <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>预约人</strong></div></th>
     <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>删除</strong></div></th>
     <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>取消</strong></div></th>
	<th scope="col" abbr="Premium" class="priceLabels topRight"><div style="font-size: 1.2em;"><strong>聊天</strong></div></th>
	
 </tr>
 </thead>	

<tbody>
<s:iterator value="List" var="Reverse" status="sta">
  			<tr>
  				<td><s:property value="#Reverse.StartTime"/></td>
  				<td><s:property value="#Reverse.EndTime"/></td>
  				<td><s:property value="#Reverse.ssname"/></td>
  				<td scope="row" abbr="Bandwidth" class="spec"><a
				href="delreserve?reserveid=<s:property value="#Reverse.ReserveId"/>&teacherId=<s:property value="#Reverse.teacherId"/>
				&date=<s:property value="#Reverse.date"/>">删除</a></td>
				<td><td scope="row" abbr="Bandwidth" class="spec"><a
				<td><a href="<%=basePath %>chat/tviewchatpersonnalsmall?currentChat.sid=<s:property 
  				value="#Reverse.ss"/>&currentChat.tid=<%=session.getAttribute("teacherId") %>">聊天</a></td>

  			</tr>
  		</s:iterator>
</tbody>
</table>
</div>
</div>
<br/>

<a style="cursor: pointer;" title="空闲时间"onclick="showdiv();" class="submit" value="添加空闲时间">添加空闲时间</a>

<div  >
	
      <div class="month-head"><span></span></div>
     
     
	  
	  <div id="show" class="add">
		<a  style="cursor: pointer;" title="添加空闲时间" onclick="hidediv();"class="r">关闭X</a>
		<div class="clean"></div>
		<a style="font-size: 1.9em;">添加</a>
		<form action="addreserve" method="post" style="text-align:left;">

			<%=request.getAttribute("date") %>
			<div class="item" method="get">
				<a style="font-size: 1.2em;">起始时间：</a><input type="time" name="startTime"/>
			</div>
			<div class="item method="get">
				<a style="font-size: 1.2em;">终止时间：</a ><input type="time" name="endTime" />
				<input type="hidden" value="<%=session.getAttribute("teacherId") %>" name=teacherId>
				<input type="hidden" value="<%=session.getAttribute("teachername") %>" name=teacherName>
				<input type="hidden" value="<%=request.getAttribute("date") %>" name=date>				
			</div>
			<br/>
			<br/>
			<input type="submit" class="submit" style="margin-top:0px;" value="发布" />
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