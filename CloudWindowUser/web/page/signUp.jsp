<%--
  Created by IntelliJ IDEA.
  User: zhendu
  Date: 16/8/22
  Time: 下午2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="Model.User" %>
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
        <div class="col-md-offset-4 col-md-4" style="margin-top: 14%">
            <div class="panel panel-primary" style="text-align: center">
                <div class="panel-heading"><h2>云视窗,欢迎注册</h2>
                    <p id="smalltitle">您的选择,使我们倍感荣幸</p></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <input type="text" placeholder="用户名" class="form-control" id="username">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <input type="password" placeholder="密码" class="form-control" id="password">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <input type="password" placeholder="确认密码" class="form-control" id="password2">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <button type="button" class="btn btn-primary col-md-12" id="signUpButton">
                                注册
                            </button>
                        </div>
                    </div>
                    <div class="row" style="text-align: center">
                        <a style="color: #ACACAC; font-size: smaller; cursor: pointer;" href="/loginController/jump">
                            已有账号？点击登陆
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

<script>
    $().ready(function () {

        //在这里设计一个点击事件
        $("#signUpButton").click(function () {
            //首先查看用户名是不是一个英文加数字的东西
            var checkUser = /^[a-zA-Z][a-zA-Z0-9_]*/;
            if (!checkUser.test($("#username").val())) {
                $("#smalltitle").innerHTML = "用户名格式不正确";
                $("#smalltitle").html("用户名格式不正确");
                $("#smalltitle").css('color', 'orange');
            } else if (!($("#password").val() == $("#password2").val())) {
                $("#smalltitle").innerHTML = "密码不一致";
                $("#smalltitle").html("密码不一致");
                $("#smalltitle").css('color', 'orange');
            } else {
                //这里我要发送一个ajax请求,这个请求的作用就是向数据库中写一个用户名和密码
                $.ajax({
                    url: "/signUpController/signUp",
                    dataType: "json",
                    type: "POST",
                    data: {
                        user_name: $("#username").val(),
                        user_pwd: $("#password").val(),
                    },
                    success: function (data) {
                        var data = eval("(" + data + ")");
                        //data本来是一个字符串,在前台他既可以是字符串也可以是数字
                        if (data == 1) {
                            $("#smalltitle").innerHTML = "注册成功";
                            $("#smalltitle").html("注册成功");
                            $("#smalltitle").css('color', 'orange');


                            //在延迟半秒之后进入登录界面
                            setTimeout(function () {
                                window.location.href = "/loginController/jump";
                            }, 300);


                        } else if (data == 0) {
                            $("#smalltitle").innerHTML = "用户名已存在";
                            $("#smalltitle").html("用户名已存在");
                            $("#smalltitle").css('color', 'orange');
                        } else if (data == 2) {
                            $("#smalltitle").innerHTML = "服务器发生未知错误,请重试";
                            $("#smalltitle").html("服务器发生未知错误,请重试");
                            $("#smalltitle").css('color', 'orange');
                        } else if (data == 6) {
                            $("#smalltitle").innerHTML = "请完整输入";
                            $("#smalltitle").html("请完整输入");
                            $("#smalltitle").css('color', 'orange');
                        }
                    }
                })
            }
        });
    })
</script>
</body>
</html>
