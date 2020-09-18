<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MY-NEWS</title>

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CMuli:400,700"
	rel="stylesheet">

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<link rel="stylesheet" href="css/font-awesome.min.css">

<link type="text/css" rel="stylesheet" href="css/style.css" />

<!-- <link rel="stylesheet" href="css/editormd.css" /> -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/main.js"></script>
<!-- <script src="js/editormd.js"></script>
<script src="lib/marked.min.js"></script>
<script src="lib/prettify.min.js"></script> -->
<!-- <script src="https://cdn.bootcss.com/showdown/1.3.0/showdown.min.js"></script> -->
<script src="js/showdown.min.js"></script>

<%
	pageContext.setAttribute("PATH", request.getContextPath());
%>
</head>
<body>
	<header id="header">
		<div id="nav">
			<div id="nav-top">
				<div class="container">

					<div class="nav-logo">
						<a href="category.jsp" class="logo"><img src="./img/logos.png"alt=""></a>
					</div>

					<div class="nav-btns">
						<button class="cdsdcscs">${stu.sName}</button>
						<button class="aside-btn"><i class="fa fa-bars"></i></button>
						<button class="search-btn"><i class="fa fa-search"></i></button>
						<div id="nav-search">
							<form>
								<input class="input" name="search"
									placeholder="Enter your search...">
							</form>
							<button class="nav-close search-close nybtnnnn">
								<span></span>
							</button>
						</div>
					</div>

				</div>
			</div>

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
					<li><a href="index.jsp">首页</a></li>
					<li><a href="category.jsp">分类</a></li>
					<li><a href="about.jsp">关于我</a></li>
					<li><a href="contact.jsp">意见箱</a></li>
					<li><a href="explain.jsp">说明</a></li>
					<li><a class="loginjsp" style="cursor: pointer;"></a></li>
				</ul>
				<button class="nav-close nav-aside-close">
					<span></span>
				</button>
			</div>


		</div>

	</header>

	<script>
	
		$(document).click(function(event) {
			if (!$(event.target).closest($('#nav-aside')).length) {
				if ($('#nav-aside').hasClass('active')) {
					$('#nav-aside').removeClass('active');
					$('#nav').removeClass('shadow-active');
				} else {
					if ($(event.target).closest('.aside-btn').length) {
						$('#nav-aside').addClass('active');
						$('#nav').addClass('shadow-active');
					}
				}
			}
		});
		
		$('.nav-aside-close').on('click', function() {
			$('#nav-aside').removeClass('active');
			$('#nav').removeClass('shadow-active');
		});
		
		if($('.cdsdcscs').text() === ''){
			$('.loginjsp').append('登录')
		}else if($('.cdsdcscs').text() !== ''){
			console.log($('.cdsdcscs').text())
			console.log($('.loginjsp').text())
			$('.loginjsp').append('退出')
		}
		
		
		
		$('.nybtnnnn').click(function() {
			var d = $(this).siblings('form').children('input').val();
			console.log(d)
			var twoUrl = encodeURI("newsList.jsp?dddd=" + d); //使用encodeURI编码  
			location.href = twoUrl;
		})
		
		$('.loginjsp').click(function(){
			$.ajax({
				url:'${PATH}/student/deleteOneFromSession',
				type:'DELETE',
				 dataType: "json",
		         contentType:'application/json',
				 success:function(data){
						console.log(data);
						if(data === 1 && $('.cdsdcscs').text() !== ''){
							alert("退出成功");
							window.location.replace("${pageContext.request.contextPath}/new/front/login.jsp")
						}else if(data === 1 && $('.cdsdcscs').text() === ''){
							window.location.replace("${pageContext.request.contextPath}/new/front/login.jsp")
						}
				 } 
			})
			
		})
	</script>






</body>
</html>