<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<frameset rows="20%,80%">
<frame src="./clock.html">
<frameset cols="500,*">

  <frame src="./indexs.jsp">
  <frame src="./daydivides.jsp" name="showframe">
</frameset>
</frameset>
</html>