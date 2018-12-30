<%-- 
    Document   : index
    Created on : Nov 27, 2018, 10:51:36 PM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<!-- Local bootstrap CSS & JS -->
	<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/templates/css/bootstrap.min.css">
	<script src="<%=request.getContextPath()%>/templates/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/templates/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/templates/js/serializable_object.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/header.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/slide.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/body.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/footer.css">
        <script src="<%=request.getContextPath()%>/templates/js/Logout.js"></script>                                                                        
</head>
<body>
        <div id="topnav">
		<div class="container">
			<div class="row ">
				<div class="top-header-left">
					<div class="top-header-content">
					</div>
					<div class="top-header-date">
						<i class="top-header-date-icon fa fa-calendar-o"></i>
						<script src="<%=request.getContextPath()%>/templates/js/date.js">
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="logo">
		<div class="container">
			<div class="row">
				<div class="header-content row">
					<div class="header-logo col-md-6">
						<div class="section" id="logo_blog" name="Logo">
							<div class="widget Header" data-version="1" id="Header1">
								<div id="header-inner">
									<a class="col-md-2" href="<%=request.getContextPath()%>" style="display: block">
									<img alt="TOEIC Fighter"   src="<%=request.getContextPath()%>/templates/images/logo.jpg" >
									</a>
									<h2 class="title col-md-10"><span>TOEIC FIGHTER</span></h2>
								</div>
							</div>
						</div>
					</div>
					<div class="header-ads col-md-6">
						<div class="section" id="ads-content" name="Ads 728x90">
							<div class="widget HTML" data-version="1" id="HTML1">
								
								<div class="widget-content">
								<a href="#"></a>
								</div>
							</div>
						</div>
					</div>
				<div class="tn-right col-md-6">
					<div class="social-area">
						<div class="social-top section" id="social-top" name="Social Top">
							<div class="widget LinkList" data-version="1" id="LinkList50">
								<div class="widget-content" id="formHeader">
								<ul >
                                                                    <%if(session.getAttribute("username")!=null){%>
                                                                        <li><a  target="_blank" >Hi <%=session.getAttribute("username")%></a></li>
                                                                        <li><a  href="<%=request.getContextPath()%>/Logout"  title="Logout" class="logout">Logout</a></li>
                                                                        <% if(session.getAttribute("role").equals("admin") ){%>
                                                                        <li><a  href="<%=request.getContextPath()%>/Dashbroad"  >Admin</a></li>
                                                                    <%}} else{ %>
                                                                        <li><a  href="<%=request.getContextPath()%>/Login"  title="Login">Login</a></li>
                                                                        <li><a  target="_blank" title="Đăng ký">Register</a></li>
                                                                     <%}%>
									
								</ul>
								</div>
							</div>
						</div>
					</div>
					<form action="" class="uk-search-header" method="get">
						<span class="glyphicon glyphicon-search">
						<input class="uk-searchbox-header" id="s" name="q" placeholder="Search..." type="text"></span>
					</form>
				</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="menu">
		<div class="navbar mybar">
			<div class="container">
				<ul class="nav navbar-nav ">
					<li class="active">
						<a href="#">Trang chủ</a>
					</li>
					<li>
						<a href="#">Hệ thống kiến thức</a>
						<ul class="submenu">
							<div class="">
								<ul class="col-md-6">
									<li><a href="session.html">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
									<li><a href="">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
									<li><a href="">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
								</ul>
								<ul class="col-md-6">
									<li><a href="">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
									<li><a href="">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
									<li><a href="">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
								</ul>
							</div>
						</ul>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/contest">Luyện thi TOEIC</a>
					</li>
					<li>
						<a href="#">Mẹo Giải đề thi TOEIC</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>