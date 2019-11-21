<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//D HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <base href="<%=basePath %>">
</head>

<body>
<div class="app">
    <jsp:include page="../../common/header.jsp"></jsp:include>
    <div class="content-wrap">
        <div class="main-content">
            <div class="left">
                <div class="menu-list">
                    <p class="title more curMenu">服务资源分类1
                        <img src="images/seeMore.png">
                    </p>
                </div>
                <div class="menu-list">
                    <p class="title more">服务资源分类2
                        <img src="images/seeMore.png">
                    </p>
                </div>
            </div>
            <div class="right">
                <div class="tagTitle">
                    <span class="yiji">一级菜单</span>
                </div>
                <div class="search">
                    <label>服务名称</label>
                    <input type="text" class="easyui-text">
                    <button class="btn">
                        <span>查询</span>
                    </button>
                    <button class="btn">
                        <span onclick="goDetail()">注册</span>
                    </button>
                </div>
                <div class="detailDiv">
<%--                    <div class="detail">--%>
<%--                        <div class="detailTitle">--%>
<%--                            <span class="span-name" onclick="goDetail()">服务资源信息</span>--%>
<%--                            <button class="btn">--%>
<%--                                <span >发布</span>--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                        <div class="detailContent">--%>
<%--                            <p><span>服务类型：</span>xxx</p>--%>
<%--                            <p><span>服务名称：</span>xxx</p>--%>
<%--                            <p><span>服务描述：</span>xxx</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    // 页面一加载就 执行
    $(function () {
        // 切换一级菜单
        switchMenu();
        // 得到服务资源列表
        getServiceResourceList();
    });
    // 切换一级菜单
    function switchMenu() {
        $(".menu-list").on("click", "p", function () {
            $(".menu-list").find("p").removeClass("curMenu");
            $(this).addClass("curMenu");
            $(".yiji").text($(this).text());
        });
    }

    // 跳转服务注册详情页面
    function goDetail() {
        window.location.href = "/serverResourceDetail/serverResourceDetail"
    }

    // 查询服务资源列表
    function getServiceResourceList() {
        $.ajax({
            url:'/serverRelease/getServiceResourceList',
            type: 'get',
            dataType:"json",
            success:function(res) {
                var serverReleaseStr = '';
                for (var i = 0;i<res.length;i++) {
                    serverReleaseStr += '<div class="detail">'
                    serverReleaseStr +=     '<div class="detailTitle">'
                    serverReleaseStr +=         '<span class="span-name" onclick="goDetail()">服务资源信息</span>'
                    serverReleaseStr +=     '</div>'
                    serverReleaseStr +=     '<div class="detailContent">'
                    serverReleaseStr +=         '<p><span>资源名称 ：</span>' + res[i].serviceName + '</p>'
                    serverReleaseStr +=         '<p><span>服务名称 ：</span>' + res[i].serviceName + '</p>'
                    serverReleaseStr +=         '<p><span>描述 ：</span>' + res[i].serviceDesc + '</p>'
                    serverReleaseStr +=     '</div>'
                    serverReleaseStr += '</div>'
                }
                $(".detailDiv").html(serverReleaseStr)
            }
        })
    }


</script>
