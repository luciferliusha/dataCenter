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
    <title>学生列表页面</title>
    <base href="<%=basePath %>">
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css"/>
</head>
<body>
<%--<table border="1" width="200" cellpadding="0" cellspacing="0">
   <tr align="center"  class="first_tr">
       <td>Id</td>
       <td>姓名</td>
       <td>性别</td>
       <td>成绩</td>
   </tr>
  <c:forEach items="${studentList}" var ="item">
   <tr>
       <td>${item.id}</td>
       <td>${item.sname}</td>
       <td>${item.sex}</td>
       <td>${item.score}</td>
   </tr>

   </c:forEach>
</table>--%>
<%--    <a href="#" title="This is the tooltip message." class="easyui-tooltip">悬浮666</a>
    <div>
		<table class="easyui-datagrid" style="width:500px;height:300px" data-options="url:'http://localhost:8080/student/getStudentList',fitColumns:true,singleSelect:false,pagination:true">
			<thead>
				<tr>
					<th data-options="field:'id',width:100">id</th>
					<th data-options="field:'sex',width:100">性别</th>
					<th data-options="field:'score',width:100,align:'right'">成绩</th>
					<th data-options="field:'studentName',width:100,align:'left'">姓名</th>
				</tr>
			</thead>
		</table>
	</div>

	<div id="cc" class="easyui-calendar" style="width:180px;height:180px;"></div>

	<div class="easyui-slider" data-options="min:10,max:90,step:10" style="width:300px"></div>

	<div id="dd" class="easyui-draggable" data-options="handle:'#title'" style="width:100px;height:100px;">
		<div id="title" style="background:#ccc;">title</div>
	</div>

	<div id="rr" class="easyui-resizable" data-options="maxWidth:800,maxHeight:600" style="width:100px;height:100px;border:1px solid #ccc;"></div>

	<div id="pp" class="easyui-pagination" data-options="total:2000,pageSize:10" style="background:#efefef;border:1px solid #ccc;"></div><hr/>--%>


</body>

</html>