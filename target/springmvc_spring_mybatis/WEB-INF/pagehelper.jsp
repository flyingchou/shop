<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--   -->
<!-- 页数 -->
<div class="message">
    共<i class="blue">${pages.total}</i>条记录，当前显示第&nbsp;<i
        class="blue">${pages.pageNum}/${pages.pages}</i>&nbsp;页
</div>
<div style="text-align:center;">
    <ul class="pagination">
        <!-- <li><a href="#">&laquo;</a></li> -->
        <c:if test="${!pages.isFirstPage}">
            <li><a href="javascript:queryAllPages(${pages.firstPage}, ${pages.pageSize});">首页</a></li>
            <li><a href="javascript:queryAllPages(${pages.prePage}, ${pages.pageSize});">上一页</a></li>
        </c:if>
        <c:forEach items="${pages.navigatepageNums}" var="navigatepageNum">
        
            <c:if test="${navigatepageNum==pages.pageNum}">
                <li class="active"><a href="javascript:queryAllPages(${navigatepageNum}, ${pages.pageSize});">${navigatepageNum}</a></li>
            </c:if>
            <c:if test="${navigatepageNum!=pages.pageNum}">
                <li><a href="javascript:queryAllPages(${navigatepageNum}, ${pages.pageSize});">${navigatepageNum}</a></li>
            </c:if>
        </c:forEach>
        <c:if test="${!pages.isLastPage}">
            <li><a href="javascript:queryAllPages(${pages.nextPage}, ${pages.pageSize});">下一页</a></li>
            <li><a href="javascript:queryAllPages(${pages.lastPage}, ${pages.pageSize});">最后一页</a></li>
        </c:if>
        <!-- <li><a href="#">&raquo;</a></li> -->
    </ul>
</div>