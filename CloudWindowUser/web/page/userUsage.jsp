<%--
  Created by IntelliJ IDEA.
  User: zhendu
  Date: 16/8/25
  Time: 上午9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!-- saved from url=(0060)http://fezvrasta.github.io/bootstrap-material-design/#navbar -->
<html style="height: 659px;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CloudWindow</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile support -->
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Bootstrap -->
    <link href="../component/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Material Design -->
    <link href="../component/bootstrap-material-design-master/dist/css/bootstrap-material-design.css" rel="stylesheet">
    <link href="../component/bootstrap-material-design-master/dist/css/ripples.min.css" rel="stylesheet">

    <!-- Dropdown.js -->
    <link href="../css/user/css/jquery.dropdown.css" rel="stylesheet">

    <!-- Page style -->
    <link href="../css/user/css/index.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="../js/user/analytics.js"></script>
    <script src="../component/jquery-2.1.4.min.js"></script>

    <!--<script id="_carbonads_projs" type="text/javascript" src="./Material Design for Bootstrap_files/C6AILKT.json"></script><script type="text/javascript" src="./Material Design for Bootstrap_files/saved_resource"></script></head>-->
<body style="font-family: 'Microsoft YaHei'">

<div class="container" style="width: 100%">
    <div class="navbar navbar-default">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-1 col-md-10">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="javascript:void(0)"><span
                                class="glyphicon glyphicon-cloud"></span>&nbsp;&nbsp;云视窗</a>
                    </div>
                    <div class="navbar-collapse collapse navbar-responsive-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="/userOverviewController/jump_${otherDistrict}"><span
                                    class="glyphicon glyphicon-home"></span>&nbsp;主页</a></li>
                            <li class="active"><a
                                    href="/containerController/jump_${user.user_id}_${otherDistrict}"><span
                                    class="glyphicon glyphicon-expand"></span>&nbsp;我的视窗</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right" data-toggle="modal" data-target="#myModal2">
                            <li><a href="/loginController/logout">注销登录&nbsp;<span
                                    class="glyphicon glyphicon-log-out"></span></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right" data-toggle="modal" data-target="#myModal2">
                            <li><a href="javascript:void(0)">添加视窗&nbsp;<span
                                    class="glyphicon glyphicon-plus"></span></a></li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron" style="background-image: url('../resource/useroverview/welcome.jpg')">
                <div class="row">
                    <div class="col-md-offset-2">
                        <h1>欢迎回来</h1>
                        <p>你有${allContainerInformation.size()}个视窗</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-2 col-md-8">
            <div class="row">
                <!--再这里添加panel-->

                <%--<div class="jumbotron" style="padding: 0px">--%>
                <%--<img src="../resource/userusage/2.jpg" style="width: 100%">--%>
                <%--</div>--%>
                <%--<div class="list-group">--%>
                <%--<div class="list-group-item">--%>
                <%--<div class="btn-group">--%>
                <%--<button type="button" class="btn btn-primary col-md-6"  onclick="sendMoreInformation()">--%>
                <%--开启视窗--%>
                <%--</button>--%>
                <%--<button type="button" class="btn btn-danger col-md-6" onclick="deleteContainer(1)">--%>
                <%--删除视窗--%>
                <%--</button>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="list-group-item">--%>
                <%--<div class="row-action-primary">--%>
                <%--<span class="glyphicon glyphicon-scale"></span>--%>
                <%--</div>--%>
                <%--<div class="row-content">--%>
                <%--<p class="list-group-item-text">高性能</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="list-group-item">--%>
                <%--<div class="row-action-primary">--%>
                <%--<span class="glyphicon glyphicon-blackboard"></span>--%>
                <%--</div>--%>
                <%--<div class="row-content">--%>
                <%--<p class="list-group-item-text">640×480</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="list-group-item">--%>
                <%--<div class="row-action-primary">--%>
                <%--<span class="glyphicon glyphicon-list-alt"></span>--%>
                <%--</div>--%>
                <%--<div class="row-content">--%>
                <%--<p class="list-group-item-text">基础型视窗</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="list-group-item">--%>
                <%--<div class="row-action-primary">--%>
                <%--<span class="glyphicon glyphicon-tasks"></span>--%>
                <%--</div>--%>
                <%--<div class="row-content">--%>
                <%--<p class="list-group-item-text">1024MB内存</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="list-group-item">--%>
                <%--<div class="row-action-primary">--%>
                <%--<span class="glyphicon glyphicon-hdd"></span>--%>
                <%--</div>--%>
                <%--<div class="row-content">--%>
                <%--<p class="list-group-item-text">50G存储</p>--%>
                <%--</div>--%>
                <%--</div>--%>

                <%--</div>--%>

                <c:forEach items="${allContainerInformation}" var="Info">
                    <c:out value="<div class=\"col-md-4\">
                    <div class=\"panel panel-primary\">
                        <div class=\"panel-heading\">
                            <h3 class=\"panel-title\">
                            <script>
                                    if(${Info.container_status} == 0){
                                            document.write(\"关闭\");
                                        }else if(${Info.container_status} == 1){
                                            document.write(\"托管\");
                                        }else if(${Info.container_status} == 2){
                                            document.write(\"开启\");
                                        }
                            </script>
                            </h3>
                        </div>
                        <div class=\"panel-body\">


                                <div class=\"jumbotron\" style=\"padding: 0px\">
                                <img src=\"../resource/userusage/${Info.container_performance}.jpg\" style=\"width: 100%\">
                        </div>
                        <div class=\"list-group\">
                            <div class=\"list-group-item\">
                                <div class=\"btn-group\">
                                    <button type=\"button\" class=\"btn btn-primary col-md-6\"  onclick=\"sendMoreInformation(${Info.container_cid} , ${Info.container_nodeid})\">
                                        开启视窗
                                    </button>
                                    <button type=\"button\" class=\"btn btn-danger col-md-6\" onclick=\"deleteContainer(${Info.container_cid} , ${Info.container_nodeid})\">
                                        删除视窗
                                    </button>
                                </div>
                            </div>
                            <div class=\"list-group-item\">
                                <div class=\"row-action-primary\">
                                    <span class=\"glyphicon glyphicon-scale\"></span>
                                </div>
                                <div class=\"row-content\">
                                    <p class=\"list-group-item-text\">
                                    <script>
                                        if(${Info.container_performance} == 2){
                                            document.write(\"高性能\");
                                        }else if(${Info.container_performance}==1){
                                            document.write(\"中性能\");
                                        }else if(${Info.container_performance}==0){
                                            document.write(\"低性能\");
                                        }
                                    </script>
                                    </p>
                                </div>
                            </div>
                            <div class=\"list-group-item\">
                                <div class=\"row-action-primary\">
                                    <span class=\"glyphicon glyphicon-blackboard\"></span>
                                </div>
                                <div class=\"row-content\">
                                    <p class=\"list-group-item-text\">
                                    <script>
                                    if(${Info.container_resolution} == 0){
                                            document.write(\"640×480\");
                                        }else if(${Info.container_resolution}==1){
                                            document.write(\"800×600\");
                                        }else if(${Info.container_resolution}==2){
                                            document.write(\"1240×768\");
                                        }else if(${Info.container_resolution}==3){
                                            document.write(\"1366×768\");
                                        }else if(${Info.container_resolution}==4){
                                            document.write(\"1600×900\");
                                        }
                                    </script>
                                    </p>
                                </div>
                            </div>
                            <div class=\"list-group-item\">
                                <div class=\"row-action-primary\">
                                    <span class=\"glyphicon glyphicon-list-alt\"></span>
                                </div>
                                <div class=\"row-content\">
                                    <p class=\"list-group-item-text\">基础型视窗</p>
                                </div>
                            </div>
                            <div class=\"list-group-item\">
                                <div class=\"row-action-primary\">
                                    <span class=\"glyphicon glyphicon-tasks\"></span>
                                </div>
                                <div class=\"row-content\">
                                    <p class=\"list-group-item-text\">${Info.container_memory}MB内存</p>
                                </div>
                            </div>
                            <div class=\"list-group-item\">
                                <div class=\"row-action-primary\">
                                    <span class=\"glyphicon glyphicon-hdd\"></span>
                                </div>
                                <div class=\"row-content\">
                                    <p class=\"list-group-item-text\">${Info.container_storage}G存储</p>
                                </div>
                            </div>
                               </div>
                            </div>
                        </div>" escapeXml="false"></c:out>
                </c:forEach>

            </div>
        </div>
    </div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">视窗信息</h4>
            </div>
            <div class="row">
                <div class="well well-primary col-md-10 col-md-offset-1"
                     style="background-image: url('../resource/useroverview/welcome2.jpg')">
                    <h3>工作</h3>
                </div>
            </div>
            <div class="row">
                <div class="list-group col-md-10 col-md-offset-1">
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <span class="glyphicon glyphicon-scale"></span>
                        </div>
                        <div class="row-content">
                            <h4 class="list-group-item-heading">性能</h4>
                            <p class="list-group-item-text">高</p>
                        </div>
                    </div>
                    <div class="list-group-separator"></div>
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <span class="glyphicon glyphicon-blackboard"></span>
                        </div>
                        <div class="row-content">
                            <h4 class="list-group-item-heading">分辨率</h4>
                            <p class="list-group-item-text">640×480</p>
                        </div>
                    </div>
                    <div class="list-group-separator"></div>
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <span class="glyphicon glyphicon-list-alt"></span>
                        </div>
                        <div class="row-content">
                            <h4 class="list-group-item-heading">类型</h4>
                            <p class="list-group-item-text">基础型</p>
                        </div>
                    </div>
                    <div class="list-group-separator"></div>
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <span class="glyphicon glyphicon-tasks"></span>
                        </div>
                        <div class="row-content">
                            <h4 class="list-group-item-heading">使用内存</h4>
                            <p class="list-group-item-text">1024MB</p>
                        </div>
                    </div>
                    <div class="list-group-separator"></div>
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <span class="glyphicon glyphicon-hdd"></span>
                        </div>
                        <div class="row-content">
                            <h4 class="list-group-item-heading">使用储存</h4>
                            <p class="list-group-item-text">50G</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">开启视窗</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">添加视窗</h4>
            </div>
            <div class="modal-body">
                <h3 id="modelTitle">视窗名</h3>
                <input type="text" id="containerName" class="form-control">
                <div class="row">
                    <div class="col-md-6">
                        <h3>性能</h3>
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="power" value="0" checked>
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    低
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="1" name="power">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    中
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="2" name="power">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    高
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3>内存</h3>
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    <input type="radio" value="128" name="mainmemory" checked>
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    128MB
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="256" name="mainmemory">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    256MB
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="512" name="mainmemory">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    512MB
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h3>分辨率</h3>
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    <input type="radio" value="0" name="screen" checked>
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    640×480
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="1" name="screen">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    800×600
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="2" name="screen">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    1024×768
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="3" name="screen">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    1366×768
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="4" name="screen">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    1600×900
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3>储存</h3>
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    <input type="radio" value="10" name="storage" checked>
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    10G
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="15" name="storage">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    15G
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="20" name="storage">
                                    <span class="circle"></span>
                                    <span class="check"></span>
                                    20G
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="addWindow">添加</button>
            </div>
        </div>
    </div>
</div>

<!-- Google Analytics -->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '../js/user/analytics.js', 'ga');

    ga('create', 'UA-80431047-1', 'auto');
    ga('send', 'pageview');

</script>

<!-- Twitter Bootstrap -->
<script src="../component/bootstrap/js/bootstrap.min.js"></script>

<!-- Material Design for Bootstrap -->
<script src="../component/bootstrap-material-design-master/dist/js/material.min.js"></script>
<script src="../component/bootstrap-material-design-master/dist/js/ripples.min.js"></script>
<script>
    $.material.init();
</script>


<!-- Sliders -->
<!--<script src="../js/user/jquery.nouislider.min.js"></script>-->
<!--<script>-->
<!--$(function () {-->
<!--$.material.init();-->
<!--$(".shor").noUiSlider({-->
<!--start: 40,-->
<!--connect: "lower",-->
<!--range: {-->
<!--min: 0,-->
<!--max: 100-->
<!--}-->
<!--});-->

<!--$(".svert").noUiSlider({-->
<!--orientation: "vertical",-->
<!--start: 40,-->
<!--connect: "lower",-->
<!--range: {-->
<!--min: 0,-->
<!--max: 100-->
<!--}-->
<!--});-->
<!--});-->
<!--</script>-->

<!-- Dropdown.js -->
<script src="../js/user/jquery.dropdown.js"></script>
<script>
    function sendMoreInformation() {

    }
    function deleteContainer(number) {
        alert(number);
    }

    $("").ready(function () {
        $("#addWindow").click(function () {
            //这里防止视窗名为空
            if ($("#containerName").val() == "" || $("#containerName").val() == null) {
                $("#modelTitle").innerHTML = "请完整输入视窗名";
                $("#modelTitle").html("请完整输入视窗名");
                $("#modelTitle").css('color', 'orange');
            } else {
                //这里是一个添加视窗的请求,当这个请求发送给后台,会干两件事情,第一件就是发送一个socket,这个socket就是发往指定服务器的,服务器的选择需要判断每个节点
                //视窗的个数,选择视窗数最少的那个,然后向指定的节点发送socket。
                //现在发送用户的请求,使用ajax
                $.ajax({
                    url: "/containerController/containerAdd",
                    dataType: "json",
                    type: "POST",
                    data: {
                        //这些是可以从前台获取的值,还有cid,nodeid,portid,core,status
                        container_name: $("#containerName").val(),
                        container_userid: ${user.user_id},
                        container_performance: $("[name='power']").filter(":checked").val(),
                        container_memory: $("[name='mainmemory']").filter(":checked").val(),
                        container_storage: $("[name='storage']").filter(":checked").val(),
                        container_resolution: $("[name='screen']").filter(":checked").val(),
                    },
                    //这里是返回的结果
                    success: function (data) {
                        var data = eval("(" + data + ")");
                        if (data == 1) {
                            $('#myModal2').modal('toggle');
                            setTimeout(function () {
                                window.location.href = "/containerController/jump_${user.user_id}_${otherDistrict}";
                            },400);
                        }
                    }
                })
            }
        });
    });

</script>
<script>
    $("#dropdown-menu select").dropdown();
</script>


</body>
</html>
