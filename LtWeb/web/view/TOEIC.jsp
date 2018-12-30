<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>TOEIC-FULL</title>
	<!-- Local bootstrap CSS & JS -->
	<link rel="stylesheet" media="screen" href="public/css/bootstrap.min.css">
	<script src="public/js/jquery.min.js"></script>
	<script src="public/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="public/css/header.css">
	<link rel="stylesheet" href="public/css/slide.css">
	<link rel="stylesheet" href="public/css/body.css">
	<link rel="stylesheet" href="public/css/footer.css">
	<link rel="stylesheet" href="public/css/contest.css">
	<link rel="stylesheet" href="public/css/radio.css">
	<link rel="stylesheet" href="public/css/time.css">
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
						<script src="public/js/date.js">
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
									<a class="col-md-2" href="index.html" style="display: block">
									<img alt="TOEIC Fighter"   src="public/images/logo.jpg" >
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
								<div class="widget-content">
								<ul>
									<li><a   target="_blank" title="Đăng nhập">Đăng nhập</a></li>
									<li><a  target="_blank" title="Đăng ký">Đăng ký</a></li>
									
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
									<li><a href="">1. Hiện tại đơn, Hiện tại hoàn thành</a></li>
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
						<a href="#">Luyện thi TOEIC</a>
					</li>
					<li>
						<a href="#">Mẹo Giải đề thi TOEIC</a>
					</li>
					<li class="part">
						<a href="#">Part1: PHOTOS</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="main">
		<div class="container">
			<div class="left col-md-3">
				<div class="panel my-advertisment">
					<div class="panel-body">
						<a href="#">TOEIC TEST LISTENING</a>
					</div>
				</div>
				<div class="panel my-advertisment">
					<div class="panel-body">
						<a href="#">TOEIC TEST READING</a>
					</div>
				</div>
				<div class="panel my-advertisment">
					<div class="panel-body">
						<a href="#">TOEIC TEST FULL</a>
					</div>
				</div>
			</div>
			<div class="panel panel-success center col-md-6">
				<div class="panel-heading">
					<h3 class="panel-title">PART 1: PHOTOGRAPS</h3>
				</div>
				<div class="panel-body">
					<div class="regulation">
						<p>In each question, you will look at a photograph and then listen to 4 sentences. Choose the sentence that best describes the photograph. There are 17 questions in this test.</p>
						<p>Listen to four statements about each photo on the screen. Click on the letter of the best description of the photo.</p>
					</div>
					<div class="mp">
						<audio controls>
						 	<source src="public/radio/2.mp3" type="audio/mpeg">
						</audio>
					</div>
					<div class="photo">
						<img src="public/images/part1_1.jpg" alt="" >
					</div>
					<div class="my-answer">
						<ol class="alpha">
							<li >
								<input id="radio1" type="radio"  name="radio"> <label for="radio1"></label>
							</li>
							<li >
								<input id="radio2" type="radio"  name="radio"> <label for="radio2"></label>
							</li>
							<li >
								<input id="radio3" type="radio"  name="radio"> <label for="radio3"></label>
							</li>
							<li >
								<input id="radio4" type="radio"  name="radio"> <label for="radio4"></label>
							</li>
						</ol>
						<div>Score:0/0 <a class="btn btn-default btn-script-answer">Script</a ></div>
						<div class="script-answer"></div>
					</div>
					<div class="panel panel-success ">
						<div class="panel-body">
							<div class="col-md-6">
								<a href="" class="previours-link">Previous <span class="	glyphicon glyphicon-arrow-left"></span></a>
							</div>
							<div class="col-md-6 text-right" >
								<a href="#" class="after-link">Next <span class="	glyphicon glyphicon-arrow-right"></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="right col-md-3">
				<div class="panel  myList">
						<div class="panel-heading ">
							<input type="button" value="start" id="start" onclick="start()">
							<input type="button" value="stop" id="stop" onclick="stop()">
							<input type="hidden" value="1" id="h_val">
							<input type="hidden" value="30" id="m_val">
							<input type="hidden" value="0" id="s_val">
						</div>
						<div class="panel-body">
							<div class="time">
								<span id="h">Giờ</span>
								<span id="m">Phút</span>
								<span id="s">Giây</span>
							</div>
						</div>
				</div>
				<div class="panel my-advertisment">
					<div class="panel-body">
						<a href="#">TOEIC TEST LISTENING</a>
					</div>
				</div>
					<div class="panel my-advertisment">
					<div class="panel-body">
						<a href="#">TOEIC TEST READING</a>
					</div>
				</div>
				<div class="panel my-advertisment">
					<div class="panel-body">
						<a href="#">TOEIC TEST FULL</a>
					</div>
				</div>
				<div class="panel  myList">
						<div class="panel-heading myList-header">
							<h3 class="panel-title"> <span class="glyphicon">&#xe032; </span> TOEIC SESSION</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="session.html">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
								<li class="list-group-item"><a href="#">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
								<li class="list-group-item"><a href="#">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
								<li class="list-group-item"><a href="#">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
							</ul>
						</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="footer-newsletter text-center">
        <div class="container">
        <div class="row my-footer">
            <div class="col-md-8 col-sm-7">
            <form id="newsletter-validate-detail" method="post" action="#">
                <h3 class="hidden-sm">Sign up for newsletter</h3>
                <div class="newsletter-inner">
                    <input class="newsletter-email" name="Email" placeholder="Enter Your Email">
                    <button class="button subscribe" type="submit" title="Subscribe">Subscribe</button>
                </div>
            </form>
            </div>
          
        </div>
        </div>
    </div>
	<div class="footer">
		<div class="footerOuter">
			<div class="footer1">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="footersidebar">
								<div id="sidebar3" class="sidebar3" >
										<div class="col-md-6">
											<li class="footerSection1 ">
												<h4>Link nhanh</h4>
												<div class="menu-quick-links-container">
													<ul id="menu-quick-links" class="menu">
														<li id="menu-item-106" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-106">
															<a href="https://www.toeicmoingay.com/gioi-thieu" data-ps2id-api="true">Giới thiệu</a>
														</li>
														<li id="menu-item-1162" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1162">
															<a href="https://www.toeicmoingay.com/lop-cap-toc" data-ps2id-api="true">Đăng kí học</a>
														</li>
														<li id="menu-item-1163" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1163">
															<a href="https://www.toeicmoingay.com/hoc-vien-cu" data-ps2id-api="true">Lời học viên cũ</a>
														</li>
														<li id="menu-item-103" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-103">
															<a href="https://www.toeicmoingay.com/lien-he" data-ps2id-api="true">Liên hệ</a>
														</li>
													</ul>
												</div>
											</li>
										</div>
										<div class="col-md-6">
											<li class="footerSection2">
												<h4>Liên kết</h4>
												<div class="textwidget">
													<ul>
														<li> 
															<a href="https://www.facebook.com/TOEICmoingay.990">Facebook</a>
														</li>
														<li> 
															<a href="https://www.youtube.com/c/toeicmoingay">Youtube</a>
														</li>
													</ul>
												</div>
											</li>
										</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div class="footer2">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="copyRight"> Copyright © 2018 TOEIC mỗi ngày. All rights reserved.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<a class="up" href="#topnav">
		<img src="public/images/up.png" alt="">
	</a>
	<script src="public/js/script-answer.js"></script>
	<script src="public/js/time.js"></script>
</body>
</html>