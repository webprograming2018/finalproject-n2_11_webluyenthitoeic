<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="banner">
		<div id="carousel-id" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-id" data-slide-to="0" class=""></li>
				<li data-target="#carousel-id" data-slide-to="1" class=""></li>
				<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item">
					<img class="mybanner" alt="First slide" src="<%=request.getContextPath()%>/templates/images/banner1.jpg">
					<div class="container">
						<div class="carousel-caption">
							<h1>Example headline.</h1>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
							</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="mybanner" alt="Second slide" src="<%=request.getContextPath()%>/templates/images/banner1.jpg">
					<div class="container">
						<div class="carousel-caption">
							<h1>Another example headline.</h1>
								<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
							</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
						</div>
					</div>
				</div>
				<div class="item active">
					<img class="mybanner" alt="Third slide" src="<%=request.getContextPath()%>/templates/images/banner1.jpg">
					<div class="container">
						<div class="carousel-caption">
							<h1>One more for good measure.</h1>
								<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
							</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
	</div>
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="left col-md-3 list">
					<div class="panel  myList">
						<div class="panel-heading myList-header">
							<h3 class="panel-title"> <span class="glyphicon">&#xe032; </span> H? th?ng ki?n th?c</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="#">Bý kíp luy?n thi TOEIC</a></li>
								<li class="list-group-item"><a href="#">Các thì c? b?n trong ti?ng anh</a></li>
							</ul>
						</div>
					</div>
					<div class="panel  myList">
						<div class="panel-heading myList-header">
							<h3 class="panel-title"> <span class="glyphicon">&#xe032; </span> H? th?ng ki?n th?c</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item">
									<a href="" class="label label-success">reade more</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="panel  myList">
						<div class="panel-heading myList-header">
							<h3 class="panel-title"> <span class="glyphicon">&#xe032; </span> Các m?o làm bài t?p</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item"><a href="#"> Thì hi?n t?i ??n, Thì hi?n t?i ti?p di?n</a></li>
								<li class="list-group-item">
									<a href="" class="label label-success">reade more</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="right col-md-9">
					<div class="block-image col-md-12">
						<div class="thumb avatar">
                    		<a href="#" >
                    			<img <img src="public/images/TOEIC.jpeg" alt="" class="reponsive" alt="Ngu-phap-tu-loai">
                    		</a>
                    	</div>
						<div class="postags avatar">
							<a href="#" rel="tag">New</a>
						</div>
						<div >
							<h3 class="title">
									Ngu phap tu loai
							</h3>
							<p class="description">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus quam autem id, rerum laboriosam! Ipsum accusamus cum blanditiis, nihil sunt voluptatibus, voluptas...</p>
								
									
								<a href=""  class="label label-success">reade more</a>
							</p>
						</div>
					</div>
					<div class="block-image  col-md-12">
						<div class="thumb avatar">
                    		<a href="#" >
                    			<img <img src="public/images/TOEIC.jpeg" alt="" class="reponsive" alt="Ngu-phap-tu-loai">
                    		</a>
                    	</div>
						<div class="postags avatar">
							<a href="#" rel="tag">Part 5</a>
						</div>
						<div >
							<h3 class="title">
								On thi part 5
							</h3>
							<p class="description">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus quam autem id, rerum laboriosam! Ipsum accusamus cum blanditiis, nihil sunt voluptatibus, ...</p>
								
								<a href=""  class="label label-success">reade more</a>
							</p>
						</div>
					</div>
					<div class="block-image col-md-12">
						<div class="thumb avatar">
                    		<a href="#" >
                    			<img <img src="tamplates/images/TOEIC.jpeg" alt="" class="reponsive" alt="Ngu-phap-tu-loai">
                    		</a>
                    	</div>
						<div class="postags avatar">
							<a href="#" rel="tag">M?o</a>
						</div>
						<div >
							<h3 class="title">
								M?o h?c part 7
							</h3>
							<p class="description">
								
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus quam autem id, rerum laboriosam! Ipsum accusamus cum blanditiis, ... 
								</p>
							
								<a href=""  class="label label-success">reade more</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>