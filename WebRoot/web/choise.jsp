<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
body
{
	background-image:url('web/photos/announce.jpg');
	background-size:cover;
}
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>choise</title>
</style>
</head>
<body>

	<h1 text-align: center;>欢迎来到预约系统
	<div style="left : 250px;top:100px;position:fixed;z-index:1;border-style: solid;
  border-width: 5px;
  border-color: red;">
		<img src="web/photos/teacheran.jpg" width="300" height="200" />
	</div>
	
	<div style="left : 750px;top:100px;position:fixed;z-index:1;border-style: solid;
  border-width: 5px;
  border-color: red;">
		<img src="web/photos/studentlf.jpg" width="300" height="200" />
	</div>
	
	<form style="left : 380px;top:350px;position:fixed;z-index:1;">
	<input type=button name="教师入口" value="教师入口"  onclick="location='web/t_login.jsp'">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type=button name="学生入口" value="学生入口"  onclick="location='web/s_login.jsp'">
	</form>
	
</body>

</html>
	

