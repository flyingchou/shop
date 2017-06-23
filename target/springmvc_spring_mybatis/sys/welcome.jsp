<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>卖家管理系统</title>
    
	<link rel="stylesheet" type="text/css"
			href="<%=basePath%>jslib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/theme.css">
		<link rel="stylesheet"
			href="<%=basePath%>jslib/font-awesome/css/font-awesome.css">
		<script src="<%=basePath%>jslib/jquery-1.7.2.min.js"
			type="text/javascript"></script>
  </head>
  
 <body class="content1">
		<div class="header">
			<h1 class="page-title"> 
				主页
			</h1>
		</div>
		<ul class="breadcrumb">
			
			<li class="active">
				Home
			</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">
				
					<div class="span12">
							<div class="hero-unit" style="margin-top:200px;">
							<h1 style="padding-left:100px;">
								欢迎使用卖家管理系统！
							</h1>
				
							</div>
					</div>
				
				
			</div>
		</div>
	</body>
</html>
