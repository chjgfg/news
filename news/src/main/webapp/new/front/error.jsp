<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>error</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="../back/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="../back/css/style.css" rel='stylesheet' type='text/css' />
<link href="../back/css/font-awesome.css" rel="stylesheet">
<script src="../back/js/jquery.min.js">
	
</script>
<script src="../back/js/bootstrap.min.js">
	
</script>
</head>
<body>
	<div class="four">
		<img src="../back/images/404.png" alt="" />
		<p>Lorem Ipsum is simply dummy text of the printing and
			typesetting industry.</p>
		<a class="hvr-shutter-in-horizontal  ddddd" style="cursor: pointer;">返回</a>
	</div>
	<!---->
	<div class="copy-right">
		<div class="footer-copyright">
			Copyright &copy;
			<script>
				document.write(new Date().getFullYear());
			</script>
			All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by MY-NEWS
		</div>
		<!---->
		<!--scrolling js-->
		<script src="../back/js/jquery.nicescroll.js"></script>
		<script src="../back/js/scripts.js"></script>
		<!--//scrolling js-->
		<script>
			$('.ddddd').click(function(){
				window.location.replace("${pageContext.request.contextPath}/new/front/login.jsp");
			})
		</script>
</body>
</html>

