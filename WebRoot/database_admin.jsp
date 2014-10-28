<%@page import="java.sql.*"%>
<%@page import="db.DbPool"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<body>
    <base href="<%=basePath%>">
	<center>
		<s:form action="jdbc/all" method="post">
			显示所有
			<s:submit value="所有图书" />
		</s:form>
<input type="button" onclick="window.location.href='Addreserve.jsp'" value="增加记录">
<input type="button" onclick="window.location.href='Deletereserve.jsp'" value="删除记录">

	</center>
	
</body>
</html>
