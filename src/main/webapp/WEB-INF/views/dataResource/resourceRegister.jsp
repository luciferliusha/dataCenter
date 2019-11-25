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
                                <input id="resourceName" type="text" placeholder="请输入资源名称" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>表名称：</span>
                                <input id="tableName1" type="text" placeholder="请输入表名称" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>描述：</span>
                                <textarea id="description" rows="8" cols="135" placeholder="请输入描述"></textarea>
                            </p>
                            <p class="pstyle">
                                <span>更新周期：</span>
                                <input id="updateCycle" type="date" placeholder="请选择更新周期" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>备注：</span>
                                <textarea id="remark" rows="8" cols="135" placeholder="请输入备注"></textarea>
                            </p>
                        </div>
                    </div>
                </div>
                <button class="btn" style="margin-left: 1050px;margin-bottom:20px;">
                    <span onclick="addDataResource()">提交</span>
                </button>
                <button class="btn" style="float:right;margin-right: 30px;margin-bottom:20px;">
                    <span onclick="goBackResourceInfo()">返回</span>
                </button>
            </div>
        </div>
    </div>
    <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    // 增加数据资源信息
    function addDataResource() {
        // 提交的参数
        var params = {
            resourceType: getQueryString("resourceType"),
            resourceName : $("#resourceName").val(),
            tableName1 : $("#tableName1").val(),
            description : $("#description").val(),
            updateCycle : $("#updateCycle").val(),
            remark : $("#remark").val()
        }
        $.ajax({
            url: '/dataResource/saveDataResource',
            type: "post",
            dataType: "json",
            data: params,
            success:function(res) {
                if (res.message === 'success') {
                    alert("注册成功！");
                } else {
                    alert("注册失败！");
                }
                window.location.href = "/dataResource/resourceInfo";
            }
        });
        return false;
    }
    // 跳转到服务注册页面
    function goBackResourceInfo() {
        window.location.href = "/dataResource/resourceInfo";
    }
</script>
