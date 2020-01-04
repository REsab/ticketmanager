<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">

    <title>后台管理-小鱼眼电影-订单列表</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <%@ include file="_head_link.jsp" %>
</head>
<body class="index">
<!-- 顶部开始 -->
<%@ include file="_layout_top.jsp" %>
<%@ include file="_ctx_nav.jsp" %>
<%@ include file="_layout_direct.jsp" %>
<!-- 	实体内容开始 -->

<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">订单管理</a>
			<a> <cite>订单列表</cite></a>
		</span> <a class="layui-btn layui-btn-small"
                   style="line-height: 1.6em; margin-top: 3px; float: right"
                   onclick="location.reload()" title="刷新"> <i
        class="layui-icon layui-icon-refresh" style="line-height: 30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="日期"
                                   name="end" id="end">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username" placeholder="请输入用户名"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                <i class="layui-icon">&#xe615;</i>
                            </button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">

                </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>

                            <th>序号</th>
                            <th>用户名</th>
                            <th>电影名</th>
                            <th>价格</th>
                            <th>创建时间</th>
                            <th>操作</th>
                        </thead>
                        <tbody>

                        <c:forEach var="item" items="${DataList}">
                            <tr>
                                <td>${i}</td>
                                <td>${item.userName}</td>
                                <td>${item.filmName}</td>
                                <td>${item.price}</td>
                                <td>${item.createOn}</td>
                                <td><a title="查看详情" href="Order?oper=orderDetailView&id=${item.ID}">
                                    <i class="layui-icon">&#xe631;查看详情</i></a>
                                </td>
                            </tr>
                            <input type="hidden" value="${i=i+1}"/>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>

            </div>
            <div class="layui-card-body ">
                <!-- 						<div class="page"> -->
                <!-- 							<div> -->
                <!-- 								<a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a> -->
                <!-- 								<span class="current">2</span> <a class="num" href="">3</a> <a -->
                <!-- 									class="num" href="">489</a> <a class="next" href="">&gt;&gt;</a> -->
                <!-- 							</div> -->
                <!-- 						</div> -->

                <%@ include file="__pager.jsp" %>
            </div>
        </div>
    </div>
</div>

<!-- 实体内容结束	 -->
<%@ include file="_layout_footer.jsp" %>

</body>
</html>