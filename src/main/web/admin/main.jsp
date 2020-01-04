<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">

    <title>后台管理-小鱼眼-电影</title>
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
		<span class="layui-breadcrumb"> <a href="">首页</a> 
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
                    <form class="layui-form layui-col-space5" action="Main?oper=View">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="日期"
                                   name="searchDate" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="searchName" placeholder="请输入用户名"
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
                    <button class="layui-btn layui-btn-danger"
                            onclick="javascript:datadel()">
                        <i class="layui-icon"></i>批量删除
                    </button>
                    <button class="layui-btn"
                            onclick="javascript:location.href='Admin?oper=insertView';">
                        <i class="layui-icon"></i>添加
                    </button>
                </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th><input type="checkbox" lay-filter="checkall" name=""
                                       id="checkall" lay-skin="primary"></th>

                            <th>序号</th>
                            <th>用户名</th>
                            <th>权限</th>
                            <th>昵称</th>
                            <th>是否启用</th>
                            <th>操作</th>
                        </thead>
                        <tbody>

                        <c:forEach var="item" items="${DataList}">
                            <tr>
                                    <%-- 										<input type="hidden" name="userId" value="${item.userId}"/> --%>
                                <td><input type="checkbox" name="checkbox"
                                           value="${item.userId}" lay-skin="primary"></td>
                                <td>${i}</td>
                                <td>${item.userName}</td>
                                <td>${item.role}</td>
                                <td>${item.nickName}</td>
                                <td class="td-status"><span
                                        class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td>
                                <td class="td-manage"><a
                                        href="javascript:return false;"
                                        onclick="member_stop_do(this,${item.userId});member_stop(this,'10001')"
                                        title="停用"> <i class="layui-icon">&#xe601;</i>
                                </a> <a title="编辑" href="Admin?oper=updateView&id=${item.userId}">
                                    <i class="layui-icon">&#xe642;</i>
                                </a> <a title="查看详情" href="Admin?oper=detail&id=${item.userId}">
                                    <i class="layui-icon">&#xe631;</i>
                                </a> <a title="删除" onclick="item_del(this, ${item.userId})">
                                    <i class="layui-icon">&#xe640;</i>
                                </a></td>
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

<script>
    layui.use(['laydate', 'form'], function () {
        var laydate = layui.laydate;
        var form = layui.form;

        // 监听全选
        form.on('checkbox(checkall)', function (data) {

            if (data.elem.checked) {
                $('tbody input').prop('checked', true);
            } else {
                $('tbody input').prop('checked', false);
            }
            form.render('checkbox');
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });

    });

    /*用户-停用*/
    function member_stop(obj, id) {
        layer.confirm('确认要执行吗？', function (index) {

            if ($(obj).attr('title') == '停用') {

                //发异步把用户状态进行更改
                $(obj).attr('title', '启用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span')
                    .addClass('layui-btn-disabled').html('已启用');
                layer.msg('已停用!', {
                    icon: 5,
                    time: 1000
                });

            } else {
                $(obj).attr('title', '停用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span')
                    .removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!', {
                    icon: 5,
                    time: 1000
                });
            }

        });
    }

    function member_stop_do(obj, userId) {
        $.ajax({
            type: 'POST',
            url: 'Admin?oper=setUse&id=' + userId,
            success: function (data) {
            },
            error: function (data) {
            },
        });
    }
</script>

<script type="text/javascript">
    jQuery(function () {
        jQuery("#checkall")
            .change(
                function () {
                    var $otherCheckList = $("input:checkbox:checked:not('#checkall')");
                    var checkAllState = $("#checkall").prop(
                        "checked");
                    $otherCheckList.prop("checked", checkAllState);
                });
    });

    function item_del(obj, id) {
        if (confirm('确认要删除吗？')) {
            $.ajax({
                type: 'POST',
                url: 'Admin?oper=deleteDeal&id=' + id,
                //dataType : 'json',
                success: function (data) {
                    if (data == "ok") {
                        $(obj).parents("tr").remove();
                        alert('已删除!');
                    } else {
                        alert('删除失败!');
                    }
                },
                error: function (data) {
                },
            });
        }
        ;
    }

    function datadel() {
        if (confirm("真的要删除吗？")) {
            var num = 0;// 记录删除成功的行数
            var total = 0;// 记录要删除的行数
            var obj = null;// 记录当前对象
            var $otherCheckedList = jQuery("input:checkbox:checked:not('#checkall')");

            // 迭代所有已选中框
            $otherCheckedList.each(function () {
                obj = this;
                var id = $(this).val();
                if (id != null && id != "" && id != "0") {
                    total++;
                    $.ajax({
                        type: 'POST',
                        url: "Admin",
                        async: false,// 要使用同步
                        data: {
                            "oper": "deleteDeal",
                            "id": id
                        },
                        success: function (data) {
                            if (data == "ok") {
                                num++;
                            } else {
                                alert("删除失败");
                            }
                        },
                        error: function (data) {
                            alert("Error");
                        },
                    });
                }
            });
            alert('要删除' + total + '行记录，成功删除' + num + '行记录');
            location.reload();
        }
    }
</script>

</body>
</html>