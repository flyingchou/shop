<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

		<title>订单项列表</title>
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
				订单项管理
			</h1>
		</div>
		<ul class="breadcrumb">
			<li>
				<a href="<%=basePath%>/sys/welcome.jsp">Home</a>
				<span class="divider">/</span>
			</li>
			<li class="active">
				订单项列表
			</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">
				

				<div class="well">
					<table class="table">
						<thead>
							<tr>
								<th>
									订单项编号
								</th>
								<th>
									商品名称
								</th>
								<th>
									价格
								</th>
								<th>
									数量
								</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listSorder}" var="item">
								<tr>
									<td style="width:200px;">
										${item.fid}
									</td>
									<td style="width:200px;">
										${item.name}
									</td>
									<td style="width:200px;">
										${item.price}
									</td>
									<td style="width:200px;">
										${item.number}
									</td>
									
									<%-- <td >
										<a href="<%=basePath%>sorder/listbyfid?fid=${item.fid}">查看订单项</a>
										&ensp;
										
									</td> --%>
									
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
		
				</div>
			</div>
		</div>
	</body>
</html>
