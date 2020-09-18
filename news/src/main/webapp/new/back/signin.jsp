<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<title>MY-NEWS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		

</script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<script src="js/jquery.min.js">
	
</script>
<script src="js/bootstrap.min.js">
	
</script>
</head>

<body>
	<div class="login">
		<h1>后台登录</h1>
		<div class="login-bottom" style="width: 20%;">
			<div class="col-md-6" style="width: 100%; margin: 0 auto;">
				<div class="login-mail">
					<input type="text" placeholder="Name" required=""
						style="border-radius: 10px;">
					<!-- <i class="fa fa-user-circle"></i> -->
				</div>
				<div class="login-mail">
					<input type="password" placeholder="Password" required=""
						style="border-radius: 10px;">
					<!-- <i class="fa fa-lock"></i> -->
				</div>
				<div style="width: 80%; margin: 0 auto;">
					<button class="btnbb"
						style="width: 90%; margin: 0 auto; background-color: transparent; border-radius: 5px; border: 1px solid black"><i class="fa fa-sign-in" aria-hidden="true"></i></button>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!---->
	<div class="copy-right">
		<div class="footer-copyright">
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="index.jsp" target="_blank">MY-NEWS</a>
					</div>
	</div>

	<script type="text/javascript">
		$(function() {
			var d = /^[\d]{6}$/
			var s =/^[a-zA-Z]{3}$/
			$(".btnbb").click(function() {
				var k = $("input[type=text]").val()
				var v = $("input[type=password]").val()
				if(!s.test(k)){
					alert("账号格式不正确")
					
					return false;
				}
				if(!d.test(v)){
					alert("密码格式不正确")
					return false;
				}
			
				$.get("${pageContext.request.contextPath}/admin/findOne/"+k+"/"+v,function(data){
					console.log(data);
					if(data.aId !== -1){
						alert("登录成功");
						window.location.replace("${pageContext.request.contextPath}/new/back/index.jsp")
					}else if(data.aId=== -1){
						alert("登录失败");
						window.location.replace("${pageContext.request.contextPath}/new/back/error.jsp")
					}
				},"json");
				
			})
		})
	</script>
</body>

</html>