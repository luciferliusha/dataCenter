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
            <%-- 动态加载数据资源分类 --%>
            <div id="resourceType" class="left">

            </div>
            <div class="right">
                <div class="tagTitle">
                    <span class="yiji">一级菜单</span>
                </div>
                <div class="search">
                    <label>资源名称</label>
                    <input id="resourceName" type="text">
                    <button class="btn">
                        <span onclick="getDataResourceList()">查询</span>
                    </button>
                    <button class="btn">
                        <span onclick="goRegister()">注册</span>
                    </button>
                </div>
                <%-- 动态加载的内容，通过ajax获取 --%>
                <div class="detailDiv">
                </div>
            </div>
        </div>
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    // 页面一加载就执行
    $(function () {
        // 获取数据资源分类
        getDataResourceType();
    });
    // 切换一级菜单
    function switchMenu() {
        $(".menu-list").on("click", "p", function () {
            $(".menu-list").find("p").removeClass("curMenu");
            $(this).addClass("curMenu");
            $(".yiji").text($(this).text());
            getDataResourceList();
        });
    }
    // 跳转到资源注册页面
    function goRegister() {
        var resourceType = $("#resourceType").find(".curMenu").attr("id");
        window.location.href = "/dataResource/resourceRegister?resourceType="+resourceType;
    }

    // 跳转资源详情页面
    function goDetail(id) {
        window.location.href = "/dataResourceDetail/dataResourceDetail?id="+id
    }

    // 获取数据资源分类
    function getDataResourceType() {
        var param = {
            groupCode: "data_resource"
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
                $("#resourceType").html(resourceTypeStr);
                $("#resourceType").find(".menu-list:first").find("p").addClass("curMenu");
                // 切换一级菜单
                switchMenu();
                getDataResourceList();
            }
        })
    }
    // 查询数据资源列表
    function getDataResourceList() {
        var param = {
            resourceName: $("#resourceName").val(),
            resourceType: $("#resourceType").find(".curMenu").attr("id")
        }
        $.ajax({
            url:'/dataResource/getDataResourceList',
            type: 'get',
            data: param,
            dataType:"json",
            success:function(res) {
                var dataResourceStr = '';
                for (var i = 0;i<res.length;i++) {
                    dataResourceStr += '<div class="detail">'
                    dataResourceStr +=     '<div class="detailTitle">'
                    dataResourceStr +=         '<span class="span-name" onclick="goDetail('+res[i].id+')">数据资源信息</span>'
                    dataResourceStr +=     '</div>'
                    dataResourceStr +=     '<div class="detailContent">'
                    dataResourceStr +=         '<p><span >资源名称 ：</span>' + res[i].resourceName + '</p>'
                    dataResourceStr +=         '<p><span>表名称 ：</span>' + res[i].tableName1 + '</p>'
                    dataResourceStr +=         '<p><span>描述 ：</span>' + res[i].description + '</p>'
                    dataResourceStr +=         '<p><span>更新周期：</span>' + res[i].updateCycle + '</p>'
                    dataResourceStr +=         '<p><span>备注：</span>' + res[i].remark + '</p>'
                    dataResourceStr +=     '</div>'
                    dataResourceStr += '</div>'
                }
                $(".detailDiv").html(dataResourceStr);
            }
        })
    }

</script>
