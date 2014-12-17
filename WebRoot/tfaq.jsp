<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

<meta charset="utf-8" />

<title>Metronic | Extra - FAQ</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

<link href="media/css/style.css" rel="stylesheet" type="text/css" />

<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />

<link href="media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />

<!-- END GLOBAL MANDATORY STYLES -->

<link rel="shortcut icon" href="media/image/favicon.ico" />

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

				<a class="brand" href="<%=basePath %>chat/tviewunreadchat.action">

				<img src="media/image/logo.png" alt="logo" />

				</a>

				<!-- END LOGO -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed"
					data-toggle="collapse" data-target=".nav-collapse"> <img
					src="media/image/menu-toggler.png" alt="" />

				</a>

				<!-- END RESPONSIVE MENU TOGGLER -->

				<!-- BEGIN TOP NAVIGATION MENU -->

				<ul class="nav pull-right">

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="<%=basePath%>media/image/avatar1_small.jpg" /> <span
							class="username"><%=session.getAttribute("teachername")%></span>

							<i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="<%=basePath%>t_calendar.jsp"><i
									class="icon-calendar"></i> 我的日程</a></li>

							<li class="divider"></li>

							<li><a href="<%=basePath%>ReserveSlide.html"><i
									class="icon-key"></i> 退出</a></li>

						</ul></li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU -->

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container row-fluid">

		<!-- BEGIN SIDEBAR -->

		<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->

			<ul class="page-sidebar-menu">

				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				</li>

				<li></li>

				<li class="start "><a
					href="<%=basePath%>chat/tviewunreadchat.action"> <i
						class="icon-home"></i> <span class="title">本站简介</span>

				</a></li>

				<li class=""><a href="t_calendar.jsp"> <i
						class="icon-table"></i> <span class="title">我的日历</span> <span
						class="arrow "></span>

				</a></li>

				<li class=""><a href="<%=basePath%>jdbc/tviewprofile?ttid=<%=session.getAttribute("teacherId") %>"> <i
						class="icon-file-text"></i> <span class="title">我的信息</span> <span
						class="arrow "></span>

				</a></li>

				<li class=""><a href="<%=basePath%>chat/tshowallchat"> <i
						class="icon-user"></i> <span class="title">畅所欲言</span> <span
						class="arrow "></span>

				</a></li>

				<li><a href="javascript:;"> <i class="icon-gift"></i> <span
						class="title">小伙伴们</span> <span class="arrow"></span>

				</a></li>

				<li class="active "><a href="#"> <i
						class="icon-folder-open"></i> <span class="title">关于我们</span> <span
						class="selected"></span> <span class="arrow open"></span>

				</a></li>

				<li class=""><a href="<%=basePath%>tcontact.jsp"> <i
						class="icon-phone"></i> <span class="title">联系我们</span> <span
						class="arrow "></span>

				</a></li>

			</ul>

			<!-- END SIDEBAR MENU -->

		</div>

		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

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

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default"
										data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label> <span>Layout</span> <select
									class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

								</select>

								</label> <label> <span>Header</span> <select
									class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

								</select>

								</label> <label> <span>Sidebar</span> <select
									class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

								</select>

								</label> <label> <span>Footer</span> <select
									class="footer-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

								</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							关于我们 <small>HitSunday</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a href="<%=basePath %>t_index.jsp">个人主页</a>

								<i class="icon-angle-right"></i></li>

							<li><a href="#">关于我们</a></li>



						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<div class="span3">

							<ul class="ver-inline-menu tabbable margin-bottom-10">

								<li class="active"><a href="#tab_1" data-toggle="tab">

										<i class="icon-briefcase"></i> 网站简介

								</a> <span class="after"></span></li>

								<li><a href="#tab_2" data-toggle="tab"><i
										class="icon-group"></i>开发成员</a></li>

								<li><a href="#tab_3" data-toggle="tab"><i
										class="icon-leaf"></i> Something To say</a></li>


							</ul>

						</div>

						<div class="span9">

							<div class="tab-content">

								<div class="tab-pane active" id="tab_1">

									<div class="accordion in collapse" id="accordion1"
										style="height: auto;">

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion1" href="#collapse_1"> 基本背景： </a>

											</div>

											<div id="collapse_1" class="accordion-body collapse in">

												<div class="accordion-inner">

													MOOC将传统大学教育的优势逐渐剥夺，只剩下一个：师 生的面对面互动。大学四年，师生之间有多少在一起的时光？师
													生之间的互动，不应只在课堂上进行。目前的情形是：学生想认 识教授们，却不敢，或不知道对方何时可以接见他们。教师们应
													该主动一点，主动把自己的零散时间开放出来给学生。</div>

											</div>

										</div>

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion1" href="#collapse_2"> 现实意义： </a>

											</div>

											<div id="collapse_2" class="accordion-body collapse">

												<div class="accordion-inner">

													教师针对自己的可用时间，发布若干时间段，学生可以从 中选择适合自己的一个时间段，提交预约请求。这样，可以让师
													生之间有了更多更加深入的交流沟通，不管是对学生还是老师都 有诸多益处</div>

											</div>

										</div>

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion1" href="#collapse_3"> 用户： </a>

											</div>

											<div id="collapse_3" class="accordion-body collapse">

												<div class="accordion-inner">工大计算机学院的师生（暂定）</div>

											</div>

										</div>

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion1" href="#collapse_4">

													本网站所包含的功能清单 </a>

											</div>

											<div id="collapse_4" class="accordion-body collapse">

												<div class="accordion-inner">

													①支持老师与学生登录，老师可以更新个人资料；<br /> ②支持老师发布自己的空闲时间，以类似日历的形式；<br />
													③支持学生预约空闲时间；<br /> ④支持提醒，距预约时间提前一段时间提醒；<br />
													⑤支持预约,与老师的私信留言；
												</div>

											</div>

										</div>


									</div>

								</div>

								<div class="tab-pane" id="tab_2">

									<div class="accordion in collapse" id="accordion2"
										style="height: auto;">

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion2" href="#collapse_2_1"> 网站结构 </a>

											</div>

											<div id="collapse_2_1" class="accordion-body collapse in">

												<div class="accordion-inner">

													本站采用Struts基于MVC(Model-View-Controller)设计模式的应用构架，组员分工明确</div>

											</div>

										</div>

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion2" href="#collapse_2_2">
													M（Model） </a>

											</div>

											<div id="collapse_2_2" class="accordion-body collapse">

												<div class="accordion-inner">姚童鞋（我们Team中的算法大神 技术总监）</div>

											</div>

										</div>

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion2" href="#collapse_2_3"> V（View）

												</a>

											</div>

											<div id="collapse_2_3" class="accordion-body collapse">

												<div class="accordion-inner">小尹童鞋（UI设计师 项目经理）</div>

											</div>

										</div>

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion2" href="#collapse_2_4">

													C（Contrller） </a>

											</div>

											<div id="collapse_2_4" class="accordion-body collapse">

												<div class="accordion-inner">牟童鞋 连接前台与后台的关键部分，自认为最重要
													:P</div>

											</div>

										</div>


									</div>

								</div>

								<div class="tab-pane" id="tab_3">

									<div class="accordion in collapse" id="accordion3"
										style="height: auto;">

										<div class="accordion-group">

											<div class="accordion-heading">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion3" href="#collapse_3_1"> <font
													face="" size="4px" color="">&nbsp;&nbsp;说实话，这个小网站花费了我们HitSunday不少心血，从无到有，从少到多，都是我们三个人一键一键敲出来的，
														虽说困难重重，但我们的目的很简单，能给大家带来方便就是我们最大的乐趣，当然，也有许多创造的快乐。<br />
														&nbsp;&nbsp;我们这个网站还有诸多问题，希望大家能多多指教<br />
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;——HitSunday全体成员敬上
												</font>

												</a>

											</div>




										</div>

									</div>

								</div>

							</div>

							<!--end span9-->

						</div>

					</div>

					<!-- END PAGE CONTENT-->

				</div>

				<!-- END PAGE CONTAINER-->

			</div>

			<!-- END PAGE -->

		</div>

		<!-- END CONTAINER -->

		<!-- BEGIN FOOTER -->

		<div class="footer">

			<div class="footer-inner">2013 &copy; Metronic by keenthemes.</div>

			<div class="footer-tools">

				<span class="go-top"> <i class="icon-angle-up"></i>

				</span>

			</div>

		</div>

		<!-- END FOOTER -->

		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

		<!-- BEGIN CORE PLUGINS -->

		<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

		<script src="media/js/jquery-migrate-1.2.1.min.js"
			type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="media/js/jquery-ui-1.10.1.custom.min.js"
			type="text/javascript"></script>

		<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

		<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

		<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

		<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

		<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

		<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>

		<!-- END CORE PLUGINS -->

		<script src="media/js/app.js"></script>

		<script>
			jQuery(document).ready(function() {

				App.init();

			});
		</script>

		<!-- END JAVASCRIPTS -->

		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push([ '_setAccount', 'UA-37564768-1' ]);
			_gaq.push([ '_setDomainName', 'keenthemes.com' ]);
			_gaq.push([ '_setAllowLinker', true ]);
			_gaq.push([ '_trackPageview' ]);
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://'
						: 'http://')
						+ 'stats.g.doubleclick.net/dc.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>
</body>

<!-- END BODY -->

</html>