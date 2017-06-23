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
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>商城</title>
<link href="<%=basePath %>/css/common.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath %>/css/product.css" rel="stylesheet" type="text/css"/>
<script src="<%=basePath%>jslib/jquery-1.7.2.min.js"
			type="text/javascript"></script>
            
            <script type="text/javascript">
			$(function(){
				
				$("#increase").click(function(e){
					
					var val = $("#number").val();
					
					
					$("#number").val(++val);
					
				});
				
				
				$("#decrease").click(function(e){
					
					var val = $("#number").val();
					if(val > 1){
						
						$("#number").val(--val);
					}
					
					
				});
				
				
			});	
            
            
            
            </script>
            
            

</head>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a>
				<img src="<%=basePath%>/image/r___________renleipic_01/logo.jpg" alt="商城">
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
					<img src="<%=basePath%>/image/r___________renleipic_01/header.jpg" alt="正品保障" title="正品保障" height="50" width="320">
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
				<li id="headerUsername" class="headerUsername"></li>
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
			<a href="<%=basePath %>/car.jsp">购物车</a>
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

</div><div class="container productContent">
		<div class="span6">
			<div class="hotProductCategory">
						<dl>
							<dt>
								<a >女人</a>
							</dt>
									<dd>
										<a >女鞋</a>
									</dd>
									<dd>
										<a>毛呢外套</a>
									</dd>
									<dd>
										<a>卫衣</a>
									</dd>
									<dd>
										<a>打底裤</a>
									</dd>
						</dl>
						<dl>
							<dt>
								<a>男人</a>
							</dt>
									<dd>
										<a>男外套</a>
									</dd>
									<dd>
										<a>男鞋</a>
									</dd>
									
						</dl>
						<dl>
							<dt>
								<a >母婴</a>
							</dt>
									<dd>
										<a>猪肉</a>
									</dd>
									<dd>
										<a>爱他美</a>
									</dd>
									<dd>
										<a>毛衣</a>
									</dd>
									<dd>
										<a>外套</a>
									</dd>
						</dl>
						<dl>
							<dt>
								<a>美妆</a>
							</dt>
									<dd>
										<a>口红</a>
									</dd>
									<dd>
										<a>面膜</a>
									</dd>
									<dd>
										<a>眉笔</a>
									</dd>
						</dl>
						
						<dl class="last">
							<dt>
								<a>运动户外</a>
							</dt>
									<dd>
										<a >运动裤</a>
									</dd>
									<dd>
										<a>运动T恤</a>
									</dd>
						</dl>
			</div>
			

		</div>
		<div class="span18 last">
			
			<div class="productImage">
					<a title="" style="outline-style: none; text-decoration: none;" id="zoom" rel="gallery">
						<div class="zoomPad"><img style="opacity: 1;" title="" class="medium" src="<%=basePath%>/upload/${product.pic}"><div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div><div style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;" class="zoomWindow"><div style="width: 368px;" class="zoomWrapper"><div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div><div style="width: 0%; height: 0px;" class="zoomWrapperImage"><img src="%E5%B0%9A%E9%83%BD%E6%AF%94%E6%8B%89%E5%A5%B3%E8%A3%852013%E5%A4%8F%E8%A3%85%E6%96%B0%E6%AC%BE%E8%95%BE%E4%B8%9D%E8%BF%9E%E8%A1%A3%E8%A3%99%20%E9%9F%A9%E7%89%88%E4%BF%AE%E8%BA%AB%E9%9B%AA%E7%BA%BA%E6%89%93%E5%BA%95%E8%A3%99%E5%AD%90%20%E6%98%A5%E6%AC%BE%20-%20Powered%20By%20Mango%20Team_files/6d53c211-2325-41ed-8696-d8fbceb1c199-large.jpg" style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;"></div></div></div><div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div></div>
					</a>
				
			</div>
			<div class="name">${product.pname}</div>
			<div class="sn">
				<div>编号：${product.pid}</div>
			</div>
			<div class="sn">
				<div>数量：${product.number}</div>
			</div>
			<div class="info">
				<dl>
					<dt>现价:</dt>
					<dd>
						<strong>￥：${product.cprice}元/份</strong>
							原 价：
							<del>￥${product.sprice}元/份</del>
					</dd>
				</dl>
					<dl>
						<dt>促销:</dt>
						<dd>
								<a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)">限时抢购</a>
						</dd>
					</dl>
					<dl>
						<dt>    </dt>
						<dd>
							<span>    </span>
						</dd>
					</dl>
			</div>
				<div class="action">
					<form action="<%=basePath%>sorder/add" method="post">
						<dl class="quantity">
							<dt>购买数量:</dt>
							<dd>
							<input type="hidden" name="pid" value="${product.pid}"/>
								<input id="number" name="number" value="1" maxlength="4" onpaste="return false;" type="text"/>
								<div>
									<span id="increase" class="increase">&nbsp;</span>
									<span id="decrease" class="decrease">&nbsp;</span>
								</div>
							</dd>
							<dd>
								件
							</dd>
						</dl>
						<div class="buy">
								<input id="addCart" class="addCart" value="加入购物车" type="submit">
					
						</div>
					</form>
				</div>
			<div id="bar" class="bar">
				<ul>
						<li id="introductionTab">
							<a href="#introduction">商品介绍</a>
						</li>
						
				</ul>
			</div>
				
				<div id="introduction" name="introduction" class="introduction">
					<div class="title">
						<strong>商品介绍</strong>
					</div>
					<div>
						<img src="<%=basePath%>/upload/${product.pic}">
					</div>
					<div>
						${product.pdesc}
					</div>
				</div>
				
				
				
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="<%=basePath%>/image\r___________renleipic_01/footer.jpg" alt="我们的优势" title="我们的优势" height="52" width="950">
</div>
</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a href="#">关于我们</a>
						|
					</li>
					<li>
						<a href="#">联系我们</a>
						|
					</li>
					<li>
						<a href="#">诚聘英才</a>
						|
					</li>
					<li>
						<a href="#">法律声明</a>
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
						<a >SHOP++官网</a>
						|
					</li>
					<li>
						<a>SHOP++论坛</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2005-2016 网上商城 版权所有</div>
	</div>
</div>
</body>
</html>