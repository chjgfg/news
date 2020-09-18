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
						<a class="aaa">NewsList</a>
						<i class="fa fa-angle-right"></i>
						<span>Forms</span>
					</h2>
				</div>

				<div class="graph">
					<div class="graph-grid col-md-12">
						<div id="test-editor">
							<textarea class="aaaatextarea"></textarea>
						</div>


						<div style="width: 80%; margin: 0 auto; font-size: 130%;">
							<div class="graph-grid col-md-4">
								标题:&emsp;<input type="" name="" id="firstone" value=""
									placeholder="文章标题" />
							</div>

							<div class="graph-grid col-md-4">
								来自:&emsp;<input type="" name="" id="secondtow" value=""
									placeholder="来自..." />
							</div>

							<div class="graph-grid col-md-4">
								编辑:&emsp;<input type="" name="" id="thirdthree" value=""
									placeholder="责任编辑" />
							</div>
						</div>

						<div style="margin-top: 5%;">
							<div class="graph-grid col-md-6">
								<div style="width: 80%; margin-left: 23%;">
									<select class="sssssssss" style="width: 50%; font-size: 150%;cursor: pointer;">
										<!-- <option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option> -->
									</select>
								</div>
							</div>

							<div class="graph-grid col-md-6">
								<div style="width: 80%; margin-left: 35%; font-size: 130%;">
									<button class="cleans btn btn-info" style="width: 50%; margin-left: -76%; border-radius:5px;">清空</button>
									<button class="btns  btn btn-primary" style="width: 50%; margin-left: 19%; border-radius:5px;">修改</button>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-12 graph-box1 clearfix"></div>

					<div class="graph-box">

						<div class="col-md-4 graph-4 "></div>
						<div class="col-md-4 graph-5"></div>

						<div class="clearfix"></div>
					</div>
				</div>

				<%@include file="./foot.jsp"%>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<script src="js/bootstrap.min.js">
		
	</script>

	<script src="js/jquery.metisMenu.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
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
	</script>
	<script type="text/javascript">
		$(function() {
			var editor = editormd("test-editor", {
				width : "100%", //宽度，不填为100%
				height : "500px", //高度，不填为100%
				theme : "dark", //主题,不填为默认主题
				path : "./lib/", //editor.md插件的lib目录地址
				saveHTMLToTextarea : true, // 保存 HTML 到 Textarea
				toolbarAutoFixed : true, //工具栏自动固定定位的开启与禁用
			});
		});
		
		//获取select
		$.get("${PATH}/category/findAll",function(data){
			data.forEach((item)=>{
				var e = item.cName.substr(0,item.cName.length)
				$('<option value="'+item.cId+'"  style="cursor: pointer;">'+e+'</option>').appendTo(".sssssssss")
			})
		},"json");

		
		
		//初始化数据
		//获取 上一个搜索页面传来的参数  
	    var num = window.location.href;
	    var newnum = num.split("="); //截取 url中的“=”,获得“=”后面的参数  
	    var num = decodeURI(newnum[1]); //decodeURI解码  
	    var num2 = decodeURI(newnum[2]); //decodeURI解码  
	    console.log(num)
	    console.log(num2)
	    $(".aaa").attr("href","newsList.jsp?dddd="+num);
		$.get("${PATH}/news/findOne/"+num2,function(data){
			console.log(data);
			$(".aaaatextarea").val(data.nContext)
			$("#firstone").val(data.nTitle)
			$("#secondtow").val(data.nFrom)
			$("#thirdthree").val(data.nEdit)
			$("select option[value='"+data.ncId+"']").prop('selected', true);
			$(".btns").attr("value",data.nId);
		},"json"); 

		//获取值
		$(".btns").click(function() {
			var a = $(".aaaatextarea").val()
			var b = $("#firstone").val()
			var c = $("#secondtow").val()
			var d = $("#thirdthree").val()
			var e = $("select option:checked").val()
			var f = $(this).attr("value")
			var obj = {
				'nTitle':b,
				'nFrom':c,
				'nEdit':d,
				'ncId':e,
				'nContext':a,
				'nId':f			 	
			}
			 $.ajax({
				url:'${PATH}/news/updateOne',
				type:"PUT",
				data:JSON.stringify(obj),
				dataType:"json",
				contentType:'application/json',
				success:function(data){
					console.log(data);
					if(data === 1){
						alert("修改成功");
					}
				} 
			}) 
		})
		

		//清空值
		$(".cleans").click(function() {
			$(".aaaatextarea").val("")
			$("#firstone").val("")
			$("#secondtow").val("")
			$("#thirdthree").val("")
			$("select").find("option:first").prop("selected", true);
		})

		$(".fa-search").click(function() {
			console.log($('.sssss').val())
		});
	</script>
<body>
</html>