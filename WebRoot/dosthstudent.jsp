<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 某博客悬浮在网站右侧的带文字提示小人代码 </title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/spigs.js"></script>
<link rel="stylesheet" href="css/spigPet.css" type="text/css"/>
<script type="text/javascript">
var isindex = true;
var visitor = true;
</script>
</head>
<body style="height:1000px;">
<script type="text/javascript" ></script>
<div style=" margin:100px auto; width:990px; height:500px;">
</div>
<!--小人只在首页显示 start*-->
<div id="spig" class="spig">
    <div id="message">正在加载中……</div>
    <div id="mumu" class="mumu"></div>
</div>
<!--小人end*-->
<h2>aaa</h2>
</body>
</html>