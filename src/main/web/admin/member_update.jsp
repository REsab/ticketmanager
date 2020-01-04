<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>小鱼眼电影-后台-添加账号</title>
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

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" action="Admin" method="post">
            <input type="hidden" name="oper" value="updateDeal"/>
            <input type="hidden" name="id" value="${member.userId}"/>
            <div class="layui-form-item">
                <label for="L_userName" class="layui-form-label">
                    <span class="x-red">*</span>用户名</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_UserName" name="userName"
                           value="${member.userName}" required="" lay-verify="userName" autocomplete="off"
                           class="layui-input"></div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为您唯一的登入名
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_userPass" class="layui-form-label">
                    <span class="x-red">*</span>密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="L_userPass" name="userPass"
                           autocomplete="off" class="layui-input"></div>
                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
            </div>
            <div class="layui-form-item">
                <label for="L_rePass" class="layui-form-label">
                    <span class="x-red">*</span>确认密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="L_rePass" name="rePass"
                           autocomplete="off" class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label for="L_role" class="layui-form-label">
                    <span class="x-red">*</span>角色</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_role" name="role"
                           value="${member.role}" required="" lay-verify="role" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_nickName" class="layui-form-label">
                    <span class="x-red">*</span>昵称</label>
                <div class="layui-input-inline">
                    <input type="text" id="nickName" name="nickName"
                           value="${member.nickName}" required="" lay-verify="nickName" autocomplete="off"
                           class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">
                    <span class="x-red">*</span>邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_email" name="email"
                           value="${member.email}" required="" lay-verify="email" autocomplete="off"
                           class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label for="L_mobile" class="layui-form-label">
                    <span class="x-red">*</span>电话</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_mobile" name="mobile"
                           value="${member.mobile}" required="" lay-verify="mobile" autocomplete="off"
                           class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label"></label>
                <button class="layui-btn" lay-filter="add" lay-submit="">提交</button>
            </div>
        </form>
    </div>
</div>


<!-- 实体内容结束	 -->
<%@ include file="_layout_footer.jsp" %>
</body>
</html>