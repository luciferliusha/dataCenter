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
                    <p class="title more curMenu">数据资源分类1
                        <img src="images/seeMore.png">
                    </p>
                </div>
                <div class="menu-list">
                    <p class="title more">数据资源分类2
                        <img src="images/seeMore.png">
                    </p>
                </div>
            </div>
            <div class="right">
                <div class="tagTitle">
                    <span class="yiji">一级菜单</span>
                </div>
                <div class="search">
                    <label>资源名称</label>
                    <input type="text" class="easyui-text">
                    <button class="btn">
                        <span>查询</span>
                    </button>
                    <button class="btn">
                        <span onclick="goRegister()">注册</span>
                    </button>
                </div>
                <div class="detailDiv">
                    <div class="detail">
                        <div class="detailTitle">
                            <span class="span-name" onclick="goDetail()">数据资源信息</span>
                            <span class="seeicon"><img src="images/seeicon.png">浏览量：1次</span>
                            <span class="applyicon"><img src="images/applyicon.png">申请量：2次</span>
                        </div>
                        <div class="detailContent">
                            <p><span>资源名称 ：</span>xxx</p>
                            <p><span>表名称 ：</span>xxx</p>
                            <p><span>更新周期：</span>xxx</p>
                            <p><span>描述：</span>xxx</p>
                            <p><span>备注：</span>xxx</p>
                        </div>
                    </div>
                    <div class="detail">
                    <div class="detailTitle">
                        <span class="span-name" onclick="goDetail()">数据资源信息</span>
                        <span class="seeicon"><img src="images/seeicon.png">浏览量：1次</span>
                        <span class="applyicon"><img src="images/applyicon.png">申请量：2次</span>
                    </div>
                        <c:forEach items="${DataResourceList}" var="item">
                            <div class="detailContent">
                                <p><span>资源类型 ：</span>item.resourceType</p>
                                <p><span>资源名称 ：</span>item.resourceName</p>
                                <p><span>表名称 ：</span>item.tableName1</p>
                                <p><span>更新周期：</span>item.updateCycle</p>
                                <p><span>描述：</span>item.description</p>
                                <p><span>备注：</span>item.remark</p>
                            </div>
                        </c:forEach>
                </div>
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
        // 切换一级菜单
        switchMenu();
        getDataResourceList();
    });
    // 切换一级菜单
    function switchMenu() {
        $(".menu-list").on("click", "p", function () {
            $(".menu-list").find("p").removeClass("curMenu");
            $(this).addClass("curMenu");
            $(".yiji").text($(this).text());
        });
    }
    // 跳转到资源注册页面
    function goRegister() {
        window.location.href = "/serverRegister/serverRegister";
    }

    // 跳转资源详情页面
    function goDetail() {
        window.location.href = "/dataResourceDetail/dataResourceDetail"
    }

    // 查询数据资源列表
    function getDataResourceList() {
        $.ajax({
            url:'/dataResource/getDataResourceList',
            type: 'get',
            dataType:"json",
            success:function(res) {
                console.log(res)
                var dataResourceStr = '';
                for (var i = 0;i<res.data.length;i++) {
                    dataResourceStr += '<div class="detail">'
                    dataResourceStr += '<div class="detailTitle">'
                    dataResourceStr +=       '<span class="span-name" onclick="goDetail()">数据资源信息</span>'
                    dataResourceStr +=   '</div>'
                    dataResourceStr +=    '<div class="detailContent">'
                    dataResourceStr +=    '<p><span>资源类型 ：</span>'+kkk+'</p>'
                    dataResourceStr +=     '<p><span>资源名称 ：</span>'+kkk+'</p>'
                    dataResourceStr +=    '<p><span>表名称 ：</span>'+kkk+'</p>'
                    dataResourceStr +=    '<p><span>更新周期：</span>'+kkk+'</p>'
                    dataResourceStr +=    '<p><span>描述：</span>'+kkk+'</p>'
                    dataResourceStr +=    '<p><span>备注：</span>'+kkk+'</p>'
                    dataResourceStr +=    '</div>'
                    dataResourceStr +='</div>'
                }
                $(".detailDiv").html(dataResourceStr)
            }
        })
    }
</script>
