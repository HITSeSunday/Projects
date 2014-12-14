<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
<style type="text/css">
.submit {
	display: inline-block;
	padding: 0.1em;
	height: 1.5em;
	line-height: 1.0em;
	font-size: 1.5em;
	color: #fff;
	text-align: center;
	border: 1px solid #666;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: inset 0 0 3px #fff;
	box-shadow: inset 0 0 3px #fff;
	background: #568901;
	background: -webkit-linear-gradient(270deg,#ADADAD,#4F4F4F);
	background: -moz-linear-gradient(270deg,  #ADADAD,#4F4F4F);
	background: -o-linear-gradient(270deg,  #ADADAD,#4F4F4F);
	background: -ms-linear-gradient(270deg, #ADADAD,#4F4F4F);
	background: linear-gradient(180deg,#ADADAD,#4F4F4F);
	white-space:nowrap;
	display:inline-block;
	width: 50px;

}.back {
	display: inline-block;
	padding: 0.1em;
	height: 1.5em;
	line-height: 1.0em;
	font-size: 1.5em;
	color: #fff;
	text-align: center;
	border: 1px solid #666;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: inset 0 0 3px #fff;
	box-shadow: inset 0 0 3px #fff;
	background: #568901;
	background: -webkit-linear-gradient(270deg,#ADADAD,#4F4F4F);
	background: -moz-linear-gradient(270deg,  #ADADAD,#4F4F4F);
	background: -o-linear-gradient(270deg,  #ADADAD,#4F4F4F);
	background: -ms-linear-gradient(270deg, #ADADAD,#4F4F4F);
	background: linear-gradient(180deg,#ADADAD,#4F4F4F);
	white-space:nowrap;
	display:inline-block;
	width: 50px;

}
</style>
</head>
  <body>
   <div id="show" class="add" style="display:block">
		<a style="font-size: 1.9em;">选择时间</a>
		<form action="jdbc/reservereserve" method="get" style="text-align:left;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=request.getParameter("date") %>
			<div class="item" method="get">
				<a style="font-size: 1.2em;">起始时间：</a><input type="time" name="startTime" value="<%=request.getParameter("starttime") %>"/>
				<br/><a style="font-size: 1.2em;">终止时间：</a ><input type="time" name="endTime" value="<%=request.getParameter("endtime") %>"/>
				<input type="hidden" value="<%=request.getParameter("reserveid") %>" name="reserveId">	
				<input type="hidden" value="<%=request.getParameter("date") %>" name="date">	
				<input type="hidden" value="<%=request.getParameter("teacherId") %>" name="teacherId">
			</div>
			<br/>
			<br/>
			<input type="submit" class="submit" style="margin-left:35px;" value="预约" />
			<button class="back"  type="button"  style="margin-left:65px" onclick="location.href='javascript:history.go(-1);'">返回</button>
		</form>
	</div>
  </body>
</html>
