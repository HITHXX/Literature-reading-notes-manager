<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Logs</title>
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap-3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/about.css">

<link rel="stylesheet" href="bootstrap-3.3.7/css/jasny-bootstrap.css">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<script src="js/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="banner">
<nav class="navbar navbar-default">
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					 <ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="services.html">Services</a></li>
						
						<li><a href="contact.html">Contact Us</a></li>
					  </ul>
					</div>
					</nav>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">ReadingNotes</a>
		</div>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">

		<div>
			<ul class="nav navbar-nav">
				<!-- 				<li><a href="home.jsp">首页</a></li> -->
				<li><a href="#">阅读笔记</a></li>
				<li><a href="down_list.action">我的文件</a></li>
				<li><a href="FetchClasses.action">上传文件</a></li>
				<li><a href="getTree.action">分类树</a></li>
				<li><a href="userLog.action">用户日志</a>
				<li class="active"><a href="readingTimeLine.action">阅读时间线</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span> UserID:<s:property value="#session.username" /><b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="index.jsp">登出</a></li>
					</ul></li>
			</ul>

		</div>
	</div>
	</nav>
	
	<div class="myTabContent" id="tab-content">
		<div class="tab-pane fade in active" id="All">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="box">
							<ul class="event_list">
								<s:iterator value="readList" status="stat">
										<li>
											<span><s:property value="Time" /></span>
											<p><span><s:property value="Operation" /></span></p>
										</li>
								</s:iterator>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>