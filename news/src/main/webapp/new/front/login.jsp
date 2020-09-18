<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<title>登录</title>
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="User Login Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script src="js/jquery-2.1.4.min.js"></script>
</head>

<body>
	<div class="login-section">
		<div class="login w3l" style="margin-left: 25%; margin-top: 20%;">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<h2>登录</h2>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-form">
						<input type="text" class="user" name="username"
							placeholder="账号..." required="" /> <input type="password"
							class="lock" name="password" placeholder="密码..." required="" />
						<div class="signin-rit">
							<a class="forgot" href="register.jsp" style="color: #00ADF2;">没有账号去注册</a>
						</div>
						<br />
						<br />
						<br /> <input type="submit" value="登录" class="sssss"
							style="background-color: #00ADF2; border-radius: 5px;">
					</div>
				</div>
			</div>

			<div class="clear"></div>
		</div>

		<div class="clear"></div>
	</div>

	<script type="text/javascript">
		var d = /^[\d]{6}$/
		var s = /^[a-zA-Z]{3}$/

		$('.sssss').click(function() {
			var a = $(".user").val();
			var b = $('.lock').val();

			if (!s.test(a)) {
				alert("账号格式不正确")
				return false;
			}
			if (!d.test(b)) {
				alert("密码格式不正确")
				return false;
			}
			$.get("${pageContext.request.contextPath}/student/findOne/"+a+"/"+b,function(data){
				console.log(data);
				if(data.sId !== -1){
					alert("登录成功");
					window.location.replace("${pageContext.request.contextPath}/new/front/index.jsp")
				}else if(data.sId === -1){
					alert("登录失败");
					window.location.replace("${pageContext.request.contextPath}/new/front/error.jsp")
				} 
			},"json");
		})
	</script>

</body>

</html>