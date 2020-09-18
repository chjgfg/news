<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<title>注册</title>
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="User Login Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet'
	type='text/css'>
<script src="js/jquery-2.1.4.min.js"></script>
</head>

<body>
	<div class="signup" style="width: 98%;">
		<div class="modal-content modal-info"
			style="margin: 0 auto; width: 30%;">
			<div class="modal-header" style="margin-top: 20%;">
				<h3>注册</h3>
			</div>
			<div class="modal-body modal-spa">
				<div class="login-form">
					<div id="signup">
						<ol>
							<li><input type="text" id="name" name="name"
								placeholder="用户名..." required /></li>
							<li><input type="email" id="email" name="email"
								placeholder="邮箱..." required /></li>
							<li><input type="tel" id="tel" name="tel"
								placeholder="电话..." required /></li>
							<li><input type="password" id="lock1" name="password"
								pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*"
								placeholder="密码..." id="password1" required /></li>
							<li><input type="password" id="lock2" name="password"
								pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*"
								placeholder="重输密码..." id="password2" required /></li>
						</ol>
						<div class="signin-rit">
							<a class="forgot" href="login.jsp" style="color: #00ADF2;">已有账号去登录</a>
						</div>
						<br />
						<br />
						<br /> <input type="submit" value="注册" class="sssss"
							style="background-color: #00ADF2; border-radius: 5px;">
					</div>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var f = /^[a-zA-Z]{3}$/ /*账号*/
		var g = /^[\d]{6}$/ /*密码*/
		var h = /^\d{11}$/ /*手机*/
		var i = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/ /*邮箱*/

		$('.sssss').click(function() {
			var a = $("#name").val();
			var b = $('#email').val();
			var c = $('#tel').val();
			var d = $('#lock1').val();
			var e = $('#lock2').val();

			if (!f.test(a)) {
				alert("账号格式不正确")
				return false;
			}
			if (!i.test(b)) {
				alert("邮箱格式不正确")
				return false;
			}
			if (!h.test(c)) {
				alert("电话号格式不正确")
				return false;
			}
			if (!g.test(d)) {
				alert("密码格式不正确")
				return false;
			}
			if (!g.test(e)) {
				alert("第二次密码格式不正确")
				return false;
			}
			if (e !== d) {
				alert("两次输入密码不同")
				return false;
			}
			
			$.post("${pageContext.request.contextPath}/student/saveOne/"+a+"/"+b+"/"+c+"/"+d,function(data){
				console.log(data);
				if(data === 1){
					$("#name").val("");
					$('#email').val("");
					$('#tel').val("");
					$('#lock1').val("");
					$('#lock2').val("");
					alert("注册成功,去登陆");
					window.location.replace("${pageContext.request.contextPath}/new/front/login.jsp")
				}else{
					alert("注册失败");
				} 
			},"json");

		})
	</script>

</body>

</html>