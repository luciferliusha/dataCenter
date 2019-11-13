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
            <table class="content-table">
                <tr>
                    <td style="text-align: center">交换信息</td>
                </tr>
                <tr>
                    <td>交换ID</td>
                    <td><input id="switchId" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
                </tr>
                <tr>
                    <td>交换名称</td>
                    <td><input id="switchName" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
                </tr>
                <tr>
                    <td>数据来源</td>
                    <td><input id="dataSource" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
                </tr>
                <tr>
                    <td>来源方式</td>
                    <td><input data-options="url:'${pageContext.request.contextPath }/json/switch_msg.json',
			                    valueField:'id',
			                    textField:'way'"
                               class="easyui-combobox"></td>
                </tr>
                <tr>
                    <td>数据目标</td>
                    <td><input id="dataGoal" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>

                </tr>
                <tr>
                    <td>交换状态</td>
                    <td><input id="switchStage" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
                </tr>
            </table>
        </div>
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>

