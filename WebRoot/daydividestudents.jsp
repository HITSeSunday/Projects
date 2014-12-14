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

<script type="text/javascript">
	var isindex = true;
	var visitor = true;
</script>

<link rel="stylesheet" href="<%=basePath %>css/black/master.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.2.min.js"></script>
<script src="<%=basePath %>js/config.js" type="text/javascript"></script>
<script src="<%=basePath %>js/cufon-yui.js" type="text/javascript"></script>
<script src="<%=basePath %>js/ChunkFive_400.font.js" type="text/javascript"></script>
<script src="<%=basePath %>js/PT_Sans_400.font.js" type="text/javascript"></script>
</head>
<body>
<body>
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
    <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>老师姓名</strong></div></th>
    <th scope="col" class="priceLabels"><div style="font-size: 1.2em;"><strong>取消预约</strong></div></th>
	<th scope="col" abbr="Premium" class="priceLabels topRight"><div style="font-size: 1.2em;"><strong>聊天</strong></div></th>
 </tr>
 </thead>	

<tbody>
	<s:iterator value="lists" var="Reverse" status="sta">
		<tr>
			<td><s:property value="#Reverse.StartTime" /></td>
			<td><s:property value="#Reverse.EndTime" /></td>			
			<td><s:property value="#Reverse.teacherName" /></td>
			
			<td><a href="cancelreserve?reserveId=<s:property value="#Reverse.ReserveId"/>
			&date=<%=request.getParameter("date") %>&ss=<%=session.getAttribute("studentid") %>">取消</a></td>
			<td><a href="<%=basePath %>chat/sviewchatpersonnalsmall?currentChat.tid=<s:property 
  				value="#Reverse.teacherId"/>&currentChat.sid=<%=session.getAttribute("studentid") %>">聊天</a>	
		</tr>
	</s:iterator>
	</tbody>
	</table>
	</div>


	


</body>
</html>