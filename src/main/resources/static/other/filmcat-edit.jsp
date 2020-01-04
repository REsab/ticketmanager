<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>


    <link rel="stylesheet" href="${AppRootPath}/static/back/css/font.css">
    <link rel="stylesheet" href="${AppRootPath}/static/back/css/xadmin.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="${AppRootPath}/static/back/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${AppRootPath}/static/back/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" style="width:80%;">
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">登录名</label>
                <div class="layui-input-block">
                    <!-- 使用隐藏域用于保存编辑项的ID值，便于提交修改 -->
                    <input type="hidden" class="id" name="id">
                    <input type="hidden" class="password" name="password">
                    <input type="hidden" class="userEndTime" name="userEndTime">
                    <input type="text" class="layui-input userName" lay-verify="required" placeholder="请输入登录名" disabled>
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-block">

                    <input type="text" class="layui-input userEmail" lay-verify="email" placeholder="请输入邮箱">
                </div>
            </div>
            <div class="layui-row">
                <div class="magb15 layui-col-md4 layui-col-xs12">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block userSex">
                        <input type="radio" name="userSex" value="男" title="男" checked>
                        <input type="radio" name="userSex" value="女" title="女">
                        <input type="radio" name="userSex" value="保密" title="保密">
                    </div>
                </div>
                <div class="magb15 layui-col-md4 layui-col-xs12">
                    <label class="layui-form-label">会员等级</label>
                    <div class="layui-input-block">
                        <!-- ajax动态生成等级列表 -->
                        <select name="userGrade" class="userGrade" lay-filter="userGrade"></select>
                        <!-- 使用隐藏域来保存其他页面传过来的用户等级ID -->
                        <input type="hidden" class="userGradeHide" name="userGradeHide"/>
                    </div>
                </div>
                <div class="magb15 layui-col-md4 layui-col-xs12">
                    <label class="layui-form-label">会员状态</label>
                    <div class="layui-input-block">
                        <select name="userStatus" class="userStatus" lay-filter="userStatus">
                            <option value="0">正常使用</option>
                            <option value="1">限制使用</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">用户简介</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入用户简介" class="layui-textarea userDesc" name="userDesc"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-m" lay-submit="" lay-filter="editUser">修改</button>
                    <button type="button" class="layui-btn layui-btn-m layui-btn-primary cancle_btn">取消</button>
                </div>
            </div>
        </form>

    </div>
</div>


<script>layui.use(['form', 'layer'],
    function () {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            nikename: function (value) {
                if (value.length < 5) {
                    return '昵称至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            repass: function (value) {
                if ($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)',
            function (data) {
                console.log(data);
                //发异步，把数据提交给php
                layer.alert("增加成功", {
                        icon: 6
                    },
                    function () {
                        //关闭当前frame
                        xadmin.close();
                        // 可以对父窗口进行刷新
                        xadmin.father_reload();
                    });
                return false;
            });

    });</script>


</body>

</html>
