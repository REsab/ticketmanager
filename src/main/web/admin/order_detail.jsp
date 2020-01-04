<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>订单详情页【${member.userName}】</title>
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

<div class="layui-fluid" style="margin-left:20%; margin-top: 5%;">

    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10% ;">用户名:&nbsp;&nbsp;&nbsp;&nbsp;</span>${PurcharseOrder.userName}
    </div>

    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">电影名:&nbsp;&nbsp;&nbsp;&nbsp;</span>${PurcharseOrder.filmName}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">下单时间:</span>${PurcharseOrder.createOn}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red"
              style="padding-right: 10%;">价格:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${PurcharseOrder.price}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">是否删除:</span>${PurcharseOrder.isDelete}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">取票码:&nbsp;&nbsp;&nbsp;</span>${PurcharseOrder.ticketsCode}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">是否支付:</span>${PurcharseOrder.isPayed}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 8.8%;">票是否取走:</span>${PurcharseOrder.isCollection}
    </div>
    <div style="margin-top:5%;">
        <button class="layui-btn" onclick="javascript:history.back(-1);">返回</button>
    </div>

</div>


<!-- 实体内容结束	 -->
<%@ include file="_layout_footer.jsp" %>
</body>
</html>