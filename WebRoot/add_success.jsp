<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_success.jsp' starting page</title>
    
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
    <!--  <div id="background-img"><img class="append_image" src="http://m2.img.srcdd.com/farm5/d/2014/1017/00/FF205B8E198DC9BBEFFE5F4A77C8B79E_ORIG_1200_485.jpeg"></div><div id="background-img"><img class="append_image" src="http://m2.img.srcdd.com/farm5/d/2014/1017/00/FF205B8E198DC9BBEFFE5F4A77C8B79E_ORIG_1200_485.jpeg"></div>
  -->Success!
   <a href=database_admin.jsp>back</a><br>
  </body>
</html>
