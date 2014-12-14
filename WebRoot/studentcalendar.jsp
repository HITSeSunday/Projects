<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentcalendar.jsp' starting page</title>
    
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
    <s:iterator value="lists" var="Reverse" status="sta">
  			<tr>
  				<td><s:property value="#Reverse.StartTime"/></td>
  				<td><s:property value="#Reverse.EndTime"/></td>
  				<td><s:property value="#Reverse.date"/></td>
  				<td><a href="jdbc/cancelreserve?reserveid=<s:property value="#Reverse.ReserveId"/>">取消预约</a></td>
  				<td><a href="chat/sviewchatpersonnal?currentChat.tid=<s:property 
  				value="#Reverse.teacherId"/>&currentChat.sid=<%=session.getAttribute("studentid") %>">和老师聊天</a></td>
  			</tr>
  		</s:iterator>
  		<s:debug></s:debug>
  </body>
</html>
