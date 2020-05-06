<%@page import="com.hcs.controller.DoctorController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="assets/images/favicon.ico">

<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/metismenu.min.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/icons.css" rel="stylesheet" type="text/css">
<link href="assets/css/style.css" rel="stylesheet" type="text/css">


<%
	DoctorController doctorController = new DoctorController();
%>


<title>Insert title here</title>
</head>
<body>


	<div class="header-bg">
		<!-- Navigation Bar-->
		<header id="topnav">
			<div class="topbar-main">
				<div class="container-fluid">

					<!-- Logo-->
					<div>
						<a href="index.jsp" class="logo"> <span class="logo-light">
								<i class="mdi mdi-camera-control"></i> HCS
						</span>
						</a>
					</div>
					<!-- End Logo-->

					<div class="menu-extras topbar-custom navbar p-0">
						<ul class="list-inline d-none d-lg-block mb-0">
							<li class="hide-phone app-search float-left">
								<form role="search" class="app-search">
									<div class="form-group mb-0">
										<input type="text" class="form-control" placeholder="Search..">
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</form>
							</li>
						</ul>

						<ul class="navbar-right ml-auto list-inline float-right mb-0">
							<!-- language-->
							<li
								class="dropdown notification-list list-inline-item d-none d-md-inline-block">
								<a class="nav-link dropdown-toggle arrow-none waves-effect"
								data-toggle="dropdown" href="#" role="button"
								aria-haspopup="false" aria-expanded="false"> <img
									src="assets/images/flags/us_flag.jpg" class="mr-2" height="12"
									alt="" /> English <span class="mdi mdi-chevron-down"></span>
							</a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-animated language-switch">
									<a class="dropdown-item" href="#"><img
										src="assets/images/flags/french_flag.jpg" alt="" height="16" /><span>
											French </span></a> <a class="dropdown-item" href="#"><img
										src="assets/images/flags/spain_flag.jpg" alt="" height="16" /><span>
											Spanish </span></a> <a class="dropdown-item" href="#"><img
										src="assets/images/flags/russia_flag.jpg" alt="" height="16" /><span>
											Russian </span></a> <a class="dropdown-item" href="#"><img
										src="assets/images/flags/germany_flag.jpg" alt="" height="16" /><span>
											German </span></a> <a class="dropdown-item" href="#"><img
										src="assets/images/flags/italy_flag.jpg" alt="" height="16" /><span>
											Italian </span></a>
								</div>
							</li>

							<!-- full screen -->
							<li
								class="dropdown notification-list list-inline-item d-none d-md-inline-block">
								<a class="nav-link waves-effect" href="#" id="btn-fullscreen">
									<i class="mdi mdi-arrow-expand-all noti-icon"></i>
							</a>
							</li>

							<!-- notification -->
							<li class="dropdown notification-list list-inline-item"><a
								class="nav-link dropdown-toggle arrow-none waves-effect"
								data-toggle="dropdown" href="#" role="button"
								aria-haspopup="false" aria-expanded="false"> <i
									class="mdi mdi-bell-outline noti-icon"></i> <span
									class="badge badge-pill badge-danger noti-icon-badge">3</span>
							</a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg px-1">
									<!-- item-->
									<h6 class="dropdown-item-text">Notifications</h6>
									<div class="slimscroll notification-item-list">
										<!-- item-->
										<a href="javascript:void(0);"
											class="dropdown-item notify-item active">
											<div class="notify-icon bg-success">
												<i class="mdi mdi-cart-outline"></i>
											</div>
											<p class="notify-details">
												<b>Your order is placed</b><span class="text-muted">Dummy
													text of the printing and typesetting industry.</span>
											</p>
										</a>

										<!-- item-->
										<a href="javascript:void(0);"
											class="dropdown-item notify-item">
											<div class="notify-icon bg-danger">
												<i class="mdi mdi-message-text-outline"></i>
											</div>
											<p class="notify-details">
												<b>New Message received</b><span class="text-muted">You
													have 87 unread messages</span>
											</p>
										</a>

										<!-- item-->
										<a href="javascript:void(0);"
											class="dropdown-item notify-item">
											<div class="notify-icon bg-info">
												<i class="mdi mdi-filter-outline"></i>
											</div>
											<p class="notify-details">
												<b>Your item is shipped</b><span class="text-muted">It
													is a long established fact that a reader will</span>
											</p>
										</a>

										<!-- item-->
										<a href="javascript:void(0);"
											class="dropdown-item notify-item">
											<div class="notify-icon bg-success">
												<i class="mdi mdi-message-text-outline"></i>
											</div>
											<p class="notify-details">
												<b>New Message received</b><span class="text-muted">You
													have 87 unread messages</span>
											</p>
										</a>

										<!-- item-->
										<a href="javascript:void(0);"
											class="dropdown-item notify-item">
											<div class="notify-icon bg-warning">
												<i class="mdi mdi-cart-outline"></i>
											</div>
											<p class="notify-details">
												<b>Your order is placed</b><span class="text-muted">Dummy
													text of the printing and typesetting industry.</span>
											</p>
										</a>

									</div>
									<!-- All-->
									<a href="javascript:void(0);"
										class="dropdown-item text-center notify-all text-primary">
										View all <i class="fi-arrow-right"></i>
									</a>
								</div></li>

							<li class="dropdown notification-list list-inline-item">
								<div class="dropdown notification-list nav-pro-img">
									<a class="dropdown-toggle nav-link arrow-none nav-user"
										data-toggle="dropdown" href="#" role="button"
										aria-haspopup="false" aria-expanded="false"> <img
										src="assets/images/users/user.png" alt="user"
										class="rounded-circle">
									</a>
									<div
										class="dropdown-menu dropdown-menu-right profile-dropdown ">
										<!-- item-->
										<a class="dropdown-item" href="#"><i
											class="mdi mdi-account-circle"></i> Profile</a> <a
											class="dropdown-item" href="#"><i class="mdi mdi-wallet"></i>
											My Wallet</a> <a class="dropdown-item d-block" href="#"><span
											class="badge badge-success float-right">11</span><i
											class="mdi mdi-settings"></i> Settings</a> <a
											class="dropdown-item" href="#"><i
											class="mdi mdi-lock-open-outline"></i> Lock screen</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item text-danger" href="#"><i
											class="mdi mdi-power text-danger"></i> Logout</a>
									</div>
								</div>
							</li>

							<li class="menu-item dropdown notification-list list-inline-item">
								<!-- Mobile menu toggle--> <a class="navbar-toggle nav-link">
									<div class="lines">
										<span></span> <span></span> <span></span>
									</div>
							</a> <!-- End mobile menu toggle-->
							</li>

						</ul>

					</div>
					<!-- end menu-extras -->

					<div class="clearfix"></div>

				</div>
				<!-- end container -->
			</div>
			<!-- end topbar-main -->

			<!-- MENU Start -->
			<div class="navbar-custom">
				<div class="container-fluid">

					<div id="navigation">

						<!-- Navigation Menu-->
						<ul class="navigation-menu">

							<li class="has-submenu"><a href="index.jsp"><i
									class="icon-accelerator"></i> Dashboard</a></li>

							<li class="has-submenu"><a href="#"><i
									class="fas fa-calendar-check"></i> Appointment <i
									class="mdi mdi-chevron-down mdi-drop"></i></a>
								<ul class="submenu megamenu">
									<li>
										<ul>
											<li><a href="ui-alerts.html">Alerts</a></li>
											<li><a href="ui-badge.html">Badge</a></li>

										</ul>
									</li>
								</ul></li>
							<li class="has-submenu"><a href="#"><i
									class="fas fa-procedures"></i> Patient <i
									class="mdi mdi-chevron-down mdi-drop"></i></a>
								<ul class="submenu megamenu">
									<li>
										<ul>
											<li><a href="ui-alerts.html">Alerts</a></li>
											<li><a href="ui-badge.html">Badge</a></li>

										</ul>
									</li>
								</ul></li>

							<li class="has-submenu"><a href="#"><i
									class="fas fa-portrait"></i> Doctor <i
									class="mdi mdi-chevron-down mdi-drop"></i></a>
								<ul class="submenu megamenu">
									<li>
										<ul>
											<li><a href="Doctor.jsp">New Doctor</a></li>
										</ul>
									</li>
								</ul></li>
							<li class="has-submenu"><a href="#"><i
									class="fas fa-ambulance"></i> Hospital <i
									class="mdi mdi-chevron-down mdi-drop"></i></a>
								<ul class="submenu megamenu">
									<li>
										<ul>
											<li><a href="ui-alerts.html">Alerts</a></li>
											<li><a href="ui-badge.html">Badge</a></li>

										</ul>
									</li>
								</ul></li>
							<li class="has-submenu"><a href="#"><i
									class="fas fa-capsules"></i> Lab Test <i
									class="mdi mdi-chevron-down mdi-drop"></i></a>
								<ul class="submenu megamenu">
									<li>
										<ul>
											<li><a href="ui-alerts.html">Alerts</a></li>
											<li><a href="ui-badge.html">Badge</a></li>

										</ul>
									</li>
								</ul></li>


						</ul>
						<!-- End navigation menu -->
					</div>
					<!-- end #navigation -->
				</div>
				<!-- end container -->
			</div>
			<!-- end navbar-custom -->
		</header>
		<!-- End Navigation Bar-->

	</div>
	<!-- header-bg -->


	<div class="wrapper">
		<div class="container-fluid">
			<!-- Page-Title -->
			<div class="page-title-box">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<h4 class="page-title">Dashboard</h4>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-right">
							<li class="breadcrumb-item"><a href="javascript:void(0);">HCS</a></li>
							<li class="breadcrumb-item active">Dashboard</li>
						</ol>
					</div>
				</div>
				<!-- end row -->
			</div>

