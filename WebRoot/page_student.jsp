<%@ page language="java" import="java.*,webAction.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>
<%@page import="db.*" %>
<%@page import="webAction.*" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<base href="<%=basePath%>">
  <div align="center">
  	<font size=10>
  		All Reserves
  	</font>
  	<br/>
  	<font size=5>
  	<table border="1">
  		<tr>
  			<td>TeacherName</td>
  			<td>StartTime</td>
  			<td>EndTime</td>
  			<td>Reserve</td>
  		</tr>
  		
  		<%
  		LoginAction t=new LoginAction();
  		String s = (String)session.getAttribute("currentstu");
  			int tmp=t.getCurrentStu(s);
  		%>
  		<%=tmp %>
  		<s:iterator value="List" var="Reverse" status="sta">
  			<tr>
  				<td><s:property value="#Reverse.TeacherName"/></td>
  				<td><s:property value="#Reverse.StartTime"/></td>
  				<td><s:property value="#Reverse.EndTime"/></td>
  				<td><a href="jdbc/reservereserve?stuid=<%=tmp%>&reserveid=<s:property value="#Reverse.ReserveId"/>">Reserve</a>
  			</tr>
  		</s:iterator>
  		
  	</table>
  	<a href=database_student.jsp>返回</a><br>
  	</font>
  	</ul>
  </div>
	
</html>








