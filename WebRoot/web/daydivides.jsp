<%@ page language="java" import="java.util.*,webAction.*,model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Premium Pricing Table</title>
<link rel="stylesheet" href="<%=basePath%>web/css/yellow/master.css" type="text/css" media="screen" />

<script type="text/javascript" src="<%=basePath%>web/js/jquery-1.4.2.min.js"></script>
<script src="js/config.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
<script src="js/PT_Sans_400.font.js" type="text/javascript"></script>
<!--[if IE 6]>
	<script type='text/javascript' src='js/DD_belatedPNG_0.0.8a-min.js'></script>
	<script>DD_belatedPNG.fix('img');</script>
<![endif]-->
</head>
<body>
<div id="wrap">
<!-- <img class="rotate" src="images/starburst.png" alt="CSS3 Table - Clean, learn code!"/> -->
<div id="tableWrap">
<table id="premiumTable" cellspacing="0" summary="Premium Table Template">
<caption>Premium Table</caption>
<thead>
  <tr id="labels">
    <th scope="col" abbr="Hosting - Price Plans" class="priceLabels topLeft"><h2>Teacher Name</h2></th>
    <th scope="col" abbr="Basic" class="priceLabels"><h2>Start Time</h2></th>
    <th scope="col" abbr="Plus" class="priceLabels"><h2>Over Time</h2></th>
	<th scope="col" abbr="Premium" class="priceLabels topRight"><h2>Available</h2></th>
	<th scope="col" class="priceLabels topRight"><h2>Reserve</h2></th>
 </tr>
 </thead>
<!--<tfoot>
  <tr>
    <th scope="row" abbr="Sign up" class="bottomLeft empty"></th>
    <td><a class="signUpBtn" href="" title="Sign Up">Sign Up</a></td>
	<td ><a class="signUpBtn" href="" title="Sign Up">Sign Up</a></td>
	<td class="bottomRight" ><a class="signUpBtn" href="" title="Sign Up">Reserive</a></td>
  </tr>
</tfoot>-->
<tbody>	
  		<%
  		LoginAction t=new LoginAction();
  		String s = (String)session.getAttribute("currentstu");
  			int tmp=t.getCurrentStu(s);
  		%>

  		<s:iterator value="List" var="Reverse" status="sta">
  			<tr>
  				<td scope="row" abbr="Bandwidth" class="spec"><s:property  value="#Reverse.TeacherName"/></td>
  				<td><s:property value="#Reverse.StartTime"/></td>
  				<td><s:property value="#Reverse.EndTime"/></td>
  				<td><s:property value="#Reverse.ss==0"/></td>
  				<td><a href="reservereserve?stuid=<%=tmp%>&reserveid=<s:property value="#Reverse.ReserveId"/>">预约</a>
  			</tr>
  		</s:iterator>
 
</tbody>
</table>
</div>
</div>

</body>
</html>
