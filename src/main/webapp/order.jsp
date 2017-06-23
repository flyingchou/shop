<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.edu.nuc.shop.entiry.Forder"
   %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>订单页面</title>
<link href="<%=basePath %>/css/common.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath %>/css/cart.css" rel="stylesheet" type="text/css"/>
<script src="<%=basePath%>jslib/jquery-1.7.2.min.js"
			type="text/javascript"></script>
<script type="text/javascript">	
				var nameflag = false;
				var phoneflag = false;
				var addressflag = false;
				var postflag = false;

		$(function(){	
			
			$("#name").focus();
			
				$("#name").blur(function(e){
					
					if($("#name").val()==null || $("#name").val()==""){
						
						$("#namemsg").text("收件人不能为空");	
						nameflag = false;					
						
					}else{
						
						$("#namemsg").text("");	
						nameflag = true;
					}
																				
				});	
				
				$("#phone").blur(function(e){
					
					var reg = /^(\d{2,4}[-])?1\d{10}$|^(0\d{2,3}-?|\(0\d{2,3}\))?[1-9]\d{4,7}(-\d{1,8})?$/;
					
					if($("#phone").val()==null || $("#phone").val()==""){
						
						$("#phonemsg").text("电话不能为空");	
						phoneflag = false;					
						
					}else if(!reg.test($("#phone").val())){
						
						$("#phonemsg").text("电话格式不正确");
					}else{
						
						$("#phonemsg").text("");	
						phoneflag = true;
					}
																				
				});	
				
				$("#address").blur(function(e){
					
					if($("#address").val()==null || $("#address").val()==""){
						
						$("#addressmsg").text("收货地址不能为空");	
						addressflag = false;					
						
					}else{
						
						$("#addressmsg").text("");	
						addressflag = true;
					}
																				
				});	
				
				$("#post").blur(function(e){
					
					var reg=  /^[1-9]\d{5,6}$/;
					
					if($("#post").val()==null || $("#post").val()==""){
						
						$("#postmsg").text("收货地址不能为空");	
						postflag = false;					
						
					}else if(!reg.test($("#post").val())){
						
						$("#postmsg").text("邮编格式不正确");
						
						
					}else{
						
						$("#postmsg").text("");	
						postflag = true;
					}
																				
				});	
				
			
				
				$("#button").click(function(e){
					
					if(nameflag && phoneflag && addressflag && postflag){
						
						$("form").submit();
					}
					
				});
				
				
		});	
</script>	
</head>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="<%=basePath %>/网上商城/index.htm">
				<img src="<%=basePath %>/image/r___________renleipic_01/logo.jpg" alt="商城"/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
	<img src="./image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
</div>	
</div>
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
							<a >用户中心</a>
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
			<div class="phone">
				客服热线:
				<strong>96008/53277764</strong>
			</div>
	</div>
	<!-- 菜单栏 -->
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

<div class="container cart">

		<div class="span24">
		
			<div class="step step1">
				<ul>
					
					<li  class="current"></li>
					<li  >生成订单成功</li>
				</ul>
			</div>
	
		
				<table>
					<tbody>
					<tr>
						<th>商品编号</th>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
					
							<c:forEach items="${forder.sorderSet}" var="sorder">
					
						<tr>
							<td>
								<a target="_blank"> ${sorder.product.pid}</a>
							</td>
							<td width="60">
								<input type="hidden" name="id" value="${sorder.product.pid}">
								<img src="<%=basePath %>/upload/${sorder.product.pic}">
							</td>
							<td>
								<a target="_blank"> ${sorder.product.pname}</a>
							</td>
							<td>
								￥${sorder.product.cprice}
							</td>
							<td class="quantity" width="60">
								${sorder.number}
							</td>
							<td width="140">
								<span class="subtotal">￥${sorder.price*sorder.number}</span>
								
							</td>
							<td>
								<a href="<%=basePath %>sorder/delete?pid=${sorder.product.pid}" class="delete" >删除</a>
							</td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					商品金额: <strong id="effectivePrice">￥${forder.total}元</strong>
				</div>
			<form id="orderForm" action="<%=basePath %>forder/order" method="post">
				<input type="hidden" name="uid" value="${sessionScope.frontuserId}"/>
				<input type="hidden" name="total" value="	${forder.total}"/>
			
				<div class="span24">
					<p>
					收货人&nbsp;&nbsp;&nbsp;：<input id="name" name="name" type="text" value="" style="width:150px" />
											<span style="color:red" id="namemsg"></span>
								<br /> 
					联系方式：<input id="phone" name="phone" type="text"value="" style="width:150px" />
											<span style="color:red" id="phonemsg"></span>
					<br />
					收货地址：<input id="address" name="address" type="text" value="" style="width:150px" />
										<span style="color:red" id="addressmsg"></span>
								<br />
					备&nbsp;&nbsp;注：&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="10" cols="20" name="remark"></textarea>
					<br />
					邮&nbsp;&nbsp;编:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="post" name="post" type="text" value="" style="width:150px" />
										<span style="color:red" id="postmsg"></span>
								<br />
						</p>

						<hr />
						<p style="text-align:right">
							
							<a id="button" >
								<img src="./images/finalbutton.gif" width="204" height="51" border="0" />
							</a>
						</p>
				</div>
			</form>
		</div>
		
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="image\r___________renleipic_01/footer.jpg" alt="我们的优势" title="我们的优势" height="52" width="950">
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
		<div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
	</div>
</div>
</body>
</html>