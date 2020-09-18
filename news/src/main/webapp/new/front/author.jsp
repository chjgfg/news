<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>auther</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CMuli:400,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

</head>

<body>
	<!-- HEADER -->
	<header id="header">
		<!-- NAV -->
		<div id="nav">
			<!-- Top Nav -->
			<div id="nav-top">
				<div class="container">

					<!-- logo -->
					<div class="nav-logo">
						<a href="index.html" class="logo"><img src="./img/logo.png"
							alt=""></a>
					</div>
					<!-- /logo -->

					<!-- search & aside toggle -->
					<div class="nav-btns">
						<button class="aside-btn">
							<i class="fa fa-bars"></i>
						</button>
						<button class="search-btn">
							<i class="fa fa-search"></i>
						</button>
						<div id="nav-search">
							<form>
								<input class="input" name="search"
									placeholder="Enter your search...">
							</form>
							<button class="nav-close search-close">
								<span></span>
							</button>
						</div>
					</div>
					<!-- /search & aside toggle -->
				</div>
			</div>
			<!-- /Top Nav -->

			<div id="nav-bottom">
				<div class="container">
					<ul class="nav-menu">
						<li><a href="index.jsp">首页</a></li>
						<li><a href="#">&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
						<li><a href="category.jsp">分类</a></li>
						<li><a href="#">&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
						<li><a href="about.jsp">关于我</a></li>
						<li><a href="#">&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
						<li><a href="contact.jsp">意见箱</a></li>
						<li><a href="#">&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
						<li><a href="explain.jsp">说明</a></li>

					</ul>
				</div>
			</div>

			<div id="nav-aside">
				<ul class="nav-aside-menu">
					<li><a href="index.html">首页</a></li>
					<li class="has-dropdown">
					<li><a href="category.html">分类</a></li>
					</li>
					<li><a href="about.html">关于我们</a></li>
					<li><a href="contact.html">意见箱</a></li>
				</ul>
				<button class="nav-close nav-aside-close">
					<span></span>
				</button>
			</div>
		</div>

		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-offset-1 col-md-10 text-center">
						<div class="author">
							<img class="author-img center-block" src="./img/avatar-1.jpg"
								alt="">
							<h1 class="text-uppercase">John Doe</h1>
							<p class="lead">代码这东西还是要敲的,不然都不知道这到底是怎么回事.talk is cheap, show
								me the code!!!</p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- /HEADER -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-8">
					<!-- post -->
					<div class="post post-row">
						<a class="post-img" href="blog-post.html"><img
							src="./img/post-13.jpg" alt=""></a>
						<div class="post-body">
							<div class="post-category">
								<a href="category.html">Travel</a> <a href="category.html">Lifestyle</a>
							</div>
							<h3 class="post-title">
								<a href="blog-post.html">Mel ut impetus suscipit tincidunt.
									Cum id ullum laboramus persequeris.</a>
							</h3>
							<ul class="post-meta">
								<li><a href="author.html">John Doe</a></li>
								<li>20 April 2018</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam...</p>
						</div>
					</div>
					<!-- /post -->

					<!-- post -->
					<div class="post post-row">
						<a class="post-img" href="blog-post.html"><img
							src="./img/post-1.jpg" alt=""></a>
						<div class="post-body">
							<div class="post-category">
								<a href="category.html">Travel</a>
							</div>
							<h3 class="post-title">
								<a href="blog-post.html">Sed ut perspiciatis, unde omnis
									iste natus error sit</a>
							</h3>
							<ul class="post-meta">
								<li><a href="author.html">John Doe</a></li>
								<li>20 April 2018</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam...</p>
						</div>
					</div>
					<!-- /post -->

					<!-- post -->
					<div class="post post-row">
						<a class="post-img" href="blog-post.html"><img
							src="./img/post-5.jpg" alt=""></a>
						<div class="post-body">
							<div class="post-category">
								<a href="category.html">Lifestyle</a>
							</div>
							<h3 class="post-title">
								<a href="blog-post.html">Postea senserit id eos, vivendo
									periculis ei qui</a>
							</h3>
							<ul class="post-meta">
								<li><a href="author.html">John Doe</a></li>
								<li>20 April 2018</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam...</p>
						</div>
					</div>
					<!-- /post -->

					<!-- post -->
					<div class="post post-row">
						<a class="post-img" href="blog-post.html"><img
							src="./img/post-6.jpg" alt=""></a>
						<div class="post-body">
							<div class="post-category">
								<a href="category.html">Fashion</a> <a href="category.html">Lifestyle</a>
							</div>
							<h3 class="post-title">
								<a href="blog-post.html">Sed ut perspiciatis, unde omnis
									iste natus error sit</a>
							</h3>
							<ul class="post-meta">
								<li><a href="author.html">John Doe</a></li>
								<li>20 April 2018</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam...</p>
						</div>
					</div>
					<!-- /post -->

					<!-- post -->
					<div class="post post-row">
						<a class="post-img" href="blog-post.html"><img
							src="./img/post-7.jpg" alt=""></a>
						<div class="post-body">
							<div class="post-category">
								<a href="category.html">Health</a> <a href="category.html">Lifestyle</a>
							</div>
							<h3 class="post-title">
								<a href="blog-post.html">Ne bonorum praesent cum, labitur
									persequeris definitionem quo cu?</a>
							</h3>
							<ul class="post-meta">
								<li><a href="author.html">John Doe</a></li>
								<li>20 April 2018</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam...</p>
						</div>
					</div>
					<!-- /post -->

					<div class="section-row loadmore text-center">
						<a href="#" class="primary-button">Load More</a>
					</div>
				</div>

				<div class="col-md-4">
					<!-- ad widget-->
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block; margin: auto;"> <img
							class="img-responsive" src="./img/ad-3.jpg" alt="">
						</a>
					</div>
					<!-- /ad widget -->

					<!-- social widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Social Media</h2>
						</div>
						<div class="social-widget">
							<ul>
								<li><a href="#" class="social-facebook"> <i
										class="fa fa-facebook"></i> <span>21.2K<br>Followers
									</span>
								</a></li>
								<li><a href="#" class="social-twitter"> <i
										class="fa fa-twitter"></i> <span>10.2K<br>Followers
									</span>
								</a></li>
								<li><a href="#" class="social-google-plus"> <i
										class="fa fa-google-plus"></i> <span>5K<br>Followers
									</span>
								</a></li>
							</ul>
						</div>
					</div>
					<!-- /social widget -->

					<!-- category widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Categories</h2>
						</div>
						<div class="category-widget">
							<ul>
								<li><a href="#">Lifestyle <span>451</span></a></li>
								<li><a href="#">Fashion <span>230</span></a></li>
								<li><a href="#">Technology <span>40</span></a></li>
								<li><a href="#">Travel <span>38</span></a></li>
								<li><a href="#">Health <span>24</span></a></li>
							</ul>
						</div>
					</div>
					<!-- /category widget -->

					<!-- newsletter widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Newsletter</h2>
						</div>
						<div class="newsletter-widget">
							<form>
								<p>Nec feugiat nisl pretium fusce id velit ut tortor
									pretium.</p>
								<input class="input" name="newsletter"
									placeholder="Enter Your Email">
								<button class="primary-button">Subscribe</button>
							</form>
						</div>
					</div>
					<!-- /newsletter widget -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<footer id="footer">
		<div class="container">
			<div class="footer-bottom row">
				<div class="col-md-6 col-md-push-6">
					<ul class="footer-nav">
						<li><a href="index.jsp">首页</a></li>
						<li><a href="about.jsp">关于我</a></li>
						<li><a href="contact.jsp">意见箱</a></li>
						<li><a href="blank.jsp">说明</a></li>
					</ul>
				</div>
				<div class="col-md-6 col-md-pull-6">
					<div class="footer-copyright">
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="index.html" target="_blank">Colorlib</a>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>