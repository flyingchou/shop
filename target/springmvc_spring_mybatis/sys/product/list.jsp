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

		<title>文章列表</title>
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
				商品管理
			</h1>
		</div>
		<ul class="breadcrumb">
			<li>
				<a href="<%=basePath%>/sys/welcome.jsp">Home</a>
				<span class="divider">/</span>
			</li>
			<li class="active">
				商品列表
			</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">
				<form class="form-inline" method="post"
					action="<%=basePath%>product/find">
					<input class="input-xlarge" placeholder="商品名称..." name="pname"
						type="text" value="${param.pname}">
					<input class="btn icon-search" type="submit" value="查询" />
					<a class="btn btn-primary" href="<%=basePath%>product/add" style="background: #dea32c;">
						<i class="icon-plus"></i> 添加商品
					</a>
				</form>

				<div class="well">
					<table class="table">
						<thead>
							<tr>
								<th>
									商品名称
								</th>
								<th>
									商品原价
								</th>
								<th>
									商品现价
								</th>
								<th>
									商品图片
								</th>
								<th>
									商品描述
								</th>
								<th>
									热点
								</th>
								<th>
									数量
								</th>
								<th>
									添加日期
								</th>
								<th  colspan="2" style="width: 90px;text-align:center">
									编辑
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="item">
								<tr>
									<td style="width:200px;">
										${item.pname}
									</td>
									<td>
										${item.sprice}
									</td>
									<td>
										${item.cprice}
									</td>
									<td>
										<c:if test="${item.pic==null}">
											无
										</c:if>
										<c:if test="${item.pic!=null}">
											<img src="<%=basePath%>/upload/${item.pic}" style="width:50px;height:50px;"/>
											
										</c:if>
									</td>
									<td style="width:200px;">
										${item.pdesc}
									</td>
									<td>
										<c:if test="${item.isHot=='true'}">是</c:if>
										<c:if test="${item.isHot=='false'}">否</c:if>
									</td>
									<td>
										${item.number}
									</td>
									<td>
										<fmt:formatDate value="${item.pdate}" pattern="yyyy-MM-dd" />
									</td>
									
									<td colspan="2" style="width: 90px;text-align:center">
										<a href="<%=basePath%>product/edit?pid=${item.pid}">编辑</a>
										&ensp;
										<a href="<%=basePath%>product/delete?pid=${item.pid}">删除</a>
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
