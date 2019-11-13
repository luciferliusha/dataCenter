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
                            <li class="current_li">基础信息</li>
                            <li>服务信息</li>
                            <li>示例代码</li>
                            <li>联系我们</li>
                        </ul>
                    </div>
                </div>
                <div class="service-detail">
                    <div class="detail">
                        <div class="detail-content">
                            <p>接口地址：http://ip:端口/serverResourceDetail/serverResourceDetail</p>
                            <p>返回格式：json</p>
                            <p>请求方式：get/post</p>
                            <p>请求示例：http://192.168.21.66:8000/ds/server</p>
                            <p>接口备注：xxx</p>
                        </div>
                    </div>
                    <div class="detail" style="display:none;">
                        <div class="detailTitle">
                            <span class="span-name" style="text-decoration: none;cursor: default;">服务基本信息</span>
                        </div>
                        <div style="margin: 10px 15px;">
                            <p class="pstyle">
                                <span>服务名称：</span>
                                <input type="text" placeholder="请输入服务名称" style="width: 200px;height: 20px;"/>
                            </p>
                            <p class="pstyle">
                                <span>服务描述：</span>
                                <textarea rows="8" cols="135" placeholder="请输入服务描述"></textarea>
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
                                    <input type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>端口：</span>
                                    <input type="text" placeholder="请输入端口" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>数据库名称：</span>
                                    <input type="text" placeholder="请输入数据库名称" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>表名：</span>
                                    <input type="text" placeholder="请输入表名" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>用户名：</span>
                                    <input type="text" placeholder="请输入用户名" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>密码：</span>
                                    <input type="text" placeholder="请输入密码" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <%--  webservice  --%>
                            <div class="server-type" id="webService" style="margin-left: 100px;display: none">
                                <p class="pstyle">
                                    <span>IP：</span>
                                    <input type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>端口：</span>
                                    <input type="text" placeholder="请输入端口" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>wsdl：</span>
                                    <input type="text" placeholder="请输入wsdl" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <%--  `restful` --%>
                            <div class="server-type" id="restful" style="margin-left: 100px;display: none">
                                <p class="pstyle">
                                    <span>restful：</span>
                                    <input type="text" placeholder="请输入请求方式" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>url：</span>
                                    <input type="text" placeholder="请输入请求url" style="width: 200px;height: 20px;"/>
                                </p>
                                <p class="pstyle">
                                    <span>参数：</span>
                                    <input type="text" placeholder="请输入请求参数" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <%--  ftp  --%>
                            <div class="server-type" id="ftp" style="margin-left: 100px;display: none">
                                <p class="pstyle">
                                    <span>ftp：</span>
                                    <input type="text" placeholder="请输入IP" style="width: 200px;height: 20px;"/>
                                </p>
                            </div>
                            <p class="pstyle">
                                <span>资源名称：</span>
                                <select id="resourceName" placeholder="请选择资源名称" style="width: 200px;height: 25px;" onchange="switchServerType()">
                                    <option value="resource1">资源名称1</option>
                                    <option value="resource2">资源名称2</option>
                                    <option value="resource3">资源名称3</option>
                                    <option value="resource4">资源名称4</option>
                                </select>
                            </p>
                        </div>
                        <div class="detailTitle">
                            <input id="checkDataId" type="checkbox" onchange="checkData()"/>
                            <span class="span-name" style="text-decoration: none;cursor: default;">数据项</span>
                            <button id="dataResourceBtn" class="btn" style="display:none;margin-left: 10px;" onclick="addDataResource()">
                                <span>注册</span>
                            </button>
                        </div>
                        <div id="dataResourceTable" style="margin: 10px 15px;display: none">
                            <table class="tableWrap">
                                <thead>
                                <th>资源名称</th>
                                <th>资源名称</th>
                                <th>资源名称</th>
                                <th>资源名称</th>
                                <th>资源名称</th>
                                <th>资源名称</th>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                </tr>
                                <tr>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                </tr>
                                <tr>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                </tr>
                                <tr>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                </tr>
                                <tr>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                    <td>xx</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="detail" style="display:none;">
                        <div class="detail-content">
                            <p>请求示例说明：</p>
                            <p>请求示例描述：</p>
                            <p style="margin-top: 20px">返回示例说明：</p>
                            <p>返回示例描述：</p>
                        </div>
                    </div>
                    <div class="detail" style="display:none;">
                        <div class="detail-content">
                            <p>所属单位：陕西省交通厅</p>
                            <p>所属部门：航务局</p>
                            <p>联系人：xxx</p>
                            <p>联系方式：xxx</p>
                            <p>管理单位：陕西省信息中心</p>
                            <p>管理单位联系电话：029-xxx</p>
                        </div>
                    </div>
                </div>
                <button class="btn" style="margin-left: 1050px;margin-bottom:20px;">
                    <span onclick="submit()">提交</span>
                </button>
                <button class="btn" style="float:right;margin-right: 30px;margin-bottom:20px;">
                    <span onclick="goBackServerResource()">返回</span>
                </button>
            </div>
        </div>
        <%--注册数据项信息弹框--%>
        <div id="win1" style="display: none">
            <div style="margin: 20px 15px;">
                <table class="tableWrap">
                    <tr>
                        <td style="background-color: #f7fcff;font-weight: 600;">数据项名称</td>
                        <td>
                            <input type="text" placeholder="请输入数据项名称" style="width: 200px;height: 20px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #f7fcff;font-weight: 600;">数据项类型</td>
                        <td>
                            <input type="text" placeholder="请输入数据项类型" style="width: 200px;height: 20px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #f7fcff;font-weight: 600;">数据项长度</td>
                        <td>
                            <input type="text" placeholder="请输入数据项长度" style="width: 200px;height: 20px;"/>
                        </td>
                    </tr>
                </table>
                <button class="btn" style="float:right;margin-right: 30px;margin-top:20px;">
                    <span onclick="confirm()">确定</span>
                </button>
            </div>
        </div>
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </div>
</body>
</html>
<script type="text/javascript">
    $(function() {
        switchMenu();
    });
    // 服务注册提交
    function submit() {
        alert("服务注册成功！")
    }
    // 跳转到服务注册页面
    function goBackResourceInfo() {
        window.location.href = "/dataResource/resourceInfo";
    }

    function switchMenu() {
        $(".menu-wrap").on("click", "li", function() {
            // 获取点击的元素给其添加样式，将其兄弟元素的样式移除
            $(this).addClass("current_li").siblings().removeClass("current_li");
            // 获取选中元素的下标
            var liIndex = $(this).index();
            $(".detail").hide();
            $(".detail").eq(liIndex).show();
        })
    }
    function goBackServerResource() {
        window.location.href = "serverRelease/serverReleaseInfo"
    }

    // 切换服务类型
    function switchServerType() {
        var serverTypeId = $("#serverType").find("option:selected").val();
        $(".server-type").hide();
        $("#"+serverTypeId).show();
    }
    // 注册数据项信息
    function addDataResource() {
        $("#win1").show();
        $("#win1").window({
            title:"弹出框",
            width:400,
            height:400,
            modal:true   //这是一个模式窗口，只能点击弹出框，不允许点击别处
        })
    }
    function confirm() {
        $("#dataResourceTable").show();
        $("#win1").window("close");
    }
    // checkBox事件
    function checkData() {
        if ($("#checkDataId").is(":checked")) {
            $("#dataResourceBtn").show()
        } else {
            $("#dataResourceBtn").hide()
        }
    }
</script>
