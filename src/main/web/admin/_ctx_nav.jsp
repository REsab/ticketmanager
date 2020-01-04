<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li><a href="javascript:;"> <i class="iconfont left-nav-li"
                                           lay-tips="会员管理">&#xe6b8;</i> <cite>账号管理</cite> <i
                    class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li><a onclick="xadmin.add_tab('统计页面','welcome1.html')"> <i
                            class="iconfont">&#xe6a7;</i> <cite>统计页面</cite></a></li>
                    <li><a href="Main?oper=view"> <i class="iconfont active">&#xe6a7;</i>
                        <cite>后台账号列表</cite></a></li>
                    <li><a href="Member?oper=memberView"> <i class="iconfont">&#xe6a7;</i>
                        <cite>用户列表</cite>
                    </a></li>
                    <li><a onclick="xadmin.add_tab('会员删除','member-del.html')">
                        <i class="iconfont">&#xe6a7;</i> <cite>会员删除</cite>
                    </a></li>
                    <li><a href="javascript:;"> <i class="iconfont">&#xe70b;</i>
                        <cite>会员管理</cite> <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li><a onclick="xadmin.add_tab('会员删除','member-del.html')">
                                <i class="iconfont">&#xe6a7;</i> <cite>会员删除</cite>
                            </a></li>
                            <li><a onclick="xadmin.add_tab('等级管理','member-list1.html')">
                                <i class="iconfont">&#xe6a7;</i> <cite>等级管理</cite>
                            </a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="javascript:;"> <i class="iconfont left-nav-li"
                                           lay-tips="订单管理">&#xe723;</i> <cite>订单管理</cite> <i
                    class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li><a href="Order?oper=listView"> <i class="iconfont">&#xe6a7;</i>
                        <cite>订单列表</cite>
                    </a></li>
                    <li><a href="Order?oper=returnAppView"> <i
                            class="iconfont">&#xe6a7;</i> <cite>退单申请管理</cite>
                    </a></li>
                    <li><a href="Order?oper=returnListView"> <i
                            class="iconfont">&#xe6a7;</i> <cite>退单列表</cite>
                    </a></li>
                </ul>
            </li>
            <li><a href="javascript:;"> <i class="iconfont left-nav-li"
                                           lay-tips="影片管理">&#xe723;</i> <cite>影片管理</cite> <i
                    class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <%--                    url : 'ArticleCat?oper=deleteDeal$id=' + id,--%>
                    <li><a
                            href="filminfo?oper=list"> <i class="iconfont">&#xe6a7;</i>
                        <cite>影片列表</cite>
                    </a></li>
                    <li><a
                            onclick="xadmin.open('添加影片','${AppRootPath}/static/back/filminfo-add.html','','')">
                        <i class="iconfont">&#xe6a7;</i> <cite>添加影片</cite>
                    </a></li>

                    <hr>

                    <li><a
                            onclick="xadmin.add_tab('影片分类','/admin/filmcat?oper=list')"
                            href="filmcat?oper=list"> <i class="iconfont">&#xe6a7;</i>
                        <cite>影片分类</cite>
                    </a></li>

                    <li><a
                            onclick="xadmin.open('添加分类','${AppRootPath}/static/back/filmcat-add.html',500,500)">
                        <i class="iconfont">&#xe6a7;</i> <cite>添加分类</cite>

                    </a></li>
                </ul>
            </li>

        </ul>
    </div>
</div>