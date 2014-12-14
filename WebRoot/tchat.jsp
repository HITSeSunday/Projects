<%@ page language="java" import="java.util.*,model.Chat"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>


<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

<meta charset="utf-8" />

<title>chats</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="../media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="../media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />

<link href="../media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="../media/css/style-metro.css" rel="stylesheet"
	type="text/css" />

<link href="../media/css/style.css" rel="stylesheet" type="text/css" />

<link href="../media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="../media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />

<link href="../media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />

<link href="../media/css/jquery.fancybox.css" rel="stylesheet" />

<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->

<link href="../media/css/blog.css" rel="stylesheet" type="text/css" />

<!-- END PAGE LEVEL STYLES -->

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

				<a class="brand" href="../t_index.jsp"> 工大约约约 </a>

				<!-- END LOGO -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed"
					data-toggle="collapse" data-target=".nav-collapse"> <img
					src="media/image/menu-toggler.png" alt="" />

				</a>

				<!-- END RESPONSIVE MENU TOGGLER -->

				<!-- BEGIN TOP NAVIGATION MENU -->

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->



					<!-- END NOTIFICATION DROPDOWN -->


					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="<%=basePath %>media/image/avatar1_small.jpg" /> <span
							class="username"><%=session.getAttribute("teachername") %></span>

							<i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="extra_profile.html"><i class="icon-user"></i>基本信息</a></li>

							<li><a href="../t_calendar.jsp"><i class="icon-calendar"></i>
									我的日程</a></li>

							<li class="divider"></li>

							<li><a href="../ReserveSlide.html"><i class="icon-key"></i>
									退出登录</a></li>

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



				<li class="start "><a
					href="<%=basePath %>chat/tviewunreadchat.action"> <i
						class="icon-home"></i> <span class="title">本站简介</span>

				</a></li>
				<li class=""><a href="../t_calendar.jsp"> <i
						class="icon-table"></i> <span class="title">我的日历</span> <span
						class="arrow "></span>

				</a></li>
				<li class=""><a href="<%=basePath%>tprofile.jsp"> <i
						class="icon-file-text"></i> <span class="title">我的信息</span> <span
						class="arrow "></span>

				</a></li>
				<li class="active "><a href=""> <i class="icon-user"></i> <span
						class="title">畅所欲言</span> <span class="selected"></span> <span
						class="arrow open"></span>

				</a></li>

				<li class=""><a href="javascript:;"> <i class="icon-gift"></i>

						<span class="title">小伙伴们</span> <span class="arrow "></span>

				</a></li>



				<li><a href="<%=basePath %>tfaq.jsp"> <i
						class="icon-folder-open"></i> <span class="title">关于我们</span> <span
						class="arrow "></span>

				</a></li>

				<li class=""><a href="<%=basePath %>tcontact.jsp"> <i
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

								<p>主题</p>

								<ul class="inline">

									<li class="color-black current color-default"
										data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label> <span>布局</span> <select
									class="layout-option m-wrap small">

										<option value="fluid" selected>全屏</option>

										<option value="boxed">半窗口</option>

								</select>

								</label>







							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							畅所欲言<small>我们的目标是没有和谐！</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a
								href="<%=basePath %>chat/tviewunreadchat.action">个人主页</a> <i
								class="icon-angle-right"></i></li>

							<li><a href="#">畅所欲言</a></li>

							<li class="pull-right no-text-shadow">

								<div id="dashboard-report-range"
									class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive"
									data-tablet="" data-desktop="tooltips" data-placement="top"
									data-original-title="Change dashboard date range">

									<i class="icon-calendar"></i> <span></span> <i
										class="icon-angle-down"></i>

								</div>

							</li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>
			</div>

			<!-- END PAGE HEADER-->

			<!-- BEGIN PAGE CONTENT-->

			<div class="row-fluid">

				<div class="span8">

					<!-- BEGIN PORTLET-->

					<div class="portlet">

						<div class="portlet-title line">

							<div class="caption">
								<i class="icon-comments"></i>Chats
							</div>

							<div class="tools">

								<a href="" class="collapse"></a> <a href="#portlet-config"
									data-toggle="modal" class="config"></a> <a href=""
									class="reload"></a> <a href="" class="remove"></a>

							</div>

						</div>

						<div class="portlet-body" id="chats">

							<div class="scroller" data-height="435px" data-always-visible="1"
								data-rail-visible1="1">

								<ul class="chats">
									<s:iterator value="list" var="curChat" status="sta">
										<tr>
											<input type="hidden" id="1"
												value=<s:property value="list[1]"/>>
											<li class="in">

												<div class="message">

													<span class="arrow"></span> <a href="#" class="name"><td><s:property
																value="#curChat.writer" /></td></a> <span class="datetime"><td><s:property
																value="#curChat.mdateandtime" /></td></span> <span class="body">

														<td><s:property value="#curChat.message" /></td>

													</span>

												</div>

											</li>
										</tr>
									</s:iterator>
								</ul>

							</div>
							<form method="post" action="tsendallchat">
								<div class="chat-form">

									<div class="input-cont">

										<input class="m-wrap" type="text"
											placeholder="Type a message here..."
											name="currentChat.message" /> <input type="hidden"
											name="currentChat.tid"
											value="<%=session.getAttribute("teacherId") %>" /> <input
											type="hidden" name="currentChat.writer"
											value="<%=session.getAttribute("teachername") %>" />
									</div>

									<div class="btn-cont">

										<span class="arrow"></span> <input type="submit" value="发送"
											class="btn blue icn-only"></input>

									</div>

								</div>
							</form>
						</div>

					</div>

					<!-- END PORTLET-->

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

		<div class="footer-inner">2014 &copy; HitSunday</div>

		<div class="footer-tools">

			<span class="go-top"> <i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="../media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="../media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="../media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="../media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

	<script src="../media/js/jquery.slimscroll.min.js"
		type="text/javascript"></script>

	<script src="../media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="../media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="../media/js/jquery.uniform.min.js" type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<script src="../media/js/app.js"></script>

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

</html>