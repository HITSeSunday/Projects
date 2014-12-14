<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>calendar</title>
<link type="text/css" href="<%=basePath%>css/daydivide.css"
	rel="stylesheet" />
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/spig.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/spigPet.css"
	type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.min.js"></script>

<link rel="stylesheet" href="<%=basePath %>css/black/master.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.2.min.js"></script>
<script src="<%=basePath %>js/config.js" type="text/javascript"></script>
<script src="<%=basePath %>js/cufon-yui.js" type="text/javascript"></script>
<script src="<%=basePath %>js/ChunkFive_400.font.js" type="text/javascript"></script>
<script src="<%=basePath %>js/PT_Sans_400.font.js" type="text/javascript"></script>
</head>
<body>
<body>
<Script Language="JavaScript">
var a="<%=session.getAttribute("reserveerror") %>";
alert(a);
</Script>
<%=request.getAttribute("date") %>

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
    <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>学生姓名</strong></div></th>
    <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>预约</strong></div></th>
	<th scope="col" abbr="Premium" class="priceLabels topRight"><div style="font-size: 1.2em;"><strong>聊天</strong></div></th>
 </tr>
 </thead>	

<tbody>
	<s:iterator value="list" var="Reverse" status="sta">
		<tr>
			<td><s:property value="#Reverse.StartTime" /></td>
			<td><s:property value="#Reverse.EndTime" /></td>			
			<td><s:property value="#Reverse.ssname" /></td>
			<td><a style="text-decoration : none" href="<%=basePath %>ReserveSmall.jsp?reserveid=<s:property value="#Reverse.ReserveId"/>
			&stuid=<%=session.getAttribute("studentid") %>&date=<%=request.getAttribute("date") %>
			&teacherId=<%=request.getAttribute("teacherId") %>&starttime=<s:property value="#Reverse.StartTime" />
			&endtime=<s:property value="#Reverse.EndTime" />"> 预约</a></td>
			<td><a style="text-decoration : none" href="<%=basePath %>chat/sviewchatpersonnalsmall?currentChat.tid=<s:property 
  				value="#Reverse.teacherId"/>&currentChat.sid=<%=session.getAttribute("studentid") %>">和老师聊天</a></td>
  				
				
		</tr>
	</s:iterator>
	</tbody>
	</table>
	</div>



	<div id="show" class="add">
		<a  style="cursor: pointer;" title="添加空闲时间" onclick="hidediv();"class="r">X</a>
		<a style="font-size: 1.9em;">选择时间</a>
		<form action="reservereserve" method="get" style="text-align:left;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=request.getAttribute("date") %>
			<div class="item" method="get">
				<a style="font-size: 1.2em;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;起始时间：</a><input type="time" name="startTime" value="<s:property value="#Reverse.StartTime" />"/>
				<a style="font-size: 1.2em;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;终止时间：</a ><input type="time" name="endTime" value="<s:property value="#Reverse.EndTime" />"/>
				<input type="hidden" value="<s:property value="#Reverse.reserveId" />" name="reserveId">	
				<input type="hidden" value="<s:property value="#Reverse.date" />" name="date">	
				<input type="hidden" value="<s:property value="#Reverse.teacherId" />" name="teacherId">
			</div>
			<br/>
			<br/>
			<input type="submit" class="submit" style="margin-left:105px;" value="预约" />
		</form>
	</div>
	
	
	

</div>
</body>
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
</html>