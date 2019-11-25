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
            <%-- 动态加载资源分类--%>
            <div id="serviceType" class="left">

            </div>
            <div class="right">
                <div class="tagTitle">
                    <span class="yiji">一级菜单</span>
                </div>
                <div class="search">
                    <label>服务名称</label>
                    <input id="serviceName" type="text" class="easyui-text">
                    <button class="btn">
                        <span onclick="getServiceResourceList()">查询</span>
                    </button>
                    <button class="btn">
                        <span onclick="goRegister()">注册</span>
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
        // 获取服务资源分类
        getDataResourceType();
    });
    // 切换一级菜单
    function switchMenu() {
        $(".menu-list").on("click", "p", function () {
            $(".menu-list").find("p").removeClass("curMenu");
            $(this).addClass("curMenu");
            $(".yiji").text($(this).text());
            getServiceResourceList();
        });
    }

    // 跳转服务注册页面
    function goRegister() {
        var serviceType = $("#serviceType").find(".curMenu").attr("id");
        window.location.href = "/serverResource/serverResourceRegister?serviceType=" + serviceType;
    }
    // 跳转服务资源详情页面
    function goDetail(id) {
        window.location.href = "/serverResource/serverResourceDetail?id=" + id;
    }

    // 获取数据资源分类
    function getDataResourceType() {
        var param = {
            groupCode: "server_resource"
        }
        $.ajax({
            url:'/common/getItem',
            type: 'get',
            data: param,
            dataType:"json",
            success:function(res) {
                var resourceTypeStr = '';
                for (var i = 0;i<res.length;i++) {
                    resourceTypeStr += '<div class="menu-list">';
                    resourceTypeStr += '<p id="' + res[i].itemCode+ '" class="title more">' + res[i].itemName+ '';
                    resourceTypeStr += '<img src="images/seeMore.png">';
                    resourceTypeStr += '</p>';
                    resourceTypeStr += '</div>';
                }
                $("#serviceType").html(resourceTypeStr);
                $("#serviceType").find(".menu-list:first").find("p").addClass("curMenu");
                // 切换一级菜单
                switchMenu();
                // 得到服务资源列表
                getServiceResourceList();
            }
        })
    }
    // 查询服务资源列表
    function getServiceResourceList() {
        var param = {
            serviceName: $("#serviceName").val(),
            serviceType: $("#serviceType").find(".curMenu").attr("id")
        }
        $.ajax({
            url:'/serverResource/getServiceResourceList',
            type: 'get',
            dataType:"json",
            data: param,
            success:function(res) {
                var serverReleaseStr = '';
                for (var i = 0;i<res.length;i++) {
                    serverReleaseStr += '<div class="detail">'
                    serverReleaseStr +=     '<div class="detailTitle">'
                    serverReleaseStr +=         '<span class="span-name" onclick="goDetail(' + res[i].id + ')">服务资源信息</span>'
                    serverReleaseStr +=     '</div>'
                    serverReleaseStr +=     '<div class="detailContent">'
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
