<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>
<%@page import="db.*" %>
<%@taglib uri="/struts-tags" prefix="s"%>

<html>

  <div align="center">
  	<font size=10>
  		All Reserves
  	</font>
  	<br/>
  	<font size=5>
  	<table border="1">
  		<tr>
  			<td>TeacherName</td>
  			<td>ClassName</td>
  			<td>Place</td>
  			<td>StartTime</td>
  			<td>EndTime</td>
  		</tr>
  	
  		<s:iterator value="List" var="Reverse" status="sta">
  			<tr>
  				<td><s:property value="#Reverse.TeacherName"/></td>
  				<td><s:property value="#Reverse.ClassName"/></td>
  				<td><s:property value="#Reverse.Place"/></td>
  				<td><s:property value="#Reverse.StartTime"/></td>
  				<td><s:property value="#Reverse.EndTime"/></td>
  			</tr>
  		</s:iterator>
  		
  	</table>
  	<a href=index.jsp>返回</a><br>
  	</font>
  	</ul>
  </div>
	
</html>








