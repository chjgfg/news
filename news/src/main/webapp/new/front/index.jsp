<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="./head.jsp" %>
</head>

<body>

	<div class="section">
		<div class="container">
			<div id="hot-post" class="row hot-post">
				<div class="col-md-9">
					<div class="post post-thumb">
						<a class="post-img" href="index.jsp"><img src="./img/lyf.jpg"
							alt=""></a>
						<div class="post-body">
							<h2 class="post-title">
								<a href="index.jsp">欢迎来到MY-NEWS</a>
							</h2>
							<ul class="post-meta">
								<li><a href="index.jsp">about</a></li>
                <li>9 June 2020</li>
							</ul>
						</div>

					</div>
				</div>

				<div class="col-md-3 hot-post-right">
					<div
						style="width: 100%; margin: 30% auto; background-color: #FFFFFC; box-shadow: 2px 2px 10px #909090; border-radius: 8px;">
						<br />
						<div style="width: 90%; margin: 0 auto;">
							<h3 style="margin-top: 5%;">作者简介</h3>
							<table style="border-collapse: separate; border-spacing: 10px;">
								<tr>
									<td width="100">姓名:</td>
									<td>吕贻峰</td>
								</tr>
								<tr>
									<td>性别:</td>
									<td>男</td>
								</tr>
								<tr>
									<td>教育背景:</td>
									<td>平顶山学院计算机学院(软件学院)</td>
								</tr>
								<tr>
									<td>介绍:</td>
									<td>在校学生,主攻java,自学了一些东西,踩过好多坑.</td>
								</tr>
							</table>
						</div>
						<br />
					</div>

				</div>

			</div>
		</div>
	</div>

  <br/>
  <br/>
  <br/>

<%@include file="./foot.jsp" %>
</body>

</html>