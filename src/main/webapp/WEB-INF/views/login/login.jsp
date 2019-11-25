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
    <title>登录页面</title>
    <base href="<%=basePath %>">
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <script type="text/javascript" src="js/jquery3.4.1/jquery3.4.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="commons/validate.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
</head>

<body>
<div id="login_frame">
   <img src="images/logo.png" class="logo">
    <form method="post" action="/login/login" onsubmit="return check()">
        ${message}
        <p><label class="label_input">用户名</label><input type="text" id="username" name="username" class="text_field"/></p>
        <p><label class="label_input">密码</label><input type="password" id="password" name="password" class="text_field"/></p>

        <div id="login_control">
            <input type="submit" id="btn_login" value="登录"/>
            <%--  <a id="forget_pwd" href="forget_pwd.html">忘记密码？</a>--%>
        </div>
    </form>
</div>

</body>
</html>
<script>
    function check() {
        var username = $("#username").val();
        var password = $("#password").val();
        if (username === "" || username === null) {
            alert("请输入用户名");
            return false;
        } else if (password === "" || password === null) {
            alert("请输入密码");
            return false;
        } else {
            return true;
        }
    }
</script>
<style>

    body {
        background-size: 100%;
        background-repeat: no-repeat;
    }

    #login_frame {
        width: 400px;
        height: 260px;
        padding: 13px;

        position: absolute;
        left: 50%;
        top: 50%;
        margin-left: -200px;
        margin-top: -200px;

        background-color: #bed2c7;

        border-radius: 10px;
        text-align: center;
    }

    form p > * {
        display: inline-block;
        vertical-align: middle;
    }

    #image_logo {
        margin-top: 22px;
    }

    .label_input {
        font-size: 14px;
        font-family: 宋体;

        width: 65px;
        height: 28px;
        line-height: 28px;
        text-align: center;

        color: white;
        background-color: #00303E;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }

    .text_field {
        width: 278px;
        height: 28px;
        border-top-right-radius: 5px;
        border-bottom-right-radius: 5px;
        border: 0;
    }

    #btn_login {
        font-size: 14px;
        font-family: 宋体;

        width: 120px;
        height: 28px;
        line-height: 28px;
        text-align: center;

        color: white;
        background-color: #00303E;
        border-radius: 6px;
        border: 0;

        float: left;
    }

    #forget_pwd {
        font-size: 12px;
        color: white;
        text-decoration: none;
        position: relative;
        float: right;
        top: 5px;

    }

    #forget_pwd:hover {
        color: blue;
        text-decoration: underline;
    }

    #login_control {
        padding: 0 28px;
    }
    .logo {
        width: 40px;
        height: 35px;
        margin-top: -10px;
    }
</style>
