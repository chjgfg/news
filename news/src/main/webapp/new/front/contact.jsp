<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="./head.jsp"%>
</head>

<body>

	<div class="page-header">
		<div class="page-header-bg"
			style="background-image: url('./img/header-2.jpg');"
			data-stellar-background-ratio="0.5"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-offset-1 col-md-10 text-center">
					<h1 class="text-uppercase">contact</h1>
				</div>
			</div>
		</div>
	</div>

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-8">
					<div class="section-row">
						<div class="section-title">
							<h2 class="title">Contact Information</h2>
						</div>
						<p>
							如果您对本站新闻的真实性和实时性感到有些疑惑,那就联系我吧!!!<br />如果您对本站有一些特别的想法,那就联系我吧!!!
							<br />如果您对本站作者感到好奇,那就联系我吧!!!<br /><br />温馨提示:请用2083298549@qq.com发送邮件
						</p>
						<ul class="contact">
							<li><i class="fa fa-phone"></i>&nbsp;&nbsp;&nbsp;1599-359-6769</li>
							<li><i class="fa fa-envelope"></i>&nbsp;&nbsp;2083298549@qq.com</a>
							</li>
							<li><i class="fa fa-map-marker"></i>&emsp;河南省平顶山市新华区湖滨路平顶山学院10号楼6楼10620</li>
						</ul>
					</div>

					<div class="section-row">
						<div class="section-title">
							<h2 class="title">Mail me</h2>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input class="input" type="email" name="email"
										placeholder="Email">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input class="input" type="text" name="subject"
										placeholder="Subject">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<textarea class="input" name="message" placeholder="Message"
										style="resize: none;"></textarea>
								</div>
								<button class="primary-button">Submit</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
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

				</div>
			</div>
		</div>
	</div>

	<%@include file="./foot.jsp"%>
	<script type="text/javascript">
	
		$(".primary-button").click(
				function() {
					var email = $("input[type=email]").val();
					var atext = $("input[type=text]").val();
					var atextarea = $("textarea[class=input]").val();
					alert("由于网络原因,发送速度可能会比较慢,请耐心等待结果!!!")
					$.post("${PATH}/news//email/" + email + "/" + atext + "/"+ atextarea, function(data) {
						console.log(data);
						if(data === 1){
							alert("发送成功!!!")
							$("input[type=email]").val("")
							$("input[type=text]").val("")
							$("textarea[class=input]").val("")
						}
					})   
				})
	</script>

</body>

</html>