<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<frameset cols="550,*">

  <frame src="./indext.jsp">
  <frame src="./blankt.html" name="showframe">
<frame src="./3.html" name="showframe">
</frameset>

</html>