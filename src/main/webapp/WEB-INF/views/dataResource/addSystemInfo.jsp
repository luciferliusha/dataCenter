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
    <script type="text/javascript" src="js/jquery3.4.1/jquery3.4.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="commons/validate.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>

</head>
<body>

<div >
    <div >
        <table >
            <tr>
                <td>来源单位</td>
                <td><input id="sourceWorkplace" class="easyui-combobox" data-options="required:true,validType:'sourceWorkplace'"></td>
            </tr>
            <tr>
                <td>来源部门</td>
                <td><input id="sourceDepart" class="easyui-combobox" data-options="required:true,validType:'sourceDepart'"></td>
            </tr>
            <tr>
                <td>负责人</td>
                <td><input id="leader" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
            </tr>
            <tr>
                <td>负责人联系电话</td>
                <td><input id="headPhone" class="easyui-combobox" data-options="required:true,validType:'length[3,10]'"></td>
                <button onclick="add()">新增</button>
            </tr>
            <tr>
                <td>来源系统</td>
                <td><input id="sourceSys" class="easyui-combobox" data-options="required:true,prompt:'请选择提供方式',validType:'provideWay'"></td>
            </tr>
            <tr>
                <td>技术负责人</td>
                <td><input id="techLead" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
            </tr>
            <tr>
                <td>技术负责人电话</td>
                <td><input id="techLeadPhone" class="easyui-textbox" data-options="required:true,validType:'length[3,10]'"></td>
            </tr>
        </table>
    </div>
</div>

<script type="text/javascript">


</script>

</html>