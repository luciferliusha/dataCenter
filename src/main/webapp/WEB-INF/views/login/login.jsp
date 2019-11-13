<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//D HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <base href="<%=basePath %>">
</head>

<body>
<div id="login_frame">

   <img src="images/logo.png" class="logo">

    <form method="post" action="">

        <p><label class="label_input">用户名</label><input type="text" id="username" class="text_field"/></p>
        <p><label class="label_input">密码</label><input type="text" id="password" class="text_field"/></p>

        <div id="login_control">
            <input type="button" id="btn_login" value="登录" οnclick="login();"/>
            <a id="forget_pwd" href="forget_pwd.html">忘记密码？</a>
        </div>
    </form>
</div>

</body>
</html>
<script>
    function login() {

        var username = document.getElementById("username");
        var pass = document.getElementById("password");

        if (username.value == "") {

            alert("请输入用户名");

        } else if (pass.value  == "") {

            alert("请输入密码");

        } else if(username.value == "admin" && pass.value == "123456"){

            window.location.href="welcome.html";

        } else {

            alert("请输入正确的用户名和密码！")

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
