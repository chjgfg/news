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
						<a href="index.jsp">Home</a> <i class="fa fa-angle-right"></i> <span>Inbox</span>
					</h2>
				</div>

				<!--//grid-->
				<div class="graph">
					<div class="graph-grid">

						<div class="col-md-12 graph-2">
							<div class="grid-1">
								<h4>Line</h4>
								<div id="" style="width: 50%; margin: 0 auto;">
									<canvas id="line1" height="300" width="500"
										style="width: 50%; height: 300px; margin: 0 auto;"></canvas>
								</div>
								<script>
								var k = new Array();
								var v = new Array();
								$.get("${PATH}/category/findAll",function(data){
									data.forEach((item)=>{
										//console.log(item.cId);
										$.get("${PATH}/news/count/"+item.cId,function(data){
											/* console.log(data);
											console.log(item.cName); */
											k.push(item.cName);
											v.push(data);
										},"json");
									})
								},"json");
								
								console.log(k);
								console.log(v);
								
									var lineChartData = {
										labels : ["政治要闻","经济战略", "法律天地","军事纪实","科技前沿","文化教育","体育竞技","社会风尚"],
										datasets : [ {
											fillColor : "#fff",
											strokeColor : "#1ABC9C",
											pointColor : "#1ABC9C",
											pointStrokeColor : "#1ABC9C",
											data : [ 3, 4, 3, 4,,7,4,5,5]
										} ]

									};
									new Chart(document.getElementById("line1").getContext("2d")).Line(lineChartData);
								</script>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>

				</div>

				<!---->
				<%@include file="./foot.jsp"%>


			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<!---->

	<script src="js/bootstrap.min.js">
		
	</script>

	<!-- Mainly scripts -->
	<script src="js/jquery.metisMenu.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<!-- Custom and plugin javascript -->
	<link href="css/custom.css" rel="stylesheet">
	<script src="js/custom.js"></script>
	<script src="js/screenfull.js"></script>
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
		$(".fa-search").click(function() {
			console.log($('.sssss').val())
		});
	</script>

</body>

</html>