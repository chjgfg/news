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
						<a href="index.jsp">Home</a> <i class="fa fa-angle-right"></i> <span>Index</span>

					</h2>
				</div>

				<div class="content-top">

					<div class="ssssss">

						<div class="col-md-4 " style="margin-top: 1%;" id="add-model">
							<div class="content-top-1">
								<div class="col-md-6 top-content">
									<i class="fa fa-plus" data-toggle="modal" style="font-size: 40px; cursor: pointer;"></i>添加
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

					</div>

					<div class="clearfix"></div>
				</div>

				<div class="content-mid">

					<div class="clearfix"></div>
				</div>


				<%@include file="./foot.jsp"%>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!--dialog-->

	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		data-backdrop="static" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document" style="width: 20%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">分类添加</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="recipient-name" class="control-label">分类名称:</label> <input
							type="text" class="form-control input-text" id="recipient-name"
							style="width: 100% !important;">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">分类简介:</label>
						<textarea name="" rows="5" class="textarea-text" cols="39"
							style="resize: none;"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary  click-add-btn">确定添加</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		data-backdrop="static" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document" style="width: 20%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">分类修改</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="recipient-name" class="control-label">分类名称:</label> 
						<input type="text" class="form-control dddd" id="recipient-name cdcdcdc" style="width: 100% !important;">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">分类简介:</label>
						<textarea name="" rows="5" cols="39" id="textarea-text" style="resize: none;"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary click-update-btn">确定修改</button>
				</div>
			</div>
		</div>
	</div>

	<div class="clearfix"></div>
	</div>
	</div>

	</div>

	<script type="text/javascript">
	
		//初始化数据
		function show(){
			$.get("${PATH}/category/findAll",function(data){
				//console.log(data);
				data.forEach((item)=>{ 
					//console.log(item);
					var e = item.cName.substr(0,item.cName.length)
					//console.log(e);
					var w = $('<label class="clickIt"  style="cursor: pointer;">'+e+'</label>').attr("value",item.cId)
					var a = $('<div class="col-md-8 top-content"></div>').append(w)
					var ab = $('<i class="fa fa-pencil click-update" data-toggle="modal" data-target="#exampleModal" style="cursor: pointer;" >修改</i>').attr("value",item.cId)
					var ac = $('<i class="fa fa-times-circle click-div deleteone" style="cursor: pointer;">删除</i>').attr("value",item.cId)
					var b = $('<div class="col-md-4 top-content">').append(ab).append('<br /> <br />').append(ac)
					var c = $('<div class="clearfix"></div>')
					var d = $('<div class="content-top-1"></div>').append(a).append(b).append(c);
					$('<div class="col-md-4  col-div" style="margin-top: 1%;cursor: pointer;"></div>').append(d).prependTo(".ssssss")
				})
				
			},"json");
		}
		
		show()
	
		//跳到分类详情页
		$(document).on("click",".clickIt",function() {
			var k = $(this).attr("value");//获取值
			console.log(k)
			var twoUrl = encodeURI("newsList.jsp?dddd="+k); //使用encodeURI编码  
       	    location.href = twoUrl;
		});
		
		

		$(".col-div").click(
			function() {
				var label = $(this).find(".content-top-1").children(".col-md-6").children("label").text()
				console.log(label)
		})
		
		//打开修改模态框
		var d;
		$(document).on("click",'.click-update',function() {
			$("#exampleModal").modal({});
			d = $(this).attr('value')
			//console.log(d);
			$.get("${PATH}/category/findOne/"+d,function(data){
				//console.log(data);
				$(".dddd").val(data.cName)
				$("#textarea-text").val(data.cContext)
			},"json");
		})


		//打开添加模态框
		$('#add-model').click(function(event) {
			$("#exampleModal2").modal({});
		})

		//添加模态框按钮
		$(".click-add-btn").click(function() {
			var k = $(".input-text").val()
			var v = $(".textarea-text").val()
			$.post("${PATH}/category/saveOne/"+k+"/"+v,function(data){
				//console.log(data);
				if(data === 1){
					$("#exampleModal2").modal('hide');
					alert("添加成功");
				}
			},"json");
			window.location.reload();
		})

		//修改模态框按钮
		$(".click-update-btn").click(function() {
			var k = $(".dddd").val()
			var v = $("#textarea-text").val()
			console.log(d);
			var obj = {
					'cId':d,
					'cName':k,
					'cContext':v
			}
			$.ajax({
				url:"${PATH}/category/updateOne", 
				type:"PUT",
				data:JSON.stringify(obj),
	            dataType: "json",
	            contentType:'application/json',
				success:function(data){
					console.log(data);
					if(data === 1){
						$("#exampleModal").modal('hide');
						alert("修改成功");
					}
				} 
			});
			window.location.reload();
		})
		
		
		//删除
		$(document).on("click",'.deleteone',function() {
			var s  = $(this).attr('value')
			console.log(s);
			$.ajax({
				url:"${PATH}/category/deleteOne/"+s, 
				type:"DELETE",
	            dataType: "json",
	            contentType:'application/json',
				success:function(data){
					console.log(data);
					if(data === 1){
						alert("删除成功");
						show();
						window.location.reload();
					}
				} 
			});
		})
		

	</script>
</body>

</html>