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
	background-image:url('./photos/background.jpg');
	background-size:cover;
}


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>r_o_l</title>
</style>
</head>
<body>
				<div style="left : 800px;top:100px;position:fixed;z-index:1;border-style: solid;
  border-width: 5px;
  border-color: red;">
				<img src="./photos/fate.jpg" width="550" height="324" />
				</div>
				<form action="login/teacherregister" >
				<div style="left : 850px;top:200px;position:fixed;z-index:1;">
					用户名<input type="text" name="username" maxlength="50" placeholder="用户名">
			    <br/>
					&nbsp;&nbsp;教师姓名<input type="text" name="teacherName" maxlength="50" placeholder="教师姓名">
				<br/>
					&nbsp;&nbsp;输入密码<input type="password" name="pass1" maxlength="50" placeholder="输入密码">
				<br/>
					&nbsp;&nbsp;确认密码<input type="password" name="pass2" maxlength="50" placeholder="确认密码">
				<br/>
				<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="注册" >
				</div>
					</form>

</body>
</html>