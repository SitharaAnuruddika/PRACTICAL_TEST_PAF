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
	DoctorController doctorController=new DoctorController();
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
						<a href="index.html" class="logo"> <span class="logo-light">
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

							<li class="has-submenu"><a href="index.html"><i
									class="icon-accelerator"></i> Dashboard</a></li>

							<li class="has-submenu"><a href="#"><i
									class="icon-pencil-ruler"></i> Appointment <i
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
									class="icon-pencil-ruler"></i> Patient <i
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
									class="icon-pencil-ruler"></i> Doctor <i
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
									class="icon-pencil-ruler"></i> Hospital <i
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
									class="icon-pencil-ruler"></i> Lab Test <i
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
						<h4 class="page-title">Doctor</h4>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-right">
							<li class="breadcrumb-item"><a href="javascript:void(0);">HCS</a></li>
							<li class="breadcrumb-item active">Doctor</li>
						</ol>
					</div>
				</div>
				<!-- end row -->
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="card m-b-30">
						<div class="card-body">

							<h4 class="mt-0 header-title">Doctor Details</h4>

							<form id="formdoctor" action="" method="POST">
								<div class="form-group">
									<label>Doctor Name</label> <input type="text"
										class="form-control" name="DoctorName" id="doctorname"
										required placeholder="Enter a doctor name" />
								</div>


								<div class="form-group">
									<label>E-Mail</label>
									<div>
										<input type="email" class="form-control" required
											parsley-type="email" name="Email" id="email"
											placeholder="Enter a valid e-mail" />
									</div>
								</div>


								<div class="form-group">
									<label>Phone Number</label> <input type="text"
										class="form-control" name="PhoneNumber" id="phonenumber"
										required placeholder="Enter a phone number" />
								</div>
								<div class="form-group">
									<label>Doctor Specialization</label> <input type="text"
										class="form-control" name="DoctorType"
										id="doctorspecialization" required
										placeholder="Enter a doctor specialization" />
								</div>

								<div class="form-group">
									<label>Work Hospital</label> <input type="text"
										class="form-control" name="WorkHospital" id="workhospital"
										required placeholder="Enter a work hospital" />
								</div>
						</div>


						<div class="form-group">
							<div>

								<button type="Save"
									class="btn btn-primary waves-effect waves-light m-l-5"
									id="btnSave" name="btnsave" value="Save">Save</button>
								<input type="hidden" id="DoctorIDSave" name="DoctorIDSave"
									value="">
								<button type="reset"
									class="btn btn-secondary waves-effect m-l-5">Cancel</button>
							</div>
						</div>
						</form>

						<div id="alertSuccess"
							class="alert alert-success alert-dismissible" role="alert">
						</div>
						<div id="alertError" class="alert alert-danger" role="alert"></div>
				</div>
			</div>
			<!-- end col -->

		</div>
		<!-- end row -->
		
		
		  <div class="row">
                <div class="col-12">
                    <div class="card m-b-30">
                        <div class="card-body">

                            <h4 class="mt-0 header-title">Doctors List</h4>

                            <div class="table-rep-plugin">
                                <div class="table-responsive b-0" data-pattern="priority-columns">
                                    <table id="DoctorTable" class="table  table-striped">
                                        <thead>
                                        <tr>
                                            <th>Doctor Id</th>
                                            <th data-priority="1">Doctor Name</th>
                                            <th data-priority="3">Doctor Email</th>
                                            <th data-priority="1">Phone Number</th>
                                            <th data-priority="3">Doctor Specialization</th>
                                            <th data-priority="3">Work Hospital</th>
                                            <th data-priority="6">Update</th>
                                            <th data-priority="6">Remove</th>
                                        </tr>
                                        </thead>
                                        <tbody id="DoctorTableBody">
                                       <% out.print(doctorController.readDoctors()); %>
                                        </tbody>
                                    </table>
                                </div>

                            </div>

                        </div>
                    </div>
                </div> <!-- end col -->
            </div>
		
		

	</div>
	<!-- end container-fluid -->
	</div>
	<!-- end wrapper -->

	<!-- Footer -->
	<footer class="footer">
		© 2020 Health Care System <span class="d-none d-sm-inline-block"> - Crafted
			with <i class="mdi mdi-heart text-danger"></i> by Themesdesign
		</span>.
	</footer>

	<!-- End Footer -->






	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/jquery.slimscroll.js"></script>
	<script src="assets/js/waves.min.js"></script>
	<script type="text/javascript" src="Components/Doctor.js"></script>
	<!-- Parsley js -->
	<script src="../plugins/parsleyjs/parsley.min.js"></script>

	<!-- App js -->
	<script src="assets/js/app.js"></script>
	<script>
		$(document).ready(function() {
			$('form').parsley();
		});
	</script>



</body>
</html>