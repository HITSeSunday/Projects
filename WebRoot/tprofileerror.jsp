<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->
<Script Language="JavaScript">
alert("<%=session.getAttribute("tchangeerror") %>");
</Script>
<head>

<meta charset="utf-8" />

<title></title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="<%=basePath%>media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="<%=basePath%>media/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />

<link href="<%=basePath%>media/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />

<link href="<%=basePath%>media/css/style-metro.css" rel="stylesheet"
	type="text/css" />

<link href="<%=basePath%>media/css/style.css" rel="stylesheet"
	type="text/css" />

<link href="<%=basePath%>media/css/style-responsive.css"
	rel="stylesheet" type="text/css" />

<link href="<%=basePath%>media/css/default.css" rel="stylesheet"
	type="text/css" id="style_color" />

<link href="<%=basePath%>media/css/uniform.default.css"
	rel="stylesheet" type="text/css" />

<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->

<link href="<%=basePath%>media/css/bootstrap-fileupload.css"
	rel="stylesheet" type="text/css" />

<link href="<%=basePath%>media/css/chosen.css" rel="stylesheet"
	type="text/css" />

<link href="<%=basePath%>media/css/profile.css" rel="stylesheet"
	type="text/css" />

<!-- END PAGE LEVEL STYLES -->

<link rel="shortcut icon" href="<%=basePath%>media/image/favicon.ico" />
<script>
	function subForm() {

		form1.action = "xxx.html";
		form1.submit();
		//form1为form的id
	}
