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
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <script type="text/javascript" src="js/jquery3.4.1/jquery3.4.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="commons/validate.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
</head>

<body>
<div class="header">
    <div class="wrap">
        <img src="images/logo.png" class="logo">
        <span class="title">陕西省港航信息资源平台</span>
        <p class="user">
            <imp crc="images/user.png">
            <span class="exit">退出</span>
            <span class="line">|</span>
            <span title="登录" class="user_name" onclick="login()">登录</span>
        </p>
    </div>
    <div class="content-menu">
        <ul class="menu-wrap">
            <c:if test="${flag == 1}">
                <li class="menu-item active"><a href="index/index">首页</a></li>
                <li class="menu-item"><a href="/dataResource/resourceInfo">数据资源目录</a></li>
                <li class="menu-item"><a href="serverRelease/serverReleaseInfo">服务资源目录</a></li>
            </c:if>
            <c:if test="${flag == 2}">
                <li class="menu-item"><a href="index/index">首页</a></li>
                <li class="menu-item active"><a href="/dataResource/resourceInfo">数据资源目录</a></li>
                <li class="menu-item"><a href="serverRelease/serverReleaseInfo">服务资源目录</a></li>
            </c:if>
            <c:if test="${flag == 3}">
                <li class="menu-item"><a href="index/index">首页</a></li>
                <li class="menu-item"><a href="/dataResource/resourceInfo">数据资源目录</a></li>
                <li class="menu-item active"><a href="serverRelease/serverReleaseInfo">服务资源目录</a></li>
            </c:if>
            <%--<li class="menu-item"><a href="#">数据采集</a></li>--%>
        </ul>
    </div>
</div>
</body>
<script>
    function login() {
        window.location.href = "/login/login";
    }
</script>

