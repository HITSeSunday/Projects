<%@ page language="java" import="java.util.*,model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Teacher> listt = (List<Teacher>)session.getAttribute("listt");
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>
<!-- <% 
  if(request.getAttribute("checkunread")=="1") 
  { 
  response.sendRedirect("chat/sviewunreadchat.action"); 
   } 
  
  %>--> 

	<meta charset="utf-8" />

	<title>我的主页</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="<%=basePath %>media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="<%=basePath %>media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES --> 

	<link href="<%=basePath %>media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

	<link href="<%=basePath %>media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath %>media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

	<link href="<%=basePath %>media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="<%=basePath %>media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">

			<div class="container-fluid">

				<!-- BEGIN LOGO -->

				<a class="brand" href="#"> <img
					src="<%=basePath %>media/image/logo.png" alt="logo" />

				</a>

				

				</a>

				<!-- END LOGO -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

				<img src="<%=basePath %>media/image/menu-toggler.png" alt="" />

				</a>          

				<!-- END RESPONSIVE MENU TOGGLER -->            

				<!-- BEGIN TOP NAVIGATION MENU -->              

				<ul class="nav pull-right">

					<!-- BEGIN INBOX DROPDOWN -->

					<li class="dropdown" id="header_inbox_bar">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<i class="icon-envelope"></i>

						<span class="badge"><s:property value="list.size()" /></span>

						</a>

						<ul class="dropdown-menu extended inbox">

							<li>

								<p>消息查收</p>

							</li>
<s:iterator value="list" var="Chat" status="sta">
<tr>
							<li>

								<a href="sreadchat?currentChat.tid=<s:property value="#Chat.tid" />&currentChat.sid=<s:property value="#Chat.sid" />&currentChat.writer=<s:property value="#Chat.writer" />">

								<span class="photo"><img src="<%=basePath %>media/image/avatar1.jpg" alt="" /></span>

								<span class="subject">

								<span class="from"><td><s:property value="#Chat.writer" /></td></span>

								<span class="time"><td><s:property value="#Chat.mdateandtime" /></td></span>

								</span>

								<span class="message">

								<td><s:property value="#Chat.message" /></td>

								</span>  

								</a>

							</li>
							 </tr></s:iterator>


						</ul>

					</li>

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

					<li class="dropdown" id="header_task_bar">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<i class="icon-tasks"></i>

						<span class="badge"><s:property value="lists.size()"/></span>

						</a>

						<ul class="dropdown-menu extended tasks">

							<li>

								<p>即将发生的事</p>

							</li>

							<s:iterator value="lists" var="sb" status="std">
								<tr>
									<li><a href="#"> <span class="task"> <span
												class="desc">
												<td><s:property value="#sb.date" /></td>
													<td><s:property value="#sb.startTime" /></td>
													<td>已预约<s:property value="#sb.teacherName" /></td>
												
											</span> 

										</span>

									</a></li>
								</tr>
							</s:iterator>


						</ul>

					</li>

					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<img alt="" src="<%=basePath %>media/image/avatar3_small.jpg" />

						<span class="username"><%=session.getAttribute("studentname") %></span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="<%=basePath %>s_calendar.jsp"><i class="icon-calendar"></i> 我的预约</a></li>

							<li class="divider"></li>

							<li><a href="<%=basePath %>ReserveSlide.html"><i class="icon-key"></i> 退出登录</a></li>

						</ul>

					</li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU --> 

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container">

		<!-- BEGIN SIDEBAR -->

		<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->        

			<ul class="page-sidebar-menu">

				<li>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					<div class="sidebar-toggler hidden-phone"></div>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				</li>


				<li class="start active ">

					<a href="#">

					<i class="icon-home"></i> 

					<span class="title">本站简介</span>
					
					<span class="selected"></span>

					</a>

				</li>

					

				<li class="">

					<a href="javascript:;">

					<i class="icon-bookmark-empty"></i> 

					<span class="title">教师预约</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

<s:iterator value="#session.listt" var="ssb" status="std">
<td>
						<li >

							<tr><a href="<%=basePath %>jdbc/sviewprofile?ttid=<s:property value="#ssb.teacherid" />"><tr>

							<tr><s:property value="#ssb.teachername" /></tr></a>

						</li>
</td>
</s:iterator>
					</ul>

				</li>

				<li class="">

					<a href="<%=basePath %>s_calendar.jsp">

					<i class="icon-table"></i> 

					<span class="title">我的预约</span>

					<span class="arrow "></span>

					</a>

				</li>

				<li class="">

					<a href="<%=basePath %>chat/sshowallchat">

					<i class="icon-user"></i> 

					<span class="title">畅所欲言</span>

					<span class="arrow "></span>

					</a>

					

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-gift"></i> 

					<span class="title">小伙伴们</span>

					<span class="arrow "></span>

					</a>


				</li>

				

					
				<li>

					<a href="<%=basePath %>sfaq.jsp">

					<i class="icon-folder-open"></i> 

					<span class="title">关于我们</span>

					<span class="arrow "></span>

					</a>

					
				</li>

				<li class="">

					<a href="<%=basePath %>scontact.jsp">

					<i class="icon-phone"></i> 

					<span class="title">联系我们</span>

					<span class="arrow "></span>

					</a>



					</ul>

				</li>

			</ul>

			<!-- END SIDEBAR MENU -->

		</div>

		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->


			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>主题</p>

								<ul class="inline">

									<li class="color-black current color-default" data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label>

									<span>布局</span>

									<select class="layout-option m-wrap small">

										<option value="fluid" selected>全屏</option>

										<option value="boxed">半窗口</option>

									</select>

								</label>

							

								

							

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->    

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							欢迎回来 <small>上次登录：<%=session.getAttribute("srecent") %></small>

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="#">个人主页</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li><a href="#">本站简介</a></li>

							<li class="pull-right no-text-shadow">

								<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">

									<i class="icon-calendar"></i>

									<span></span>

									<i class="icon-angle-down"></i>

								</div>

							</li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<div id="dashboard">

					<!-- BEGIN DASHBOARD STATS -->

					

					<!-- END DASHBOARD STATS -->

					<iframe src="<%=basePath %>ReserveSlide1.html" id="frame1" frameborder="0" width="1100" height="900"></iframe>


				</div>

			</div>

			<!-- END PAGE CONTAINER-->    

		</div>

		<!-- END PAGE -->

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->


	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="<%=basePath %>media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="<%=basePath %>media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="<%=basePath %>media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="<%=basePath %>media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="<%=basePath %>media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="<%=basePath %>media/js/jquery.vmap.js" type="text/javascript"></script>   

	<script src="<%=basePath %>media/js/jquery.vmap.russia.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.vmap.world.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.vmap.europe.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.vmap.germany.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.vmap.usa.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  

	<script src="<%=basePath %>media/js/jquery.flot.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.flot.resize.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.pulsate.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/date.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/daterangepicker.js" type="text/javascript"></script>     

	<script src="<%=basePath %>media/js/fullcalendar.min.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/jquery.sparkline.min.js" type="text/javascript"></script>  

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="<%=basePath %>media/js/app.js" type="text/javascript"></script>

	<script src="<%=basePath %>media/js/index.js" type="text/javascript"></script>        

	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    

		   App.init(); // initlayout and core plugins

		   Index.init();

		   Index.initJQVMAP(); // init index page's custom scripts

		   Index.initCalendar(); // init index page's custom scripts

		   Index.initCharts(); // init index page's custom scripts

		   Index.initChat();

		   Index.initMiniCharts();

		   //Index.initDashboardDaterange();

		   Index.initIntro();

		});

	</script>

	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>