<!-- start page content -->

			<div class="row">

                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-heading p-4">
                            <div class="mini-stat-icon float-right">
                                <i class="mdi mdi-calendar-edit bg-primary  text-white"></i>
                            </div>
                            <div>
                                <h5 class="font-16">Appointments</h5>
                            </div>
                            <h3 class="mt-4">43,225</h3>
                            <div class="progress mt-4" style="height: 4px;">
                                <div class="progress-bar bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <p class="text-muted mt-2 mb-0">Last Month<span class="float-right">75%</span></p>
                            <a href="#" class="btn btn-primary waves-effect waves-light">View Details</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-heading p-4">
                            <div class="mini-stat-icon float-right">
                                <i class="mdi mdi-doctor bg-success text-white"></i>
                            </div>
                            <div>
                                <h5 class="font-16">Doctors</h5>
                            </div>
                            <h3 class="mt-4">665</h3>
                            <div class="progress mt-4" style="height: 4px;">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 88%" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <p class="text-muted mt-2 mb-0">Active<span class="float-right">90%</span></p>
                            <a href="Doctor.jsp" class="btn btn-primary waves-effect waves-light">View Details</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-heading p-4">
                            <div class="mini-stat-icon float-right">
                                <i class="mdi mdi-hospital-building bg-warning text-white"></i>
                            </div>
                            <div>
                                <h5 class="font-16">Hospitals</h5>
                            </div>
                            <h3 class="mt-4">44</h3>
                            <div class="progress mt-4" style="height: 4px;">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: 68%" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <p class="text-muted mt-2 mb-0">Previous period<span class="float-right">68%</span></p>
                            <a href="#" class="btn btn-primary waves-effect waves-light">View Details</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-heading p-4">
                            <div class="mini-stat-icon float-right">
                                <i class="mdi mdi-file-document-edit bg-danger text-white"></i>
                            </div>
                            <div>
                                <h5 class="font-16">Lab Tests</h5>
                            </div>
                            <h3 class="mt-4">97,654</h3>
                            <div class="progress mt-4" style="height: 4px;">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <p class="text-muted mt-2 mb-0">Previous period<span class="float-right">82%</span></p>
                            <a href="#" class="btn btn-primary waves-effect waves-light">View Details</a>
                        </div>
                    </div>
                </div>
                

            </div>
            <!-- end page content -->
            
	<!-- end wrapper -->

	<!-- Footer -->
	<footer class="footer">
		© 2020 Health Care System <span class="d-none d-sm-inline-block">
			- Crafted with <i class="mdi mdi-heart text-danger"></i> by
			Themesdesign
		</span>.
	</footer>

	<!-- End Footer -->






	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/jquery.slimscroll.js"></script>
	<script src="assets/js/waves.min.js"></script>
	<!--  <script type="text/javascript" src="Components/Doctor.js"></script> -->
	
	<!-- Parsley js -->

	<!-- App js -->
	<script src="assets/js/app.js"></script>
	<script>
		
	</script>



</body>
</html>