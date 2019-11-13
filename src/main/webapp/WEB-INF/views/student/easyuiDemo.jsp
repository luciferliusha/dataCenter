<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//D HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>easyuiDemo演示</title>
    <base href="<%=basePath %>">
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css"/>
</head>
<body>
<div id="first" class="easyui-panel" title="控制面板"
     style="width: 600px;height: 300px;padding: 25px"
     data-options="iconCls:'icon-save',collapsible:true,minimizable:true,maximizable:true">
    easyui-demo
</div>

<ul class="easyui-tree">
    <li>
        <span>Folder</span>
        <ul>
            <li>
                <span>SubFolder 1</span>
                <ul>
                    <li><span>File 11</span></li>
                    <li><span>File 12</span></li>
                    <li><span>File 13</span></li>
                </ul>
            </li>

            <li><span>File 2</span></li>
            <li><span>File 3</span></li>
        </ul>
    </li>
    <li><span>File 21</span></li>
</ul>
<h1>===================================================================</h1>

<h2>日期框</h2>
<div style="margin:20px"></div>
<input class="easyui-datebox"></input>

<hr>
<h2>日期框</h2>
<div class="easyui-datebox" style="height: 30px;width: 50px;"></div>

<h1>=================================================================</h1>

<h2>表单</h2>
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="New Topic" style="width:400px">
    <div style="padding:10px 60px 20px 60px">
        <form id="ff" method="post">
            <table cellpadding="5">
                <tr>
                    <td>Name:</td>
                    <td><input class="easyui-textbox" type="text" name="name" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input class="easyui-textbox" type="text" name="email"
                               data-options="required:true,validType:'email'"></input></td>
                </tr>
                <tr>
                    <td>Subject:</td>
                    <td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
                    </td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><input class="easyui-textbox" name="message" data-options="multiline:true"
                               style="height:60px"></input></td>
                </tr>
                <tr>
                    <td>Language:</td>
                    <td>
                        <select class="easyui-combobox" name="language">
                            <option value="ar">Arabic</option>
                            <option value="bg">Bulgarian</option>
                            <option value="ca">Catalan</option>
                            <option value="zh-cht">Chinese Traditional</option>
                            <option value="cs">Czech</option>
                            <option value="da">Danish</option>
                            <option value="nl">Dutch</option>
                            <option value="en" selected="selected">English</option>
                            <option value="et">Estonian</option>
                            <option value="fi">Finnish</option>
                            <option value="fr">French</option>
                            <option value="de">German</option>
                            <option value="el">Greek</option>
                            <option value="ht">Haitian Creole</option>
                            <option value="he">Hebrew</option>
                            <option value="hi">Hindi</option>
                            <option value="mww">Hmong Daw</option>
                            <option value="hu">Hungarian</option>
                            <option value="id">Indonesian</option>
                            <option value="it">Italian</option>
                            <option value="ja">Japanese</option>
                            <option value="ko">Korean</option>
                            <option value="lv">Latvian</option>
                            <option value="lt">Lithuanian</option>
                            <option value="no">Norwegian</option>
                            <option value="fa">Persian</option>
                            <option value="pl">Polish</option>
                            <option value="pt">Portuguese</option>
                            <option value="ro">Romanian</option>
                            <option value="ru">Russian</option>
                            <option value="sk">Slovak</option>
                            <option value="sl">Slovenian</option>
                            <option value="es">Spanish</option>
                            <option value="sv">Swedish</option>
                            <option value="th">Thai</option>
                            <option value="tr">Turkish</option>
                            <option value="uk">Ukrainian</option>
                            <option value="vi">Vietnamese</option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
        </div>
    </div>
</div>

<h1>==========================================================================</h1>

<h2>进度条</h2>
<div style="margin:20px 0" class="easyui-linkbutton" onclick="start()">开始</div>
<div id="p" class="easyui-progressbar" style="width:400px;"></div>

<h1>==========================================================================</h1>
<h2>文本框</h2>
<input class="easyui-textbox" data-options="iconCls:'icon-search'" style="width: 260px;">
<%--js写法--%>
<input id="tb" type="text" style="width:300px">

<h1>=========================================================================</h1>
<h2>标签框</h2>
<input class="easyui-tagbox" value="lanZhou,xiAn" label="Add a tag" style="width: 300px;">

<h1>========================================================================</h1>
<h2>密码框</h2>
<input class="easyui-passwordbox" prompt="Password" iconWidth="30"
       style="width: 300px;height: 10px;padding: 10px">


<div id="mm" class="easyui-menu" style="width:120px;">
    <div onclick="javascript:alert('new')">New</div>
    <div>
        <span>Open</span>
        <div style="width:150px;">
            <div><b>Word</b></div>
            <div>Excel</div>
            <div>PowerPoint</div>
        </div>
    </div>
    <div icon="icon-save">Save</div>
    <div class="menu-sep"></div>
    <div>Exit</div>
</div>

<h1>==============================================================================</h1>
<h2>创建菜单按钮</h2>
<div style="background:#fafafa;padding:5px;width:200px;border:1px solid #ccc">
    <a href="#" class="easyui-menubutton" menu="#mm1" iconCls="icon-edit">Edit</a>
    <a href="#" class="easyui-menubutton" menu="#mm2" iconCls="icon-help"></a>
</div>
<div id="mm1" style="width:150px;">
    <div iconCls="icon-undo">Undo</div>
    <div iconCls="icon-redo">Redo</div>
    <div class="menu-sep"></div>
    <div>Cut</div>
    <div>Copy</div>
    <div>Paste</div>
    <div class="menu-sep"></div>
    <div iconCls="icon-remove">Delete</div>
    <div>Select All</div>
</div>
<div id="mm2" style="width:100px;">
    <div>Help</div>
    <div>Update</div>
    <div>About</div>
</div>


</body>
<script type="text/javascript">

    function submitForm() {
        $('#ff').form('submit');
    }

    function clearForm() {
        $('#ff').form('clear');
    }

    function start() {
        var value = $("#p").progressbar("getValue");
        if (value < 100) {
            value += Math.floor(Math.random() * 10);
            alert(value)
            $("#p").progressbar("setValue", value);
            setTimeout(arguments.callee, 200);

        }
    }

    $('#tb').textbox({
        buttonText: 'Search',
        iconCls: 'icon-man',
        iconAlign: 'left'
    })

    $('#mm').menu('show', {
        left: 200,
        top: 100
    })


</script>

</html>