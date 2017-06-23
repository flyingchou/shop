<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">
		<base target="main" />
		<title>卖家管理系统</title>
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>jslib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/theme.css">
		<link rel="stylesheet"
			href="<%=basePath%>jslib/font-awesome/css/font-awesome.css">
		<script src="<%=basePath%>jslib/jquery-1.7.2.min.js"
			type="text/javascript"></script>

		<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>
		<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	</head>

	<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
	<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
	<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
	<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
	<!--[if (gt IE 9)|!(IE)]><!-->
	<body class="">
		<!--<![endif]-->

		<div class="navbar">
			<div class="navbar-inner" style="background: #dea32c;">
				<ul class="nav pull-right">
					<li id="fat-menu" class="dropdown">
						<a href="#" role="button" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-user"></i>
							${adminusername} <i class="icon-caret-down"></i>
						</a>

						<ul class="dropdown-menu">
							<%-- <li>
								<a href="<%=basePath%>/sys/user/modifyPwd.jsp" tabindex="-1">修改密码</a>
							</li> --%>
							<li class="divider"></li>
							<!-- <li>
								<a tabindex="-1" class="visible-phone" href="#">Settings</a>
							</li> -->
							<li class="divider visible-phone"></li>
							<li>
								<a tabindex="-1" href="<%=basePath%>admin/logout" target="_top">Logout</a>
							</li>
						</ul>
					</li>

				</ul>
				<a class="brand" href="#"><span class="first">欢迎使用</span> <span
					class="second">卖家管理系统</span> </a>
			</div>
		</div>

		<div class="sidebar-nav">
		
					<a href="#error-menu1" class="nav-header collapsed"
						data-toggle="collapse"><i class="icon-briefcase"></i>商品管理<i
						class="icon-chevron-up"></i> </a>
					<ul id="error-menu1" class="nav nav-list collapse">
						
								<li>
									<a href="<%=basePath%>/product/list">商品管理</a>
								</li>
					</ul>
					
					<a href="#error-menu2" class="nav-header collapsed"
						data-toggle="collapse"><i class="icon-briefcase"></i>订单管理<i
						class="icon-chevron-up"></i> </a>
					<ul id="error-menu2" class="nav nav-list collapse">
						
								<li>
									<a href="<%=basePath%>/order/list">订单管理</a>
								</li>
							
					</ul>
		</div>
		<div class="content">
			<iframe name="main" height="600px" width="100%" scrolling="auto"
				frameborder="0" src="<%=basePath%>/sys/welcome.jsp">

			</iframe>
		</div>
		<script src="<%=basePath%>jslib/bootstrap/js/bootstrap.js"></script>
	</body>
</html>