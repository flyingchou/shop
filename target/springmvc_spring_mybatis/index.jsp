<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>商城</title>
	<link href="<%=basePath %>/css/slider.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath %>/css/common.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath %>/css/index.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="<%=basePath%>/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
        $(document).ready(queryAllPages);
        function queryAllPages(pageNum,pageSize) {
            $("#allpages").load("<%=basePath%>/product/frontlist?pageNum="+pageNum+"&pageSize="+pageSize);
        }
	</script>
</head>
<body>

<div class="container all">
	<div id="allpages" class="containerpages">
		<div class="container header">
			<div class="span5">
				<div class="logo">
					<a href="<%=basePath %>/index.jsp">
						<img src="<%=basePath %>/image/r___________renleipic_01/logo.jpg" alt="商城"/>
					</a>
				</div>
			</div>
			<div class="span9">
				<div class="headerAd">
					<img src="<%=basePath %>/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
				</div>	</div>
			<div class="span10 last">
				<div class="topNav clearfix">
					<ul>
						<c:if test="${sessionScope.frontuser==null}">
							<li id="headerLogin" class="headerLogin" style="display: list-item;">
								<a href="<%=basePath %>/user/login">登录</a>|
							</li>
						</c:if>
						<c:if test="${sessionScope.frontuser!=null}">
							<li id="headerLogin" class="headerLogin" style="display: list-item;">
								<a href="javascript:void()">${sessionScope.frontuser}</a>|
							</li>
						</c:if>

						<li id="headerUsername" class="headerUsername" ></li>
						<c:if test="${sessionScope.frontuser!=null}">
							<li id="headerLogout" class="headerLogout" style="display: list-item;">
								<a href="<%=basePath %>/user/logout">[退出]</a>|
							</li>
						</c:if>

						<li>
							<a>会员中心</a>
							|
						</li>
						<li>
							<a>购物指南</a>
							|
						</li>
						<li>
							<a>关于我们</a>

						</li>
					</ul>
				</div>
				<div class="cart">
					<a  href="<%=basePath %>/car.jsp">购物车</a>
				</div>
				<div class="phone">
					客服热线:
					<strong>96008/53277764</strong>
				</div>
			</div>
			<div class="span24">
				<ul class="mainNav">
					<li>
						<a href="<%=basePath %>/product/frontlist">首页</a>
						|
					</li>
					<li>
						<a >男士休闲</a>
						|
					</li>
					<li>
						<a >女士休闲</a>
						|
					</li>
					<li>
						<a>商城积分</a>
						|
					</li>
					<li>
						<a>儿童休闲</a>
						|
					</li>
					<li>
						<a>老人休闲</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>

				</ul>
			</div>


		</div>
		<div class="container index">
			<div class="span24">
				<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						<strong>全部商品</strong>
						<a  target="_blank" ></a>
					</div>
					<ul class="tab">
						<li class="current">
							<a href="./蔬菜分类.htm?tagIds=2" target="_blank"></a>
						</li>
						<li>
							<a  target="_blank"></a>
						</li>
						<li>
							<a target="_blank"></a>
						</li>
					</ul>
					<!-- 					<div class="newProductAd">
                                                        <img src="./image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
                                            </div>
                                             -->
					<div class="pages">
						<%--<div id="allProduct" class="newProduct clearfix">--%>
						<ul class="tabContent" style="display: block;">
							<c:forEach items="${pages.list}" var="list">
								<li>
									<a target="_blank" href="<%=basePath%>product/detail?pid=${list.pid}"><img src="<%=basePath %>/upload/${list.pic}"  style="display: block;"></a>

								</li>
							</c:forEach>
						</ul>
					</div>
					<div id="page_div">
						<%@ include file="/WEB-INF/pagehelper.jsp"%>
					</div>
				</div>

				<%--<div align="left">--%>
				<%--<a>总页数：${pages.pages}, 商品总数：${pages.total}, </a>--%>
				<%--<a> 当前第-${pages.pageNum}-页 </a>--%>
				<%--<a href="javascript:onSearch(${pages.prePage}">上一页</a>--%>
				<%--<a href="javascript:onSearch${pages.nextPage}">下一页</a>--%>
				<%--</div>--%>
				<ul class="tabContent" style="display: none;">
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/b04a22f5-267d-4e33-ac58-dda941eeaf84-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b04a22f5-267d-4e33-ac58-dda941eeaf84-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/ca3043f5-dbb0-4a03-9bb6-8274f78b5d7e-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/ca3043f5-dbb0-4a03-9bb6-8274f78b5d7e-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/a2ac0816-37e4-477a-b179-e64f71252cf5-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/a2ac0816-37e4-477a-b179-e64f71252cf5-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/fbb80ec8-a1d3-49de-b83b-79eae4b1ff69-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/fbb80ec8-a1d3-49de-b83b-79eae4b1ff69-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/bb99deac-0b33-48f1-a3ad-e8310516be07-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/bb99deac-0b33-48f1-a3ad-e8310516be07-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/7b3c0647-1016-4d13-8b84-4d63818e1179-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/7b3c0647-1016-4d13-8b84-4d63818e1179-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/3c79f82f-f136-48aa-9e81-7e10fbb3de2a-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/3c79f82f-f136-48aa-9e81-7e10fbb3de2a-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/b998f840-91fc-41b6-b73d-70587babf760-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b998f840-91fc-41b6-b73d-70587babf760-thumbnail.jpg" style="display: block;"></a>
					</li>
				</ul>
				<ul class="tabContent" style="display: none;">
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/9f164e13-bcaa-48a6-9b35-0ca96629f614-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/9f164e13-bcaa-48a6-9b35-0ca96629f614-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/1a3ad7de-7ee9-4530-b89a-46375219beb5-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/1a3ad7de-7ee9-4530-b89a-46375219beb5-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/7acae4ac-5909-4142-8b20-19c5462859d6-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/7acae4ac-5909-4142-8b20-19c5462859d6-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/ea566af4-0cdb-4017-a8c7-27e407794204-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/ea566af4-0cdb-4017-a8c7-27e407794204-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/dea31d42-fa3e-4b69-a631-51ca7c79f032-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/dea31d42-fa3e-4b69-a631-51ca7c79f032-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/1c81f492-a3d7-4c06-8658-bc2c76808cd3-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/1c81f492-a3d7-4c06-8658-bc2c76808cd3-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/f1174ca6-6bdf-4d0b-86e6-5455bc8e89ad-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/f1174ca6-6bdf-4d0b-86e6-5455bc8e89ad-thumbnail.jpg" style="display: block;"></a>
					</li>
					<li>
						<a  target="_blank"><img src="./Mango商城 - Powered By Mango Team_files/2971c96e-9f11-4491-9faf-9ea7e1fec53c-thumbnail.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/2971c96e-9f11-4491-9faf-9ea7e1fec53c-thumbnail.jpg" style="display: block;"></a>
					</li>
				</ul>
				<%--</div>--%>
			</div>

			<div class="span24">
				<div class="friendLink">
					<dl>
						<dt>新手指南</dt>
						<dd>
							<a  target="_blank">支付方式</a>
							|
						</dd>
						<dd>
							<a  target="_blank">配送方式</a>
							|
						</dd>
						<dd>
							<a  target="_blank">售后服务</a>
							|
						</dd>
						<dd>
							<a  target="_blank">购物帮助</a>
							|
						</dd>
						<dd>
							<a  target="_blank">蔬菜卡</a>
							|
						</dd>
						<dd>
							<a  target="_blank">礼品卡</a>
							|
						</dd>
						<dd>
							<a target="_blank">银联卡</a>
							|
						</dd>
						<dd>
							<a  target="_blank">亿家卡</a>
							|
						</dd>

						<dd class="more">
							<a >更多</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div class="container footer">
			<div class="span24">
				<div class="footerAd">
					<img src="<%=basePath %>/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
				</div>	</div>
			<div class="span24">
				<ul class="bottomNav">
					<li>
						<a>关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a>招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a>服务声明</a>
						|
					</li>
					<li>
						<a>广告声明</a>

					</li>
				</ul>
			</div>
			<div class="span24">
				<div class="copyright">Copyright © 2005-2016 网上商城 版权所有</div>
			</div>
		</div>
	</div>
</div>


</body></html>