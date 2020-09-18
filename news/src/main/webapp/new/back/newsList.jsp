<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<%@include file="./head.jsp"%>

<body>
	<div id="wrapper">


		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="content-main">

				<!--banner-->
				<div class="banner">

					<h2>
						 <a href="index.jsp">Home</a>
						  <i class="fa fa-angle-right"></i>
						 <a href="index.jsp">Dashboard</a> 
						 <i class="fa fa-angle-right"></i>
						<span>NewsList</span>
					</h2>
				</div>

				<div class="content-top">

					<div class="aaaaaaaa">

						<!-- <div class="col-md-4 clickIt" style="margin-top: 1%;">
							<div class="content-top-1">
								<div class="col-md-12 top-content">
									<h5>Tasks</h5>
									<label>8761</label>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>

						<div class="col-md-4 " style="margin-top: 1%;">
							<div class="content-top-1">
								<div class="col-md-6 top-content">
									<h5>Tasks</h5>
									<label>8761</label>
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

						<div class="col-md-4 " style="margin-top: 1%;">
							<div class="content-top-1">
								<div class="col-md-6 top-content">
									<h5>Tasks</h5>
									<label>8761</label>
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

						<div class="col-md-4 " style="margin-top: 1%;">
							<div class="content-top-1">
								<div class="col-md-6 top-content">
									<h5>Tasks</h5>
									<label>8761</label>
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

						<div class="col-md-4 " style="margin-top: 1%;">
							<div class="content-top-1">
								<div class="col-md-6 top-content">
									<h5>Tasks</h5>
									<label>8761</label>
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

						<div class="col-md-4 " style="margin-top: 1%;">
							<div class="content-top-1">
								<div class="col-md-6 top-content">
									<h5>Points</h5>
									<label>6295</label>
								</div>

								<div class="clearfix"></div>
							</div>
						</div> -->

					</div>

					<div class="clearfix"></div>
				</div>




				<div class="content-mid">

					<!-- <div style="margin-left: 45%; width: 50%;">

						分页
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>

					</div> -->

					<div class="clearfix"></div>
				</div>


				<%@include file="./foot.jsp"%>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<script src="js/bootstrap.min.js">
		
	</script>

	<script type="text/javascript">
		$(function() {
			$(".clickIt").click(function() {
				window.location.replace("forms.jsp")
			})
		})
		$(".fa-search").click(function() {
			console.log($('.sssss').val())
		});
		
		
		//获取 上一个搜索页面传来的参数  
	    var num = window.location.href;
	    var newnum = num.split("="); //截取 url中的“=”,获得“=”后面的参数  
	    var num = decodeURI(newnum[1]); //decodeURI解码  
	    console.log(num)
		$.get("${PATH}/news/findList/"+num,function(data){
				//console.log(data);
				data.forEach((item)=>{
					console.log(item.nTitle);
					var n = item.nTitle;
					var k = n ;

					if(n.length > 22){
						k = n.substring(0,22) + "...";
					}
					console.log("k --- >"+k);
					var w =  $('<h4 class="clickIt"  style="cursor: pointer;"></h4>').append(k)
					var a = $('<h5><i class="fa fa-times-circle click-div deleteone" style="cursor: pointer;">删除</i></h5>').attr("value",item.nId)
					var b = $('<div class="col-md-12 top-content"></div>').append(a).append(w)
					var c = $('<div class="content-top-1"></div>').append(b).append('<div class="clearfix"> </div>')
					$('<div class="col-md-4" style="margin-top: 1%;"></div>').append(c).appendTo(".aaaaaaaa")
					d = "";
				}) 
				
		},"json");
		
	    
	    //转向forms.jsp
	    $(document).on("click",".clickIt",function() {
	    	var k = $(this).siblings("h5").attr("value");
			console.log(k); 
			var twoUrl = encodeURI("forms.jsp?sssssss="+num+"="+k); //使用encodeURI编码  
       	    location.href = twoUrl;
		});
	    
	    
	    

		//删除
		$(document).on("click",'.deleteone',function() {
			var s  = $(this).parent("h5").attr('value')
			console.log(s);
			$.ajax({
				url:"${PATH}/news/deleteOne/"+s, 
				type:"DELETE",
	            dataType: "json",
	            contentType:'application/json',
				success:function(data){
					console.log(data);
					if(data === 1){
						alert("删除成功");
						window.location.reload();
					}
				} 
			});
		})
		
	</script>
</body>

</html>