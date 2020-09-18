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
						<span>table</span>
					</h2>
				</div>

				<div class="content-top">

					<div class="col-md-12" style="width: 96%; margin-left: 2%;">
						<!--cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc-->

						<div class="col-md-12" style="width: 100%; margin: 0 auto;">
							<table class="table col-md-12 table-hover table-bordered">
								<thead>
									<tr>
										<th>id</th>
										<th>name</th>
										<th>phone</th>
										<th>email</th>
										<th>pass</th>
										<th>status</th>
										<th>operate</th>
									</tr>
								</thead>
								<tbody id="tbody">
									<!-- <tr>
										<td>1</td>
										<td>csdcds</td>
										<td>wdwad</td>
										<td>daad</td>
										<td>adad</td>
										<td>1</td>
										<td>
											<button type="button" class="btn btn-info btn-sm">
												<span class="fa fa-edit click-update" val="1">修改</span>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<span class="fa fa-trash">删除</span>
											</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>csdcds</td>
										<td>wdwad</td>
										<td>daad</td>
										<td>adad</td>
										<td>1</td>
										<td>
											<button type="button" class="btn btn-info btn-sm">
												<span class="fa fa-edit">修改</span>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<span class="fa fa-trash">删除</span>
											</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>csdcds</td>
										<td>wdwad</td>
										<td>daad</td>
										<td>adad</td>
										<td>1</td>
										<td>
											<button type="button" class="btn btn-info btn-sm">
												<span class="fa fa-edit">修改</span>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<span class="fa fa-trash">删除</span>
											</button>
										</td>
									</tr> -->
								</tbody>
							</table>
						</div>

						<!--cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc-->
					</div>

					<div class="clearfix"></div>
				</div>

				<!----------------------------------------------------------------------------------------------------->

				<div class="modal fade" id="empUpdateModal" data-backdrop="static"
					tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">学生信息修改</h4>
							</div>
							<div class="modal-body">

								<!-- 修改 -->
								<form class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-2 control-label">name</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" id="update_name"
												name="name">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">email</label>
										<div class="col-sm-8">
											<input type="email" class="form-control" id="update_email"
												name="email"> <span class="help-block"></span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">phone</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" id="update_phone"
												name="phone"> <span class="help-block"></span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">password</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" id="update_password"
												name="password"> <span class="help-block"></span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">status</label>
										<div class="col-sm-4">
											<select class="form-control" name="dId" id="status">
												<option value="1" selected="selected">可访问</option>
												<option value="2">必须登录</option>
												<!-- <option value="3">不用登陆</option>
												<option value="4">必须登录</option> -->
											</select>
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary" id="emp_update">更新</button>
							</div>
						</div>
					</div>
				</div>

				<div class="content-mid">

					<div style="margin-left: 45%; width: 50%;">

						<!--分页-->
						<!-- 	<nav aria-label="Page navigation">
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
 -->
					</div>

					<div class="clearfix"></div>
				</div>

				<%@include file="./foot.jsp"%>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript">

		$.get("${PATH}/student/findAll", function(data) {
			console.log(data);
			data.forEach((item)=>{
				var a = $('<td></td>').append(item.sId)
				var b = $('<td></td>').append(item.sName)
				var c = $('<td></td>').append(item.sTelephone)
				var d = $('<td></td>').append(item.sEmail)
				var e = $('<td></td>').append(item.sPassword)
				var f = $('<td></td>').append(item.saId)
				var fg = $('<span class="fa fa-edit click-update">修改</span>').attr('val',item.sId)
				var g = $('<button type="button" class="btn btn-info btn-sm"></button>').append(fg)
				var h = $('<button type="button" class="btn btn-danger btn-sm"><span class="fa fa-trash">删除</span></button>')
				var i = $('<td></td>').append(g).append(h)
				var j = $('<tr></tr>').append(a).append(b).append(c).append(d).append(e).append(f).append(i).appendTo('#tbody')
			})
		})

		$(document).on('click', '.click-update', function() {
			$('#empUpdateModal').modal({})
			var k = $(this).attr("val")
			$('#emp_update').attr("val", k)
			$.get("${PATH}/student/findOneById/"+k, function(data) {
				console.log(data);
				$(this).attr("val")
				$('#update_name').val(data.sName)
				$('#update_email').val(data.sEmail)
				$('#update_phone').val(data.sTelephone)
				$('#update_password').val(data.sPassword)
				$('#status option[value="'+data.saId+'"]').prop('selected', true)
			})
		})

		$(document).on('click','.btn-danger',function() {
			var a = $(this).siblings('button').children('span').attr('val')
			console.log(a)
			$.ajax({
				url:'${PATH}/student/deleteOne/'+a,
				type:"DELETE",
				dataType: "json",
		        contentType:'application/json',
		        success:function(data){
					console.log(data);
					if(data === 1){
						alert("删除成功");
					}
				} 
			})
			window.location.reload();
		})

		$('#emp_update').click(function() {
			var w = $(this).attr("val")
			var a = $('#update_name').val()
			var b = $('#update_email').val()
			var c = $('#update_phone').val()
			var d = $('#update_password').val()
			var e = $('#status option:selected').val()
			var obj = {
				'sId' : w,
				'sName' : a,
				'sEmail' : b,
				'sTelephone' : c,
				'sPassword' : d,
				'saId' : e
			}
			$.ajax({
				url:"${PATH}/student/updateOne", 
				type:"PUT",
				data:JSON.stringify(obj),
	            dataType: "json",
	            contentType:'application/json',
				success:function(data){
					console.log(data);
					if(data === 1){
						$("#empUpdateModal").modal('hide');
						alert("修改成功");
						window.location.reload();
					}
				} 
			});
			
		})
	</script>
</body>

</html>