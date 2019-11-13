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
            <div class="right" style="width: 100%;">
                <div class="detailDiv">
                    <div class="detail">
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;">数据资源信息详情页面</span>
                        </div>
                        <div class="detailContent">
                            <p class="pHeight"><span>资源&nbsp&nbsp&nbsp&nbspid：</span>xxx</p>
                            <p class="pHeight"><span>资源名称：</span>xxx</p>
                            <p class="pHeight"><span>信息类型：</span>xxx</p>
                            <p class="pHeight"><span>提供方式：</span>xxx</p>
                            <p class="pHeight"><span>更新周期：</span>xxx</p>
                        </div>
                    </div>
                </div>
                <button class="btn" style="float:right;margin-right: 30px;">
                    <span onclick="goBackResourceInfo()">返回</span>
                </button>
            </div>
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    // 跳转到服务注册页面
    function goBackResourceInfo() {
        window.location.href = "/dataResource/resourceInfo";
    }
</script>
