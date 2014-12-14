<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

<meta charset="utf-8" />

<title></title>

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

<!-- BEGIN PAGE LEVEL STYLES -->

<link href="media/css/bootstrap-fileupload.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/chosen.css" rel="stylesheet" type="text/css" />

<link href="media/css/profile.css" rel="stylesheet" type="text/css" />

<!-- END PAGE LEVEL STYLES -->

<link rel="shortcut icon" href="media/image/favicon.ico" />
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

				<a class="brand" href="index.html"> <img
					src="media/image/logo.png" alt="logo" />

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

					<!-- BEGIN NOTIFICATION DROPDOWN -->

					f

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="media/image/avatar1_small.jpg" /> <span class="username">
							<%=session.getAttribute("teachername") %></span> <i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="#"><i class="icon-user"></i>
									我的信息</a></li>

							<li><a href="<%=basePath %>t_calendar.jsp"><i
									class="icon-calendar"></i>我的日历</a></li>

							<li class="divider"></li>

							<li><a href="<%=basePath %>ReserveSlide.html"><i class="icon-key"></i> 退出</a></li>

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
					href="<%=basePath%>chat/tviewunreadchat.action"> <i
						class="icon-home"></i> <span class="title">本站简介</span>

				</a></li>
				<li class=""><a href="<%=basePath%>t_calendar.jsp"> <i
						class="icon-table"></i> <span class="title">我的日历</span> <span
						class="arrow "></span>

				</a></li>
				<li class="active "><a href="<%=basePath%>tprofile.jsp"> <i
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

							User Profile <small>user profile sample</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a href="index.html">Home</a>

								<i class="icon-angle-right"></i></li>

							<li><a href="#">Extra</a> <i class="icon-angle-right"></i></li>

							<li><a href="#">User Profile</a></li>

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

												<h1>John Doe</h1>

												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
													elit, sed diam nonummy nibh euismod tincidunt laoreet
													dolore magna aliquam tincidunt erat volutpat laoreet dolore
													magna aliquam tincidunt erat volutpat.</p>

												<p>
													<a href="#">www.mywebsite.com</a>
												</p>



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
										<img src="media/image/profile-img.png" alt="" /> <a href="#"
											class="profile-edit">edit</a>
									</div>

									<ul class="unstyled span10">


										<li><span>姓名:</span> Doe</li>

										<li><span>生日:</span> 18 Jan 1982</li>

										<li><span>任教科目:</span> 操作系统</li>

										<li><span>Email:</span> <a href="#">lizhijun_os@hit.edn.cn</a></li>

										<li><span>Interests:</span> Design, Web etc.</li>

										<li><span>电话:</span> +1 646 580 DEMO (6284)</li>


									</ul>

								</div>

								<!--tab_1_2-->

								<div class="tab-pane row-fluid profile-account" id="tab_1_3">

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active"><a data-toggle="tab"
														href="#tab_1-1"> <i class="icon-cog"></i> Personal
															info

													</a> <span class="after"></span></li>


													<li class=""><a data-toggle="tab" href="#tab_3-3"><i
															class="icon-lock"></i> Change Password</a></li>


												</ul>

											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1-1" class="tab-pane active">

														<div style="height: auto;" id="accordion1-1"
															class="accordion collapse">

															<form action=" 	#">


																<label class="control-label">姓名</label> <input
																	type="text" placeholder="name" class="m-wrap span8" />

																<label class="control-label">Email</label> <input
																	type="email" placeholder="somebody@example.com"
																	class="m-wrap span8" /> <label class="control-label">教学科目</label>

																<input type="text" placeholder="C语言、操作系统、数据结构..."
																	class="m-wrap span8" /> <label class="control-label">办公室</label>

																<input type="text" placeholder="综合楼、新技术楼.."
																	class="m-wrap span8" /> <label class="control-label">个人简介</label>

																<input type="text" placeholder="介绍一下自己吧.."
																	class="m-wrap span8" />



																<div class="submit-btn">

																	<a class="btn green" onclick="submit">Save Changes</a>

																	<a href="#" class="btn">Cancel</a>

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

																<div class="controls">

																	<div class="thumbnail"
																		style="width: 291px; height: 170px;">

																		<img src="media/image/AAAAAA&amp;text=no+image" alt="" />

																	</div>

																</div>

																<div class="space10"></div>

																<div class="fileupload fileupload-new"
																	data-provides="fileupload">

																	<div class="input-append">

																		<div class="uneditable-input">

																			<i class="icon-file fileupload-exists"></i> <span
																				class="fileupload-preview"></span>

																		</div>

																		<span class="btn btn-file"> <span
																			class="fileupload-new">Select file</span> <span
																			class="fileupload-exists">Change</span> <input
																			type="file" class="default" />

																		</span> <a href="#" class="btn fileupload-exists"
																			data-dismiss="fileupload">Remove</a>

																	</div>

																</div>

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

															<form action="#">

																<label class="control-label">Current Password</label> <input
																	type="password" class="m-wrap span8" /> <label
																	class="control-label">New Password</label> <input
																	type="password" class="m-wrap span8" /> <label
																	class="control-label">Re-type New Password</label> <input
																	type="password" class="m-wrap span8" />

																<div class="submit-btn">

																	<a href="#" class="btn green">Change Password</a> <a
																		href="#" class="btn">Cancel</a>

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

									<div class="row-fluid portfolio-block">

										<div class="span5 portfolio-text">

											<img src="media/image/logo_metronic.jpg" alt="" />

											<div class="portfolio-text-info">

												<h4>Metronic - Responsive Template</h4>

												<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>

											</div>

										</div>

										<div class="span5" style="overflow:hidden;">

											<div class="portfolio-info">

												Today Sold <span>187</span>

											</div>

											<div class="portfolio-info">

												Total Sold <span>1789</span>

											</div>

											<div class="portfolio-info">

												Earns <span>$37.240</span>

											</div>

										</div>

										<div class="span2 portfolio-btn">

											<a href="#" class="btn bigicn-only"><span>Manage</span></a>

										</div>

									</div>

									<!--end row-fluid-->

									<div class="row-fluid portfolio-block">

										<div class="span5 portfolio-text">

											<img src="media/image/logo_azteca.jpg" alt="" />

											<div class="portfolio-text-info">

												<h4>Metronic - Responsive Template</h4>

												<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>

											</div>

										</div>

										<div class="span5">

											<div class="portfolio-info">

												Today Sold <span>24</span>

											</div>

											<div class="portfolio-info">

												Total Sold <span>660</span>

											</div>

											<div class="portfolio-info">

												Earns <span>$7.060</span>

											</div>

										</div>

										<div class="span2 portfolio-btn">

											<a href="#" class="btn bigicn-only"><span>Manage</span></a>

										</div>

									</div>

									<!--end row-fluid-->

									<div class="row-fluid portfolio-block">

										<div class="span5 portfolio-text">

											<img src="media/image/logo_conquer.jpg" alt="" />

											<div class="portfolio-text-info">

												<h4>Metronic - Responsive Template</h4>

												<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>

											</div>

										</div>

										<div class="span5" style="overflow:hidden;">

											<div class="portfolio-info">

												Today Sold <span>24</span>

											</div>

											<div class="portfolio-info">

												Total Sold <span>975</span>

											</div>

											<div class="portfolio-info">

												Earns <span>$21.700</span>

											</div>

										</div>

										<div class="span2 portfolio-btn">

											<a href="#" class="btn bigicn-only"><span>Manage</span></a>

										</div>

									</div>

									<!--end row-fluid-->

								</div>

								<!--end tab-pane-->

								<div class="tab-pane row-fluid" id="tab_1_6">

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active"><a data-toggle="tab" href="#tab_1">

															<i class="icon-briefcase"></i> General Questions

													</a> <span class="after"></span></li>

													<li><a data-toggle="tab" href="#tab_2"><i
															class="icon-group"></i> Membership</a></li>

													<li><a data-toggle="tab" href="#tab_3"><i
															class="icon-leaf"></i> Terms Of Service</a></li>

													<li><a data-toggle="tab" href="#tab_1"><i
															class="icon-info-sign"></i> License Terms</a></li>

													<li><a data-toggle="tab" href="#tab_2"><i
															class="icon-tint"></i> Payment Rules</a></li>

													<li><a data-toggle="tab" href="#tab_3"><i
															class="icon-plus"></i> Other Questions</a></li>

												</ul>

											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1" class="tab-pane active">

														<div style="height: auto;" id="accordion1"
															class="accordion collapse">

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_1" data-parent="#accordion1"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Anim pariatur
																		cliche reprehenderit, enim eiusmod high life accusamus
																		terry ? </a>

																</div>

																<div class="accordion-body collapse in" id="collapse_1">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2" data-parent="#accordion1"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Pariatur
																		cliche reprehenderit enim eiusmod highr brunch ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3" data-parent="#accordion1"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Food truck
																		quinoa nesciunt laborum eiusmod nim eiusmod high life
																		accusamus ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_4" data-parent="#accordion1"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> High life
																		accusamus terry richardson ad ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_4">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_5" data-parent="#accordion1"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Reprehenderit
																		enim eiusmod high life accusamus terry quinoa nesciunt
																		laborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_5">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_6" data-parent="#accordion1"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Wolf moon
																		officia aute non cupidatat skateboard dolor brunch ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_6">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

														</div>

													</div>

													<div id="tab_2" class="tab-pane">

														<div style="height: auto;" id="accordion2"
															class="accordion collapse">

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_1" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Cliche
																		reprehenderit, enim eiusmod high life accusamus enim
																		eiusmod ? </a>

																</div>

																<div class="accordion-body collapse in"
																	id="collapse_2_1">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_2" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Pariatur
																		cliche reprehenderit enim eiusmod high life non
																		cupidatat skateboard dolor brunch ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2_2">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_3" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Food truck
																		quinoa nesciunt laborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2_3">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_4" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> High life
																		accusamus terry richardson ad squid enim eiusmod high
																		? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2_4">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_5" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Reprehenderit
																		enim eiusmod high life accusamus terry quinoa nesciunt
																		laborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2_5">

																	<div class="accordion-inner">

																		<p>Anim pariatur cliche reprehenderit, enim
																			eiusmod high life accusamus terry richardson ad
																			squid. 3 wolf moon officia aute, non cupidatat
																			skateboard dolor brunch. Food truck quinoa nesciunt
																			laborum eiusmod. Brunch 3 wolf moon tempor.</p>

																		<p>moon officia aute, non cupidatat skateboard
																			dolor brunch. Food truck quinoa nesciunt laborum
																			eiusmodBrunch 3 wolf moon tempor</p>

																	</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_6" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Wolf moon
																		officia aute non cupidatat skateboard dolor brunch ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2_6">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_7" data-parent="#accordion2"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Reprehenderit
																		enim eiusmod high life accusamus terry quinoa nesciunt
																		laborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_2_7">

																	<div class="accordion-inner">

																		<p>Anim pariatur cliche reprehenderit, enim
																			eiusmod high life accusamus terry richardson ad
																			squid. 3 wolf moon officia aute, non cupidatat
																			skateboard dolor brunch. Food truck quinoa nesciunt
																			laborum eiusmod. Brunch 3 wolf moon tempor.</p>

																		<p>moon officia aute, non cupidatat skateboard
																			dolor brunch. Food truck quinoa nesciunt laborum
																			eiusmodBrunch 3 wolf moon tempor</p>

																	</div>

																</div>

															</div>

														</div>

													</div>

													<div id="tab_3" class="tab-pane">

														<div style="height: auto;" id="accordion3"
															class="accordion collapse">

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_1" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Cliche
																		reprehenderit, enim eiusmod ? </a>

																</div>

																<div class="accordion-body collapse in"
																	id="collapse_3_1">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_2" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Pariatur
																		skateboard dolor brunch ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_2">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_3" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Food truck
																		quinoa nesciunt laborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_3">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_4" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> High life
																		accusamus terry richardson ad squid enim eiusmod high
																		? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_4">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_5" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Reprehenderit
																		enim eiusmod high eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_5">

																	<div class="accordion-inner">

																		<p>Anim pariatur cliche reprehenderit, enim
																			eiusmod high life accusamus terry richardson ad
																			squid. 3 wolf moon officia aute, non cupidatat
																			skateboard dolor brunch. Food truck quinoa nesciunt
																			laborum eiusmod. Brunch 3 wolf moon tempor.</p>

																		<p>moon officia aute, non cupidatat skateboard
																			dolor brunch. Food truck quinoa nesciunt laborum
																			eiusmodBrunch 3 wolf moon tempor</p>

																	</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_6" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Anim pariatur
																		cliche reprehenderit, enim eiusmod high life accusamus
																		terry ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_6">

																	<div class="accordion-inner">Anim pariatur cliche
																		reprehenderit, enim eiusmod high life accusamus terry
																		richardson ad squid. 3 wolf moon officia aute, non
																		cupidatat skateboard dolor brunch. Food truck quinoa
																		nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_7" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Reprehenderit
																		enim eiusmod high life accusamus aborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_7">

																	<div class="accordion-inner">

																		<p>Anim pariatur cliche reprehenderit, enim
																			eiusmod high life accusamus terry richardson ad
																			squid. 3 wolf moon officia aute, non cupidatat
																			skateboard dolor brunch. Food truck quinoa nesciunt
																			laborum eiusmod. Brunch 3 wolf moon tempor.</p>

																		<p>moon officia aute, non cupidatat skateboard
																			dolor brunch. Food truck quinoa nesciunt laborum
																			eiusmodBrunch 3 wolf moon tempor</p>

																	</div>

																</div>

															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_8" data-parent="#accordion3"
																		data-toggle="collapse"
																		class="accordion-toggle collapsed"> Reprehenderit
																		enim eiusmod high life accusamus terry quinoa nesciunt
																		laborum eiusmod ? </a>

																</div>

																<div class="accordion-body collapse" id="collapse_3_8">

																	<div class="accordion-inner">

																		<p>Anim pariatur cliche reprehenderit, enim
																			eiusmod high life accusamus terry richardson ad
																			squid. 3 wolf moon officia aute, non cupidatat
																			skateboard dolor brunch. Food truck quinoa nesciunt
																			laborum eiusmod. Brunch 3 wolf moon tempor.</p>

																		<p>moon officia aute, non cupidatat skateboard
																			dolor brunch. Food truck quinoa nesciunt laborum
																			eiusmodBrunch 3 wolf moon tempor</p>

																	</div>

																</div>

															</div>

														</div>

													</div>

												</div>

											</div>

											<!--end span9-->

										</div>

									</div>

								</div>

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

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="media/js/bootstrap-fileupload.js"></script>

	<script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js"></script>

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