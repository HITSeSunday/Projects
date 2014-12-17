<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>工大师生预约系统</title>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<link rel="stylesheet" href="images/css/style.css" />
<script type='text/javascript' src='images/js/modernizr.min.js?ver=2.6.1'></script>
<script type='text/javascript' src='<%=basePath %>media/js/jquery.backstretch.min.js'></script>
<script src="<%=basePath %>media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="<%=basePath %>media/js/jquery.validate.min.js" type="text/javascript"></script>
<script type='text/javascript'>

/* <![CDATA[ */
var CSSettings = {"pluginPath":"images"};
/* ]]> */
</script>

<script type='text/javascript' src='images/js/cute.slider.js?ver=2.0.0'></script>
<script type='text/javascript' src='images/js/cute.transitions.all.js?ver=2.0.0'></script>
<style type="text/css">
.submit {
	display: inline-block;
	padding: 0 1em;
	height: 2.5em;
	line-height: 2.5em;
	font-size: 1.5em;
	color: #fff;
	text-align: center;
	border: 1px solid #666;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: inset 0 0 3px #fff;
	box-shadow: inset 0 0 3px #fff;
	background: #568901;
	background: -webkit-linear-gradient(270deg,#ADADAD,#4F4F4F);
	background: -moz-linear-gradient(270deg,  #ADADAD,#4F4F4F);
	background: -o-linear-gradient(270deg,  #ADADAD,#4F4F4F);
	background: -ms-linear-gradient(270deg, #ADADAD,#4F4F4F);
	background: linear-gradient(180deg,#ADADAD,#4F4F4F);
	white-space:nowrap;
	display:inline-block;
	width: 200px;

}
</style>
</head>
<body >

<form>

</form>
<div class="c-860 c-demoslider">
<div id="cuteslider_3_wrapper" class="cs-circleslight">
<div id="cuteslider_3" class="cute-slider" data-width="960" data-height="420" data-overpause="true" style="left : 10px;top:100px;">
<ul data-type="slides">
<li data-delay="5" data-src="10000" data-trans3d="tr6,tr17,tr22,tr23,tr29,tr27,tr32,tr34,tr35,tr53,tr54,tr62,tr63,tr4,tr13,tr45" data-trans2d="tr3,tr8,tr12,tr19,tr22,tr25,tr27,tr29,tr31,tr34,tr35,tr38,tr39,tr41"><img  src="images/001/hit.jpg" width="1200" height="100" data-thumb="images/001/001a.png"><a data-type="video" href="http://player.youku.com/player.php/sid/XNjYyOTU4ODQw/v.swf"></a>
<ul data-type="captions">
<li class="caption_slider2_layer1_sublayer1" data-effect="fade" data-delay="1000">这里有最知名的教授发布空闲时间</li>
<li class="caption_slider2_layer1_sublayer2" data-effect="fade" data-delay="1200">供你预约！</li>
<li class="caption_slider2_layer1_sublayer3" data-effect="fade" data-delay="2300">供你预约！</li>
<li class="caption_slider2_layer1_sublayer4" data-effect="slide" data-delay="2000">现在</li>
<li class="caption_slider2_layer1_sublayer5" data-effect="slide" data-delay="3000">！</li>
<li class="caption_slider2_layer1_sublayer6" data-effect="fade" data-delay="2600">与教授面对面</li>
</ul>
</li>
<li data-delay="5" data-src="5" data-trans3d="tr6,tr17,tr22,tr23,tr26,tr27,tr29,tr32,tr34,tr35,tr53,tr54,tr62,tr63,tr4,tr13" data-trans2d="tr3,tr8,tr12,tr19,tr22,tr25,tr27,tr29,tr31,tr34,tr35,tr38,tr39,tr41"><img  src="images/bg/blank.png" data-src="images/001/005.jpg" data-thumb="images/001/005a.png"><a data-type="video" href="http://player.youku.com/player.php/sid/XMzI0Mzg2OTA0/v.swf"></a>
<ul data-type="captions">
<li class="caption_slider2_layer5_sublayer1" data-effect="fade" data-delay="500">本站的主要服务于计算机学院的师生</li>
<li class="caption_slider2_layer5_sublayer2" data-effect="fade" data-delay="1500">做最好的预约系统</li>
</ul>
</li>
<li data-delay="5" data-src="5" data-trans3d="tr6,tr17,tr22,tr23,tr26,tr27,tr29,tr32,tr34,tr35,tr53,tr54,tr62,tr63,tr4,tr13" data-trans2d="tr3,tr8,tr12,tr19,tr22,tr25,tr27,tr29,tr31,tr34,tr35,tr38,tr39,tr41"><img  src="images/bg/blank.png" data-src="images/001/006.jpg" data-thumb="images/001/006a.jpg">
<ul data-type="captions">
<li class="caption_slider2_layer6_sublayer1" data-effect="fade" data-delay="500">2015</li>
<li class="caption_slider2_layer6_sublayer2" data-effect="fade" data-delay="1000">Year</li>
<li class="caption_slider2_layer6_sublayer3" data-effect="fade" data-delay="1500">HAPPY</li>
<li class="caption_slider2_layer6_sublayer4" data-effect="fade" data-delay="2000">祝大家心想事成</li>
</ul>
</li>
</ul>
<ul data-type="controls">
<li data-type="captions"></li>
<li data-type="link"></li>
<li data-type="video"></li>
<li data-type="slideinfo"></li>
<li data-type="circletimer"></li>
<li data-type="previous"></li>
<li data-type="next"> </li>
<li data-type="bartimer"></li>
<li data-type="slidecontrol" data-thumb="true" data-thumbalign="up"></li>
</ul>
</div>
<div class="cute-shadow" ><img src="images/bg/shadow.png" alt="shadow"></div>
</div>
<p><script type="text/javascript">var cuteslider3 = new Cute.Slider();cuteslider3.setup("cuteslider_3" , "cuteslider_3_wrapper", "images/css/slider-style.css");cuteslider3.api.addEventListener(Cute.SliderEvent.CHANGE_START, function(event) { });cuteslider3.api.addEventListener(Cute.SliderEvent.CHANGE_END, function(event) { });cuteslider3.api.addEventListener(Cute.SliderEvent.WATING, function(event) { });cuteslider3.api.addEventListener(Cute.SliderEvent.CHANGE_NEXT_SLIDE, function(event) { });cuteslider3.api.addEventListener(Cute.SliderEvent.WATING_FOR_NEXT, function(event) { });</script>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="submit" class="submit" height=“2.5em”;><a href="./t_login.jsp"><b>教师入口</b></a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="submit" class="submit" height=“2.5em”;><a href="./s_login.jsp"><b>学生入口</b></a></button>
</div><!-- wrapper -->

</body>
<script src="<%=basePath %>media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="<%=basePath %>media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="<%=basePath %>media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="<%=basePath %>media/js/excanvas.min.js"></script>

	<script src="<%=basePath %>media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="<%=basePath %>media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="<%=basePath %>media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="<%=basePath %>media/js/jquery.validate.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.backstretch.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="<%=basePath %>media/js/app.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/login-soft.js" type="text/javascript"></script>      

	<!-- END PAGE LEVEL SCRIPTS --> 

	<script>

		jQuery(document).ready(function() {     

		  App.init();

		  Login.init();

		});

	</script>
</html>
