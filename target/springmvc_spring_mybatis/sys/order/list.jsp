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

		<title>订单列表</title>
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
				订单管理
			</h1>
		</div>
		<ul class="breadcrumb">
			<li>
				<a href="<%=basePath%>/sys/welcome.jsp">Home</a>
				<span class="divider">/</span>
			</li>
			<li class="active">
				订单列表
			</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">


				<div class="well">
					<table class="table">
						<thead>
							<tr>
								<th>
									订单编号
								</th>
								<th>
									收货人
								</th>
								<th>
									电话
								</th>
								<th>
									备注
								</th>
								<th>
									时间
								</th>
								
								<th>
									金额
								</th>
								<th>
									邮编
								</th>
								<th>
									地址
								</th>
								<th>
									状态
								</th>
								<th  >
									发货
								</th>
								<th  >
									编辑
								</th>
								<th  >
									订单项
								</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="item">
								<tr>
									<td style="width:200px;">
										${item.fid}
									</td>
									<td>
										${item.name}
									</td>
									<td>
										${item.phone}
									</td>
									<td>
										${item.remark}
									</td>
									<td>
										<fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd" />
									</td>
									
									<td>
										${item.total}
									</td>
									
									<td>
										${item.post}
									</td>
									<td>
										${item.address}
									</td>
									<td>
										<c:if test="${item.status=='0'}">
											已付款
										</c:if>
										<c:if test="${item.status==item.fid}">
											已发货
										</c:if>

									</td>
									<td >
										<c:if test="${item.status=='0'}">
										<a href="<%=basePath%>order/updatestatus?fid=${item.fid}">确认发货</a>
										&ensp;
										</c:if>
										<c:if test="${item.status==item.fid}">
											<a >发货成功</a>
											&ensp;
										</c:if>

									</td>

									<td >
										<a href="<%=basePath%>order/delete?fid=${item.fid}">删除</a>
										&ensp;
										
									</td>
									<td >
										<a href="<%=basePath%>sorder/listbyfid?fid=${item.fid}">查看订单项</a>
										&ensp;
										
									</td>
									
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
		
				</div>
			</div>
		</div>
	</body>
</html>
