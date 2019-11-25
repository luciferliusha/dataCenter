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
                <div class="top-wrap">
                    <div class="ul-wrap">
                        <ul class="menu-wrap">
                            <li class="current_li">服务信息</li>
                            <li>示例代码</li>
                        </ul>
                    </div>
                </div>
                <div class="service-detail">
                    <div class="detail">
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;cursor: default;">服务基本信息</span>
                        </div>
                        <div style="margin: 10px 15px;">
                            <p class="pstyle">
                                <span>服务名称：</span>
                                <input id="serviceName" type="text" placeholder="请输入服务名称" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>服务描述：</span>
                                <textarea id="serviceDesc"  rows="8" cols="135" placeholder="请输入服务描述"></textarea>
                            </p>
                            <p class="pstyle">
                                <span>服务类型：</span>
                                <select id="serverType" placeholder="请选择服务类型" style="width: 200px;height: 25px;" onchange="switchServerType()">
                                    <option value="db" selected="selected">数据库</option>
                                    <option value="webService">WebService</option>
                                    <option value="restful">Restful</option>
                                    <option value="ftp">FTP</option>
                                </select>
                            </p>
                           <%--  db  --%>
                            <div class="server-type" id="db" style="margin-left: 100px;">
                                <p class="pstyle">
                                    <span>IP：</span>
                                    <input id="dbIp" type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>端口：</span>
                                    <input id="dbPort" type="text" placeholder="请输入端口" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>数据库名称：</span>
                                    <input id="dbName" type="text" placeholder="请输入数据库名称" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>表名：</span>
                                    <input id="dbTableName" type="text" placeholder="请输入表名" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>用户名：</span>
                                    <input id="dbUsername" type="text" placeholder="请输入用户名" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>密码：</span>
                                    <input id="dbPassword" type="text" placeholder="请输入密码" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <%--  webservice  --%>
                            <div class="server-type" id="webService" style="margin-left: 100px;display: none">
                                <p class="pstyle">
                                    <span>IP：</span>
                                    <input id="wsdlIp" type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>端口：</span>
                                    <input id="wsdlPort" type="text" placeholder="请输入端口" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>url：</span>
                                    <input id="wsdlUrl" type="text" placeholder="请输入url" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <%--  `restful` --%>
                            <div class="server-type" id="restful" style="margin-left: 100px;display: none">
                                <p class="pstyle">
                                    <span>restful请求方式：</span>
                                    <input id="restfulMethod" type="text" placeholder="请输入请求方式" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>IP：</span>
                                    <input id="restfulIp" type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p><p class="pstyle">
                                    <span>端口：</span>
                                    <input id="restfulPort" type="text" placeholder="请输入端口" style="width: 200px;height: 20px;"/>
                                </p><p class="pstyle">
                                    <span>url：</span>
                                    <input id="restfulUrl" type="text" placeholder="请输入请求url" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>参数：</span>
                                    <input id="restfulParam" type="text" placeholder="请输入请求参数" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <%--  ftp  --%>
                            <div class="server-type" id="ftp" style="margin-left: 100px;display: none">
                                <p class="pstyle">
                                    <span>IP：</span>
                                    <input id="ftpIp" type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p> <p class="pstyle">
                                    <span>端口：</span>
                                    <input id="ftpPort" type="text" placeholder="请输入端口" style="width: 200px;height: 20px;"/>
                                </p> <p class="pstyle">
                                    <span>用户名：</span>
                                    <input id="ftpUsername" type="text" placeholder="请输入用户名" style="width: 200px;height: 20px;"/>
                                </p> </p> <p class="pstyle">
                                    <span>密码：</span>
                                    <input id="ftpPassword" type="text" placeholder="请输入密码" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                        </div>
                        <button class="btn" style="margin-left: 1000px;margin-bottom:20px;">
                            <span onclick="goBackServerResource()">返回</span>
                        </button>
                        <button class="btn" style="float:right;margin-bottom:20px;">
                            <span onclick="addServiceResource()">提交</span>
                        </button>
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;cursor: default;">数据项</span>
                        </div>
                        <div id="dataResourceTable" style="margin: 10px 15px;">
                            <table class="tableWrap">
                                <thead>
                                <th>数据项名称</th>
                                <th>表字段名称</th>
                                <th>数据类型</th>
                                </thead>
                                <tbody id="dataItem">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="detail" style="display:none;">
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;">数据库示例代码</span>
                        </div>
                        <div class="detailContent">
                            <p><span>IP ： 192.168.43.179</span></p>
                            <p><span>端口 ：5454</span></p>
                            <p><span>数据库名称 ：test</span></p>
                            <p><span>表名 ：table_name</span></p>
                            <p><span>用户名 ：root</span></p>
                            <p><span>密码 ：root</span></p>
                        </div>
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;">WebService示例代码</span>
                        </div>
                        <div class="detailContent">
                            <p><span>IP ： 192.168.43.179</span></p>
                            <p><span>端口 ：80</span></p>
                            <p><span>url ：http://schemas.xmlsoap.org/wsdl/</span></p>
                        </div>
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;">Restful示例代码</span>
                        </div>
                        <div class="detailContent">
                            <p><span>请求方式 ：GET</span></p>
                            <p><span>IP ：192.168.43.179</span></p>
                            <p><span>端口 ：8080</span></p>
                            <p><span>url ：http://192.168.43.179:8080/serverResource/getServiceResourceList</span></p>
                            <p><span>参数 ：{serverName : xxx}</span></p>
                        </div>
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;">FTP示例代码</span>
                        </div>
                        <div class="detailContent">
                            <p><span>IP ：192.168.43.179</span></p>
                            <p><span>端口 ：8080</span></p>
                            <p><span>用户名 ：test</span></p>
                            <p><span>密码 ：123456</span></p>
                        </div>
                    </div>
                </div>
                <button id="goBack" class="btn" style="margin-left: 1100px;margin-bottom:20px;display: none;">
                    <span onclick="goBackServerResource()">返回</span>
                </button>
            </div>
        </div>
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    $(function() {
        switchMenu();
        // 查询数据项信息
        getDataItem();
    });


    // 增加服务资源信息
    function addServiceResource() {
        // 提交的参数
        var params = {
            serviceType: getQueryString("serviceType"),
            serviceName : $("#serviceName").val(),
            serviceDesc : $("#serviceDesc").val(),
            dbIp : $("#dbIp").val(),
            dbPort : $("#dbPort").val(),
            dbName : $("#dbName").val(),
            dbTableName : $("#dbTableName").val(),
            dbUsername : $("#dbUsername").val(),
            dbPassword : $("#dbPassword").val(),
            wsdlIp : $("#wsdlIp").val(),
            wsdlPort : $("#wsdlPort").val(),
            wsdlUrl : $("#wsdlUrl").val(),
            restfulMethod : $("#restfulMethod").val(),
            restfulIp : $("#restfulIp").val(),
            restfulPort : $("#restfulPort").val(),
            restfulUrl : $("#restfulUrl").val(),
            restfulParam : $("#restfulParam").val(),
            ftpIp : $("#ftpIp").val(),
            ftpPort : $("#ftpPort").val(),
            ftpUsername : $("#ftpUsername").val(),
            ftpPassword : $("#ftpPassword").val()
        }
        $.ajax({
            url: '/serverResource/saveServiceResource',
            type: "post",
            dataType: "json",
            data: params,
            success:function(res) {
                if (res.message === 'success') {
                    alert("注册成功！");
                } else {
                    alert("注册失败！");
                }
                window.location.href = "/serverResource/serverResourceInfo";
            }
        });
        return false;
    }

    function switchMenu() {
        $(".menu-wrap").on("click", "li", function() {
            // 获取点击的元素给其添加样式，将其兄弟元素的样式移除
            $(this).addClass("current_li").siblings().removeClass("current_li");
            // 获取选中元素的下标
            var liIndex = $(this).index();
            $(".detail").hide();
            $(".detail").eq(liIndex).show();
            if (liIndex === 0) {
                $("#goBack").hide();
            } else {
                $("#goBack").show()
            }
        })
    }
    function goBackServerResource() {
        window.location.href = "/serverResource/serverResourceInfo";
    }

    // 切换服务类型
    function switchServerType() {
        var serverTypeId = $("#serverType").find("option:selected").val();
        $(".server-type").hide();
        $("#"+serverTypeId).show();
    }

    // 查询数据项信息
    function getDataItem() {
        $.ajax({
            url: '/serverResource/getDataItem',
            type: "get",
            dataType: "json",
            success:function(res) {
                var dataItemStr = '';
                for (var i = 0;i<res.length;i++) {
                    dataItemStr += '<tr>';
                    dataItemStr += '<td>' + res[i].columnComment + '</td>';
                    dataItemStr += '<td>' + res[i].columnName + '</td>';
                    dataItemStr += '<td>' + res[i].dataType + '</td>';
                    dataItemStr += '</tr>'
                }
                $("#dataItem").html(dataItemStr);
            }
        });
    }
</script>
