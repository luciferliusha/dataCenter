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
                        <%-- 动态加载--%>
                        <div id="resourceDetail" class="detailContent">

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
</div>
</body>
</html>
<script type="text/javascript">
    // 页面一加载就执行
    $(function () {
        var id = getQueryString("id");
        getDataResourceDetailById(id);
    });
    // 资源详情
    function getDataResourceDetailById(id) {
        $.ajax({
            url:'/dataResourceDetail/getDataResourceDetailById/' + id,
            type: 'get',
            dataType:"json",
            success:function (res) {
                var dataResourceStr = '';
                    dataResourceStr += '<p><span>资源类型 ：</span>' + res.resourceType + '</p>'
                    dataResourceStr += '<p><span>资源名称 ：</span>' + res.resourceName + '</p>'
                    dataResourceStr += '<p><span>表名称 ：</span>' + res.tableName1 + '</p>'
                    dataResourceStr += '<p><span>描述 ：</span>' + res.description+ '</p>'
                    dataResourceStr += '<p><span>更新周期：</span>' + res.updateCycle+ '</p>'
                    dataResourceStr += '<p><span>备注：</span>' + res.remark + '</p>';
                $("#resourceDetail").html(dataResourceStr);
            }
        })
    }
    // 跳转到资源列表页面
    function goBackResourceInfo() {
        window.location.href = "/dataResource/resourceInfo";
    }
</script>
