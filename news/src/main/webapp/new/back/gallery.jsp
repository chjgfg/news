<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<%@include file="./head.jsp"%>

<body>
	<div id="wrapper">

		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="content-main">

				<div class="banner">
					<h2>
						<a href="index.jsp">Home</a> <i class="fa fa-angle-right"></i> <span>Gallery</span>
					</h2>
				</div>



				<div class="gallery">

					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga1.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga1.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga2.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga2.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga3.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga3.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga4.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga4.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga5.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga5.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga6.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga6.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga7.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga7.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga8.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga8.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga2.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga2.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga4.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga4.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>
					<div class="col-md">
						<div class="gallery-img">
							<a href="images/ga1.jpg"
								class="b-link-stripe b-animate-go  swipebox" title="Image Title">
								<img class="img-responsive " src="images/ga1.jpg" alt="" /> <span
								class="zoom-icon"> </span>
							</a> </a>
						</div>
						<div class="text-gallery">
							<h6>Lorem ipsum</h6>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>

				<%@include file="./foot.jsp"%>
			</div>

		</div>
		<div class="clearfix"></div>
	</div>

	<!---->
	<link rel="stylesheet" href="css/swipebox.css">
	<script src="js/jquery.swipebox.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
		$(".fa-search").click(function() {
			console.log($('.sssss').val())
		});
	</script>


</body>

</html>