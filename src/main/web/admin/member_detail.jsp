<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta charset="UTF-8">
    <title>账号详情页【${member.userName}】</title>
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
        <span class="x-red" style="padding-right: 10% ;">用户名:&nbsp;&nbsp;&nbsp;</span>${member.userName}
    </div>

    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">密码:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${member.userPass}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">权限:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${member.role}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">昵称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${member.nickName}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">邮箱:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${member.email}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">电话:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>${member.mobile}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">创建时间:</span>${member.createOn}
    </div>
    <div style="margin-bottom:1%">
        <span class="x-red" style="padding-right: 10%;">修改时间:</span>${member.updateOn}
    </div>
    <div style="margin-top:5%;">
        <button class="layui-btn" onclick="javascript:history.back(-1);">返回</button>
    </div>
</div>


<!-- 实体内容结束	 -->
<%@ include file="_layout_footer.jsp" %>
</body>
</html>