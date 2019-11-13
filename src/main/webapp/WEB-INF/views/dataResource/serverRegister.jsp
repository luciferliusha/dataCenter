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
            <div class="service-detail-bg">
                <div class="service-detail">
                    <div class="detail">
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;cursor: default;">资源基本信息</span>
                        </div>
                        <div style="margin: 10px 15px;">
                            <p class="pstyle">
                                <span>资源名称：</span>
                                <input type="text" placeholder="请输入资源名称" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>表名称：</span>
                                <input type="text" placeholder="请输入表名称" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>描述：</span>
                                <textarea rows="8" cols="135" placeholder="请输入描述"></textarea>
                            </p>
                            <p class="pstyle">
                                <span>更新周期：</span>
                                <input type="date" placeholder="请选择更新周期" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>备注：</span>
                                <textarea rows="8" cols="135" placeholder="请输入备注"></textarea>
                            </p>
                        </div>
                    </div>
                </div>
                <button class="btn" style="margin-left: 1050px;margin-bottom:20px;">
                    <span onclick="submit()">提交</span>
                </button>
                <button class="btn" style="float:right;margin-right: 30px;margin-bottom:20px;">
                    <span onclick="goBackResourceInfo()">返回</span>
                </button>
            </div>
        </div>
    </div>
    <div id="dd"></div>
    <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    function show()
    {
        var url_str = '../dataResource/addSystemInfo';
        $('#dd').load(url_str, function () {
            $(this).dialog({
                title: '系统信息',
                modal: true,
                loadingMessage: '正在加载...',
                buttons: [ {
                    text: '关闭',
                    handler: function () {
                        $('#dd').dialog('close');
                    }
                }]
            });
        }).show();
    }
    // 服务注册提交
    function submit() {
        alert("服务注册成功！")
    }
    // 跳转到服务注册页面
    function goBackResourceInfo() {
        window.location.href = "/dataResource/resourceInfo";
    }
</script>
