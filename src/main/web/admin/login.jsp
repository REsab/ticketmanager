<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>后台登录页面</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="stylesheet" type="text/css" href="${AppRootPath}/static/back/css/font.css">
    <link rel="stylesheet" type="text/css" href="${AppRootPath}/static/back/css/login.css">
    <link rel="stylesheet" type="text/css" href="${AppRootPath}/static/back/css/xadmin.css">
    <!-- 	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
    <script src="${AppRootPath}/static/back/lib/layui/layui.js" charset="utf-8"></script>
</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">小鱼眼电影票务系统-后台登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" action="Login" class="layui-form">
        <input type="hidden" name="oper" value="logindeal"></input>
        <input name="userName" placeholder="用户名" type="text" class="layui-input">
        <hr class="hr15">
        <input name="userPass" placeholder="密码" type="password" class="layui-input">
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20">
    </form>
</div>

<script>
    $(function () {
        layui.use('form', function () {
            var form = layui.form;
            // layer.msg('玩命卖萌中', function(){
            //   //关闭后的操作
            //   });
            //监听提交
            form.on('submit(login)', function (data) {
                // alert(888)
                layer.msg(JSON.stringify(data.field), function () {
                    location.href = 'index.html'
                });
                return false;
            });
        });
    })
</script>
</body>
</html>