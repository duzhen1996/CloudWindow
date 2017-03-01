<%--
  Created by IntelliJ IDEA.
  User: zhendu
  Date: 16/8/25
  Time: 上午10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>CloudWindow</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../css/theIndex/styles.css" rel="stylesheet" type="text/css" media="all"/>
    <!--<link href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700|Montserrat:400,700' rel='stylesheet' type='text/css'>-->


    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="../component/bootstrap/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="../component/bootstrap/css/bootstrap-theme.min.css">

</head>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="../component/jquery-2.1.4.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="../component/bootstrap/js/bootstrap.min.js"></script>

<body data-page="home" data-reveal-selectors="section:not(.masonry):not(:first-of-type):not(.parallax)" style="font-family: 微软雅黑;font-weight: 200">


<div class="nav-container">

    <nav>
        <div class="nav-bar  nav--absolute nav--transparent" data-fixed-at="400">
            <div class="nav-module menu-module right">
                <ul class="menu">
                    <li class="vpe home-button">
                        <a href="login.html">Login</a>
                    </li>
                    <li class="vpe">
                        <a href="" style="color: black">Manager</a>
                    </li>
                    <li class="vpe">
                        <a href="" style="color: black">About</a>
                    </li>
                    <li class="vpe download-button">
                        <a class="standout" href=""><span class="inner">Sign Up</span></a>
                    </li>
                </ul>
            </div>
        </div>

    </nav>

</div>



<div class="main-container">
    <section id="solo-screenshots" class="bg--secondary">
        <div class="container">
            <div class="col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 text-center">
                <h1>关于我们
                </h1>
                <p class="lead">
                    Something we want to say
                </p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">

                    <div class="slider slider--controlsoutside screenshot-slider" data-items="1" data-paging="true" data-arrows="false">
                        <ul class="slides">
                            <li>
                                <div class="screenshot">
                                    <!-- 为ECharts准备一个具备大小（宽高）的Dom 在这里插入一张中国地图 -->
                                    <!--<div id="echart1"  style="width:100%;height:480px;" ></div>-->
                                    <img alt="screenshot" src="../resource/theIndex/pic01.jpg">
                                </div>

                                <div class="info">
                                    <h3>勇攀，不止于高峰</h3>
                                    <span><h2>·&nbsp·&nbsp·
                                    </h2></span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <footer class="footer-3 bg--secondary text-center-xs">
        <div class="col-sm-3">
            <h4>From seu. contact us</h4>  <a class="type--underline" href="#">454858191@qq.com</a>
        </div>
        <div class="col-sm-6 text-center">
            &nbsp;
        </div>
        <div class="col-sm-3 text-right text-center-xs">
            <ul class="social-list">
                <!--<li class="vpe">-->
                <!--<a href="#"><i class="socicon-twitter"></i></a>-->
                <!--</li>-->

            </ul><span class="type--fine-print">© Copyright <span class="update-year">2016</span> ZhenDu & His Group</span>
        </div>
    </footer>


</div>

<!--<script src="../js/theIndex/owl.carousel.min.js"></script>-->
<script src="../js/theIndex/scrollreveal.min.js"></script>
<script src="../js/theIndex/parallax.js"></script>
<script src="../js/theIndex/scripts.js"></script>
<!-- 引入 ECharts 文件 -->
<script type="text/javascript" src="../component/echarts/echarts.js"></script>
<script type="text/javascript" src="../component/echarts/china.js"></script>

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
    })(window, document, 'script', '../js/theIndex/analytics.js', 'ga');

    ga('create', 'UA-43736010-1', 'getsoloapp.com');
    ga('send', 'pageview');

</script>


</body>
</html>