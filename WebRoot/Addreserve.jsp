<%@ page language="java" import="java.util.*,webAction.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Addreserve.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	<% 
  		LoginAction t=new LoginAction();
  		String teachername=(String)session.getAttribute("currenttea");
  		int tt=t.getCurrentTea(teachername);
  	%>
  	<form action="jdbc/addreserve" >

           	
        <input type="text" name="teacherName" value="<%=teachername%>" style="visibility:hidden">
    	<input type="text" name="teacherId" value="<%=tt%>" style="visibility:hidden">
   		<input type="text" name="startTime">starttime<br>
   		<input type="text" name="endTime">endtime<br>
   		<input type="text" name="Date">date<br>
    	<input type="submit" value="确定" >

    </form>
  </body>
</html>
