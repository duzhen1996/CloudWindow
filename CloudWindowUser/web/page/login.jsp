<%@ page import="Model.User" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: zhendu
  Date: 16/8/22
  Time: 下午2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>


<!--<script id="_carbonads_projs" type="text/javascript" src="./Material Design for Bootstrap_files/C6AILKT.json"></script><script type="text/javascript" src="./Material Design for Bootstrap_files/saved_resource"></script></head>-->
<body style="font-family: 'Microsoft YaHei';background-image: url('../resource/useroverview/welcome.jpg')">

<div class="container">
    <div class="row">
        <div class="col-md-offset-4 col-md-4" style="margin-top: 16%">
            <div class="panel panel-primary" style="text-align: center">
                <div class="panel-heading"><h2>云视窗,欢迎回来</h2>
                    <p id="smalltitle">与千万用户共同畅享云端乐趣</p></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <input type="text" placeholder="用户名" class="form-control" id="username"
                                   value="<%=((User)session.getAttribute("user")).getUser_name()%>" autocomplete="off">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <input type="password" placeholder="密码" class="form-control" id="password"
                                   autocomplete="off" value="<%=((User)session.getAttribute("user")).getUser_pwd()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <button type="button" class="btn btn-primary col-md-12" id="loginbutton">
                                登陆
                            </button>
                        </div>
                    </div>
                    <div class="row" style="text-align: center">
                        <a style="color: #ACACAC; font-size: smaller; cursor: pointer;" href="/signUpController/jump">
                            新用户？点击注册
                        </a>
                    </div>
                </div>
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


<!-- Dropdown.js -->
<script src="../js/user/jquery.dropdown.js"></script>
<script>
    $("#dropdown-menu select").dropdown();
</script>


<%--这个远程js脚本是用来返回用户的登陆地点的--%>
<script>
    returnCitySN = {"cip": "0.0.0.0", "cid": "000000", "cname": ""};
</script>


<script src="../js/globalFunction.js"></script>

<script>
    $().ready(function () {
        //这里设定一下登陆按钮的鼠标点击事件
        $("#loginbutton").click(function () {
            //首先判断账号是不是符合格式
            //首先查看用户名是不是一个英文加数字的东西
            var checkUser = /^[a-zA-Z][a-zA-Z0-9_]*/;
            if (!checkUser.test($("#username").val())) {
                $("#smalltitle").innerHTML = "用户名格式不正确";
                $("#smalltitle").html("用户名格式不正确");
                $("#smalltitle").css('color', 'orange');
            } else {
                //这里提交一个ajax请求,这个请求可以判断是不是可以登陆
                $.ajax({
                    url: "/loginController/userlogin",
                    dataType: "json",
                    type: "POST",
                    data: {
                        user_name: $("#username").val(),
                        user_pwd: $("#password").val(),
                        user_lastregion: returnCitySN["cid"],
                        user_lastip: translateIptoInt(returnCitySN["cip"]),
                    },
                    //这里是返回的结果,1代表可以登陆,2代表用户名不存在,3代表密码错误
                    success: function (data) {
                        var data = eval("(" + data + ")");
                        if (data == 1) {
                            $("#smalltitle").innerHTML = "登陆成功,请稍后,正在准备信息";
                            $("#smalltitle").html("登陆成功,请稍后,正在准备信息");
                            $("#smalltitle").css('color', 'orange');

                            setTimeout(function () {
                                window.location.href = "/userOverviewController/jump_0";
                            }, 300);
                        } else if (data == 2) {
                            $("#smalltitle").innerHTML = "用户名不存在";
                            $("#smalltitle").html("用户名不存在");
                            $("#smalltitle").css('color', 'orange');
                        } else if (data == 3) {
                            $("#smalltitle").innerHTML = "密码错误";
                            $("#smalltitle").html("密码错误");
                            $("#smalltitle").css('color', 'orange');
                        } else if (data == 4) {
                            $("#smalltitle").innerHTML = "服务器未知错误,请稍后再试";
                            $("#smalltitle").html("服务器未知错误,请稍后再试");
                            $("#smalltitle").css('color', 'orange');
                        } else if (data == 5) {
                            $("#smalltitle").innerHTML = "登陆成功,请稍后,正在准备信息";
                            $("#smalltitle").html("登陆成功,请稍后,正在准备信息");
                            $("#smalltitle").css('color', 'orange');
                            console.log("检测到异地登录");
                            //将异地登录状态打开
                            setTimeout(function () {
                                window.location.href = "/userOverviewController/jump_1";
                            }, 300);
                        } else if (data == 6) {
                            $("#smalltitle").innerHTML = "请完整输入";
                            $("#smalltitle").html("请完整输入");
                            $("#smalltitle").css('color', 'orange');
                        }
                    }
                })
            }
        });
    });
</script>
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>

</body>
</html>
