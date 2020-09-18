<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<script src="js/jquery.min.js"></script>
<!-- Mainly scripts -->
<script src="js/jquery.metisMenu.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="css/custom.css" rel="stylesheet">
<script src="js/custom.js"></script>
<script src="js/screenfull.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	$(function() {
		$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

		if (!screenfull.enabled) {
			return false;
		}

		$('#toggle').click(function() {
			screenfull.toggle($('#container')[0]);
		});

	});
</script>

<!----->

<!--pie-chart--->
<script src="js/pie-chart.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#demo-pie-1').pieChart(
						{
							barColor : '#3bb2d0',
							trackColor : '#eee',
							lineCap : 'round',
							lineWidth : 8,
							onStep : function(from, to, percent) {
								$(this.element).find('.pie-value').text(
										Math.round(percent) + '%');
							}
						});

				$('#demo-pie-2').pieChart(
						{
							barColor : '#fbb03b',
							trackColor : '#eee',
							lineCap : 'butt',
							lineWidth : 8,
							onStep : function(from, to, percent) {
								$(this.element).find('.pie-value').text(
										Math.round(percent) + '%');
							}
						});

				$('#demo-pie-3').pieChart(
						{
							barColor : '#ed6498',
							trackColor : '#eee',
							lineCap : 'square',
							lineWidth : 8,
							onStep : function(from, to, percent) {
								$(this.element).find('.pie-value').text(
										Math.round(percent) + '%');
							}
						});

			});
</script>
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<script src="js/Chart.js"></script>
<script src="js/editormd.js"></script>
<link rel="stylesheet" href="css/editormd.css" />
<%
	pageContext.setAttribute("PATH", request.getContextPath());
%>
<style type="text/css">
.table th, .table td {
	text-align: center;
	height: 38px;
	font-size: 1.85em;
}

thead {
	background-color: #00C4FF;
}

button {
	border-radius: 5px;
}
</style>
</head>
<body>

	<!----->
	<nav class="navbar-default navbar-static-top" role="navigation">
		<div class="navbar-header">
			<h1>
				<a class="navbar-brand" href="index.jsp">新闻后台</a>
			</h1>
		</div>
		<div class=" border-bottom">
			<div class="full-left">
				<div class=" navbar-left-right">
					<input type="text" value="Search..." class="sssss"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Search...';}">
					<button class="fa fa-search">
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="drop-men">
				<ul class=" nav_1">

					<li class="dropdown"><a href="#"
						class="dropdown-toggle dropdown-at" data-toggle="dropdown"> <span
							class=" name-caret">${user.aName }<i class="caret"></i></span> <img
							src="images/wo.jpg"></a>
						<ul class="dropdown-menu " role="menu" style="cursor: pointer;">
							<li><a href="index.jsp"><i class="fa fa-dashboard "></i>新闻分类管理</a></li>
							<li><a href="graphs.jsp"> <i class="fa fa-area-chart"></i>新闻管理
							</a></li>
							<li><a href="inbox.jsp"><i class="fa fa-inbox"></i> 折线图</a></li>
							<li><a href="table.jsp"><i class="fa fa-table"></i>学生信息管理</a></li>
							<!-- <li><a href="gallery.jsp"><i class="fa fa-picture-o"></i>广告</a></li> -->
							<li><a class="goto"><i class="fa fa-sign-in"></i>退出</a></li>
						</ul></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
			<div class="clearfix"></div>

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li><a href="index.jsp" class=" hvr-bounce-to-right"><i
								class="fa fa-dashboard nav_icon "></i><span class="nav-label">新闻分类管理</span>
						</a></li>
						<li><a href="graphs.jsp" class=" hvr-bounce-to-right"> <i
								class="fa fa-area-chart nav_icon"></i>新闻管理
						</a></li>
						<li><a href="inbox.jsp" class=" hvr-bounce-to-right"><i
								class="fa fa-inbox nav_icon"></i> <span class="nav-label">折线图</span>
						</a></li>
						<li><a href="table.jsp" class=" hvr-bounce-to-right"><i
								class="fa fa-table nav_icon"></i> <span class="nav-label">学生信息管理</span>
						</a></li>

						<!-- <li><a href="gallery.jsp" class=" hvr-bounce-to-right"><i
								class="fa fa-picture-o nav_icon"></i> <span class="nav-label">广告</span>
						</a></li> -->

					</ul>
				</div>
			</div>
	</nav>
	<script>
		$(".fa-search").click(function() {
			console.log($('.sssss').val())
			var d = $('.sssss').val()
			//获取select
			$.get("${PATH}/category/findOneByName/"+d,function(data){
				console.log(data); 
				var twoUrl = encodeURI("layout.jsp?wwwwwwww=" + data.cId); //使用encodeURI编码  
				location.href = twoUrl; 
			},"json");
			
		});

		$(".goto").click(function() {
			$.ajax({
				url:'${PATH}/admin/deleteOne',
				dataType:'json',
				type:'DELETE',
				success:function(data){
					console.log(data); 
					if(data === 1){
						alert('退出成功')
						window.location.replace("${pageContext.request.contextPath}/new/back/signin.jsp")
					}else{
						alert('退出失败')
					}
				}
			})
		})
	</script>
</body>
</html>