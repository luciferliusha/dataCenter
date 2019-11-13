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
    <jsp:include page="../common/header.jsp"></jsp:include>
    <div class="content-wrap">
        <div class="manageHome">
                <div class="bgDiv">
                    <div class="inputDiv">
                        <input type="text" placeholder="输入资源名称关键字..." class="hInput">
                        <span>
                            <img src="images/sosuo.png" alt="">
                        </span>
                    </div>
                </div>
                <div class="service">
                    <div class="left">
                        <div class="title">
                            <span class="titleSpan">最新数据资源</span>
                            <span class="more">
                                <span>查看更多</span>
                                <img src="images/seeMore.png" alt="">
                            </span>
                        </div>
                        <div class="content">
                            <ul>
                                <li class="one">【数据资源名称】数据资源信息</li>
                                <li class="one">【数据资源名称】数据资源信息</li>
                                <li class="one">【数据资源名称】数据资源信息</li>
                                <li class="one">【数据资源名称】数据资源信息</li>
                                <li class="one">【数据资源名称】数据资源信息</li>
                            </ul>
                        </div>
                    </div>
                    <div class="right">
                        <div class="title">
                            <span class="titleSpan">最新服务发布</span>
                            <span class="more">
                                <span>查看更多</span>
                                <img src="images/seeMore.png" alt="">
                            </span>
                        </div>
                        <div class="content">
                            <ul>
                                <li class="one">【服务发布名称】服务发布信息</li>
                                <li class="one">【服务发布名称】服务发布信息</li>
                                <li class="one">【服务发布名称】服务发布信息</li>
                                <li class="one">【服务发布名称】服务发布信息</li>
                                <li class="one">【服务发布名称】服务发布信息</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>

