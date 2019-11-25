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
                        <%-- 动态加载--%>
                        <div id="resourceDetail">

                        </div>
                    </div>
                </div>
                <button class="btn" style="float:right;margin-right: 30px;">
                    <span onclick="goBackServerResource()">返回</span>
                </button>
            </div>
            <jsp:include page="../../common/footer.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    // 页面一加载就执行
    $(function () {
        var id = getQueryString("id");
        getServerResourceById(id);
    });
    // 资源详情
    function getServerResourceById(id) {
        $.ajax({
            url:'/serverResource/getServerResourceById/' + id,
            type: 'get',
            dataType:"json",
            success:function (res) {
                var serverResourceStr = '';
                serverResourceStr += '<div class="detailTitle">'
                serverResourceStr += '<span class="span-name" style="text-decoration: none;">服务资源详情</span>'
                serverResourceStr += '</div>'
                serverResourceStr += '<div class="detailContent">'
                serverResourceStr += '<p><span>服务名称 ：</span>' + res.serviceName + '</p>'
                serverResourceStr += '<p><span>服务描述 ：</span>' + res.serviceDesc + '</p>'
                serverResourceStr += '</div>';
                serverResourceStr += '<div class="detailTitle">'
                serverResourceStr += '<span class="span-name" style="text-decoration: none;">数据库信息</span>'
                serverResourceStr += '</div>'
                serverResourceStr += '<div class="detailContent">'
                serverResourceStr += '<p><span>IP ：</span>' + res.dbIp + '</p>'
                serverResourceStr += '<p><span>端口 ：</span>' + res.dbPort + '</p>'
                serverResourceStr += '<p><span>数据库名称 ：</span>' + res.dbName + '</p>'
                serverResourceStr += '<p><span>表名 ：</span>' + res.dbTableName + '</p>'
                serverResourceStr += '<p><span>用户名 ：</span>' + res.dbUsername + '</p>'
                serverResourceStr += '<p><span>密码 ：</span>' + res.dbPassword + '</p>'
                serverResourceStr += '</div>';
                serverResourceStr += '<div class="detailTitle">'
                serverResourceStr += '<span class="span-name" style="text-decoration: none;">WebService信息</span>'
                serverResourceStr += '</div>'
                serverResourceStr += '<div class="detailContent">'
                serverResourceStr += '<p><span>IP ：</span>' + res.wsdlIp + '</p>'
                serverResourceStr += '<p><span>端口 ：</span>' + res.wsdlPort + '</p>'
                serverResourceStr += '<p><span>url ：</span>' + res.wsdlUrl + '</p>'
                serverResourceStr += '</div>';
                serverResourceStr += '<div class="detailTitle">'
                serverResourceStr += '<span class="span-name" style="text-decoration: none;">Restful信息</span>'
                serverResourceStr += '</div>'
                serverResourceStr += '<div class="detailContent">'
                serverResourceStr += '<p><span>restful请求方式 ：</span>' + res.restfulMethod + '</p>'
                serverResourceStr += '<p><span>IP ：</span>' + res.restfulIp + '</p>'
                serverResourceStr += '<p><span>端口 ：</span>' + res.restfulPort + '</p>'
                serverResourceStr += '<p><span>url ：</span>' + res.restfulUrl + '</p>'
                serverResourceStr += '<p><span>参数 ：</span>' + res.restfulParam + '</p>'
                serverResourceStr += '</div>';
                serverResourceStr += '<div class="detailTitle">'
                serverResourceStr += '<span class="span-name" style="text-decoration: none;">FTP信息</span>'
                serverResourceStr += '</div>'
                serverResourceStr += '<div class="detailContent">'
                serverResourceStr += '<p><span>IP ：</span>' + res.ftpIp + '</p>'
                serverResourceStr += '<p><span>端口 ：</span>' + res.ftpPort + '</p>'
                serverResourceStr += '<p><span>用户名 ：</span>' + res.ftpUsername + '</p>'
                serverResourceStr += '<p><span>密码 ：</span>' + res.ftpPassword + '</p>'
                serverResourceStr += '</div>';
                $("#resourceDetail").html(serverResourceStr);
            }
        })
    }
    function goBackServerResource() {
        window.location.href = "/serverResource/serverResourceInfo";
    }
</script>