</script>
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

				<a class="brand" href="<%=basePath %>chat/tviewunreadchat.action"> <img
					src="<%=basePath%>media/image/logo.png" alt="logo" />

				</a>

				<!-- END LOGO -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed"
					data-toggle="collapse" data-target=".nav-collapse"> <img
					src="<%=basePath%>media/image/menu-toggler.png" alt="" />

				</a>

				<!-- END RESPONSIVE MENU TOGGLER -->

				<!-- BEGIN TOP NAVIGATION MENU -->

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->

					f

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="<%=basePath%>media/image/avatar1_small.jpg" /> <span
							class="username"> <%=session.getAttribute("teachername")%></span>
							<i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="#"><i class="icon-user"></i> 我的信息</a></li>

							<li><a href="<%=basePath%>t_calendar.jsp"><i
									class="icon-calendar"></i>我的日历</a></li>

							<li class="divider"></li>

							<li><a href="<%=basePath%>ReserveSlide.html"><i
									class="icon-key"></i> 退出</a></li>

						</ul></li>

					<!-- END  LOGIN DROPDOWN -->

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
					href="<%=basePath%>chat/tviewunreadchat.action"> <i
						class="icon-home"></i> <span class="title">本站简介</span>

				</a></li>
				<li class=""><a href="<%=basePath%>t_calendar.jsp"> <i
						class="icon-table"></i> <span class="title">我的日历</span> <span
						class="arrow "></span>

				</a></li>
				<li class="active "><a href="#"> <i
						class="icon-file-text"></i> <span class="title">我的信息</span> <span
						class="selected"></span> <span class="arrow open"></span>

				</a></li>

				<li class=""><a href="<%=basePath%>chat/tshowallchat"> <i
						class="icon-user"></i> <span class="title">畅所欲言</span> <span
						class="arrow "></span>

				</a></li>

				<li class=""><a href="javascript:;"> <i class="icon-gift"></i>

						<span class="title">小伙伴们</span> <span class="arrow "></span>

				</a></li>




				<li><a href="<%=basePath%>tfaq.jsp"> <i
						class="icon-folder-open"></i> <span class="title">关于我们</span> <span
						class="arrow "></span>

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

							我的信息
							<small>让学生了解你！</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a
								href="<%=basePath%>chat/tviewunreadchat.action">个人主页</a> <i
								class="icon-angle-right"></i></li>

							<li><a href="#">我的信息</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid profile">

					<div class="span12">

						<!--BEGIN TABS-->

						<div class="tabbable tabbable-custom tabbable-full-width">

							<ul class="nav nav-tabs">

								<li class="active"><a href="#tab_1_1" data-toggle="tab">总览</a></li>

								<li><a href="#tab_1_2" data-toggle="tab">详细资料</a></li>

								<li><a href="#tab_1_3" data-toggle="tab">修改我的信息</a></li>



							</ul>

							<div class="tab-content">

								<div class="tab-pane row-fluid active" id="tab_1_1">



									<div class="span9">

										<div class="row-fluid">

											<div class="span8 profile-info">
												<s:iterator value="list" var="teacher" status="sta">
													<td>
														<h1>
															<s:property value="#teacher.teachername" />
														</h1>

														<p>
															<h5><s:property value="#teacher.introduction" /></h5>
														</p>

														<p>
															<a href="#"><s:property value="#teacher.email" /></a>
														</p>
													</td>
												</s:iterator>

											</div>

											<!--end span8-->

											<div class="span4">

												<div class="portlet sale-summary"></div>

											</div>

											<!--end span4-->

										</div>

										<!--end row-fluid-->


									</div>

									<!--end span9-->

								</div>

								<!--end tab-pane-->

								<div class="tab-pane profile-classic row-fluid" id="tab_1_2">

									<div class="span2">
										<img src="<%=basePath%>media/image/profile-img.png" alt="" />
									</div>
									<s:iterator value="list" var="teacher" status="sta">
										<td>
											<ul class="unstyled span10">


												<li><span>姓名:</span>
												<td><s:property value="#teacher.teachername" /></td></li>

												<li><span>任教科目:</span>
												<td><s:property value="#teacher.classname" /></td></li>

												<li><span>Email:</span <a href="#"><td><s:property value="#teacher.email" /></td></a></li>

												<li><span>办公室:</span>
												<td><s:property value="#teacher.placename" /></td></li>

												<li><span>上次登录:</span<td><s:property value="#teacher.recent" /></td></li>



											</ul>
										</td>
									</s:iterator>
								</div>

								<!--tab_1_2-->

								<div class="tab-pane row-fluid profile-account" id="tab_1_3">

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active"><a data-toggle="tab"
														href="#tab_1-1"> <i class="icon-cog"></i> 修改资料

													</a> <span class="after"></span></li>


													<li class=""><a data-toggle="tab" href="#tab_3-3"><i
															class="icon-lock"></i>修改密码</a></li>


												</ul>

											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1-1" class="tab-pane active">

														<div style="height: auto;" id="accordion1-1"
															class="accordion collapse">

															<form action="<%=basePath %>jdbc/tupdateprofile" method="post">

																<input type="hidden" name="ttid" value="<%=session.getAttribute("teacherId") %>"/>
																<label class="control-label">姓名</label> <input
																	type="text" placeholder="name"
																	name="curteacher.teachername"
																	value="<s:property value="list[0].teachername"/>"
																	class="m-wrap span8" /> <label class="control-label">Email</label>
																<input type="email" name="curteacher.email"
																	value="<s:property value="list[0].email"/>"
																	placeholder="somebody@example.com" class="m-wrap span8" /> 
																	
																	<label class="control-label">教学科目</label>
																<input type="text" placeholder="C语言、操作系统、数据结构..." 
																name="curteacher.classname" value="<s:property value="list[0].classname"/>"
																	class="m-wrap span8" /> <label class="control-label">办公室</label>

																<input type="text" placeholder="综合楼、新技术楼.." name="curteacher.placename"
																	class="m-wrap span8" value="<s:property value="list[0].placename"/>"
																	 /> <label class="control-label">个人简介</label>

																<input type="text" placeholder="介绍一下自己吧.." name="curteacher.introduction"
																	value="<s:property value="list[0].introduction"/>" class="m-wrap span8" />


																<div class="submit-btn">

																	<input class="btn green" type="submit" value="保存更改"></a>

																	<a href="#" class="btn">取消</a>

																</div>

															</form>

														</div>

													</div>

													<div id="tab_2-2" class="tab-pane">

														<div style="height: auto;" id="accordion2-2"
															class="accordion collapse">

															<form action="#">

																<p>Anim pariatur cliche reprehenderit, enim eiusmod
																	high life accusamus terry richardson ad squid. 3 wolf
																	moon officia aute, non cupidatat skateboard dolor
																	brunch. Food truck quinoa nesciunt laborum eiusmod.</p>

																<br />

				

																<div class="space10"></div>

																<div class="clearfix"></div>

																<div class="controls">

																	<span class="label label-important">NOTE!</span> <span>You
																		can write some information here..</span>

																</div>

																<div class="space10"></div>

																<div class="submit-btn">

																	<a href="#" class="btn green">Submit</a> <a href="#"
																		class="btn">Cancel</a>

																</div>

															</form>

														</div>

													</div>

													<div id="tab_3-3" class="tab-pane">

														<div style="height: auto;" id="accordion3-3"
															class="accordion collapse">

															<form action="<%=basePath %>jdbc/tchangepass" method="post">
																<input type="hidden" value="<%=session.getAttribute("teacherId") %>" name="ttid"/>
																<label class="control-label">当前密码</label> <input
																	type="password" name="curpass" class="m-wrap span8" /> <label
																	class="control-label">新密码</label> <input
																	type="password" name="pass1" class="m-wrap span8" /> <label
																	class="control-label">再次输入新密码</label> <input
																	type="password" name="pass2" class="m-wrap span8" />

																<div class="submit-btn">

																	<input class="btn green" type="submit" value="修改密码"></a><a
																		href="#tab_1_3" class="btn"  data-toggle="tab">取消</a>

																</div>

															</form>

														</div>

													</div>

													<div id="tab_4-4" class="tab-pane">

														<div style="height: auto;" id="accordion4-4"
															class="accordion collapse">

															<form action="#">

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Anim pariatur cliche reprehenderit, enim
																			eiusmod high life accusamus..</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="radio"> <input type="radio"
																				name="optionsRadios1" value="option1" /> Yes

																			</label> <label class="radio"> <input type="radio"
																				name="optionsRadios1" value="option2" checked /> No

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Enim eiusmod high life accusamus terry
																			richardson ad squid wolf moon</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox"> <input
																				type="checkbox" value="" /> All

																			</label> <label class="checkbox"> <input
																				type="checkbox" value="" /> Friends

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Pariatur cliche reprehenderit, enim eiusmod
																			high life accusamus terry richardson</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox"> <input
																				type="checkbox" value="" /> Yes

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Cliche reprehenderit enim eiusmod high life
																			accusamus terry</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox"> <input
																				type="checkbox" value="" /> Yes

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Oiusmod high life accusamus terry richardson ad
																			squid wolf fwopo</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox"> <input
																				type="checkbox" value="" /> Yes

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="space5"></div>

																<div class="submit-btn">

																	<a href="#" class="btn green">Save Changes</a> <a
																		href="#" class="btn">Cancel</a>

																</div>

															</form>

														</div>

													</div>

												</div>

											</div>

											<!--end span9-->

										</div>

									</div>

								</div>

								<!--end tab-pane-->

								<div class="tab-pane" id="tab_1_4">

									<div class="row-fluid add-portfolio">

										<div class="pull-left">

											<span>502 Items sold this week</span>

										</div>

										<div class="pull-left">

											<a href="#" class="btn icn-only green">Add a new Project
												<i class="m-icon-swapright m-icon-white"></i>
											</a>

										</div>

									</div>

									<!--end add-portfolio-->

								

									<!--end row-fluid-->

							

									<!--end row-fluid-->

									

									<!--end row-fluid-->

								</div>

								<!--end tab-pane-->

								

								<!--end tab-pane-->

							</div>

						</div>

						<!--END TABS-->

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

		<div class="footer-inner">2014 &copy; HITSunday</div>

		<div class="footer-tools">

			<span class="go-top"> <i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="<%=basePath%>media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="<%=basePath%>media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="<%=basePath%>media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="<%=basePath%>media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="<%=basePath%>media/js/excanvas.min.js"></script>

	<script src="<%=basePath%>media/js/respond.min.js"></script>  

	<![endif]-->

	<script src="<%=basePath%>media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="<%=basePath%>media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="<%=basePath%>media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="<%=basePath%>media/js/jquery.uniform.min.js" type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="<%=basePath%>media/js/bootstrap-fileupload.js"></script>

	<script type="text/javascript" src="<%=basePath%>media/js/chosen.jquery.min.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="<%=basePath%>media/js/app.js"></script>

	<!-- END PAGE LEVEL SCRIPTS -->

	<script>
		jQuery(document).ready(function() {

			// initiate layout and plugins

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