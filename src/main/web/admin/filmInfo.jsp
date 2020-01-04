<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">

    <title>后台影片-小鱼眼-电影</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <meta http-equiv=" Cache-Control" content="no-siteapp"/>
    <%@ include file="_head_link.jsp" %>
    <script src="${AppRootPath}/static/back/js/jquery.min.js"></script>


</head>
<body class="index">
<!-- 顶部开始 -->
<%@ include file="_layout_top.jsp" %>
<%@ include file="_ctx_nav.jsp" %>
<%@ include file="_layout_direct.jsp" %>
<!-- 	实体内容开始 -->


<%

    System.out.println("film info  into ");
%>


<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">演示</a>
			<a> <cite>导航元素</cite></a>
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
                    <div class=" layui-col-space5">

                        <div class="layui-inline layui-show-xs-block layui-col-md-offset4">
                            <input type="text" id="searchBox" name="sreachfilmName1" placeholder="请输入电影名"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn" onclick="search()">
                                <i class="layui-icon">&#xe615;</i>
                            </button>
                        </div>
                    </div>

                    <div class="layui-card-header   ">


                        <button class="layui-btn layui-btn-danger" onclick="delAll()">
                            <i class="layui-icon"></i>批量删除
                        </button>
                    </div>


                </div>

                <%--//lay-filter="demo"  实现加入操作功能 ,查看,修改等 --%>
                <table class="layui-hide" id="Film" lay-filter="demo"></table>


            </div>
            <div class="layui-card-body ">


            </div>
        </div>
    </div>
</div>

<!-- 实体内容结束	 -->
<%@ include file="_layout_footer.jsp" %>

<%--//操作按钮--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs btn-edit" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs btn-del" lay-event="del">删除</a>
</script>


<%--//动态表格--%>
<script>
    layui.use('table', function () {
        var table = layui.table;
        table.render({
            elem: '#Film'
            , url: 'filminfo?oper=list2'
            , height: 'full-300'
            , cellMinWidth: 66 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                // , {field: 'filmId', width: 80, title: 'ID', sort: true}  //不显示id
                , {field: 'filmName', width: 80, title: '电影'}
                , {field: 'catName', width: 80, title: '分类', sort: true}
                , {field: 'releaseDate', width: 80, title: '上映时间'}
                , {field: 'director', title: '导演', width: 80, minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'price', title: '票价', width: 80, sort: true}
                , {field: 'summary', title: '摘要', sort: true}
                , {field: 'actorOther', width: 80, title: '其他演员'}
                , {field: 'createBy', width: 137, title: '创建者', sort: true}
                , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}
            ]]
            , page: true
            , id: 'FilmReload'
        });

    });


</script>


<%--//search--%>

<script>
    function search() {
        if ($("#searchBox").val() == "") {
            layer.msg('写点东西再搜索吧,求你了');
            return;
        }
        layui.use('table', function () {
            var table = layui.table;
            parent.layer.msg('搜索中...', {icon: 16, shade: 0.3, time: 800});

            table.render({
                elem: '#Film'
                , url: '../admin/filminfo?oper=search&filmName=' + $("#searchBox").val()
                , data: {"data": $("#searchBox").val()}
                , height: 'full-300'
                , cellMinWidth: 66 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                , cols: [[
                    {type: 'checkbox', fixed: 'left'}
                    // , {field: 'filmId', width: 80, title: 'ID', sort: true}  //不显示id
                    , {field: 'filmName', width: 80, title: '电影'}
                    , {field: 'catName', width: 80, title: '分类', sort: true}
                    , {field: 'releaseDate', width: 80, title: '上映时间'}
                    , {field: 'director', title: '导演', width: 80, minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                    , {field: 'price', title: '票价', width: 80, sort: true}
                    , {field: 'summary', title: '摘要', sort: true}
                    , {field: 'actorOther', width: 80, title: '其他演员'}
                    , {field: 'createBy', width: 137, title: '创建者', sort: true}
                    , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 200}
                ]]
                , page: true
                , id: 'FilmReload'
                , success: function () {

                    layer.closeAll('loading');


                }
            });

        });
    }


</script>


<%--//删除一行--%>
<script>


    layui.use('table', function () {
        var table = layui.table;
        //监听表格复选框选择
        table.on('checkbox(demo)', function (obj) {
            console.log(obj)
        });
        //监听工具条
        table.on('tool(demo)', function (obj) {
            var data = obj.data;
            var lineID = data.filmId;

            if (obj.event === 'detail') {

                xadmin.open("编辑", '../static/back/filminfo-detail.html', '', '', false)

                localStorage.setItem("filminfo-detail", JSON.stringify(data)); //设置a为"visited" 关键代码


            } else if (obj.event === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    // 使用ajax删除一行
                    $.ajax({
                        url: "../admin/filminfo?oper=del",
                        type: "POST",
                        dataType: "text",
                        sync: false,
                        data: "filmId=" + lineID,
                        success: function (data) {
                            if (data == "ok") {
                                layer.msg("删除成功", {icon: 6});
                            } else {
                                layer.alert("删除失败", {icon: 5});
                            }
                        }
                    });
                    obj.del();
                    layer.close(index);
                });

            } else if (obj.event === 'edit') {

                xadmin.open("编辑", '../static/back/filminfo-edit.html', '', '', false)


                localStorage.setItem("a", JSON.stringify(data)); //设置a为"visited" 关键代码

            }


        });
    });
</script>


<%----- 删除多行--%>
<script>
    function delAll() {


        layui.use('table', function () {
            //取表
            var table = layui.table;
            var checkStatus = table.checkStatus('FilmReload');// table.checkStatus是Layui中自带，id: 'FilmReload'可自定义
            if (checkStatus.data.length == 0) {
                parent.layer.msg('请先选择要删除的数据行！', {icon: 2});
                return;
            }

            //取出选中 的值
            var codeId = "";
            var codefilmName = "";
            for (var i = 0; i < checkStatus.data.length; i++) {
                codeId += checkStatus.data[i].filmId + ",";
                codefilmName += checkStatus.data[i].filmName + ",";
            }


            //ajax删除
            layer.confirm("您确定要删除吗？" + codefilmName, function () {
                parent.layer.msg('删除中...', {icon: 16, shade: 0.3, time: 5000});

                $.ajax({
                    type: "POST",
                    url: "../admin/filminfo?oper=multipleDel",
                    data: {"id": codeId},
                    async: false,
                    dataType: "json",
                    success: function (data) {

                        layer.closeAll('loading');
                        if (data.success > 0) {
                            if (data.failed == 0) {
                                parent.layer.msg('删除成功!  ', {icon: 1, time: 2000, shade: 0.2});
                            } else {
                                layer.closeAll('loading');
                                parent.layer.msg('删除成功  ' + data.success + '个,失败 ' + data.failed + '个', {
                                    icon: 1,
                                    time: 2000,
                                    shade: 0.2
                                });
                            }
                            setTimeout(function () {
                                location.reload();
                            }, 2000);


                        } else {
                            parent.layer.msg('删除失败！', {icon: 2, time: 3000, shade: 0.2});
                        }
                    }
                })
            })
        });
    }

</script>

</body>
</html>