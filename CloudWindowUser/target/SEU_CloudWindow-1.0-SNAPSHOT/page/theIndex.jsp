<%--
  Created by IntelliJ IDEA.
  User: zhendu
  Date: 16/8/22
  Time: 下午1:53
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

<body data-page="home" data-reveal-selectors="section:not(.masonry):not(:first-of-type):not(.parallax)"
      style="font-family: 微软雅黑;font-weight: 200">


<div class="nav-container">

    <nav>
        <div class="nav-bar  nav--absolute nav--transparent" data-fixed-at="400">
            <div class="nav-module menu-module right">
                <ul class="menu">
                    <li class="vpe home-button">
                        <a href="/loginController/jump">Login</a>
                    </li>
                    <li class="vpe">
                        <a href="">Manager</a>
                    </li>
                    <li class="vpe">
                        <a href="/theIndexController/about">About</a>
                    </li>
                    <li class="vpe download-button">
                        <a class="standout" href="/signUpController/jump"><span class="inner">Sign Up</span></a>
                    </li>
                </ul>
            </div>
        </div>

    </nav>

</div>


<div class="main-container">
    <section id="hero" class="cover cover-9" style="background-image: url('../resource/useroverview/welcome2.jpg')">
        <div class="background"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 id="logo">云视窗</h1>

                    <p class="lead">
                        Be light<br> Be powerful
                    </p>
                    <a class="btn btn--primary vpe" href="/signUpController/jump">
								<span class="btn__text">
									Sign up
								</span>
                    </a>
                    <a class="btn vpe btn--secondary-filled" href="/loginController/jump">
								<span class="btn__text">
									 Login
								</span>
                    </a>
                    <div id="main-screenshot" class="col-md-10 col-md-offset-1 col-sm-12 text-center">
                        <img src="../resource/theIndex/pic00.jpg" alt="Solo Screenshot">
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="intro">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-center">
                    <h2>轻、并且强大的容器化桌面系统</h2>
                    <p class="lead">
                        我们采用了更加新颖的技术,为远程操作系统带来更加轻量化的解决方案。
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container features-row ">
            <div class="row">

                <div class="col-sm-6">

                    <div class="feature feature-1">
                        <div class="screenshot">
                            <div id="echart1" style="width:100%;height:480px;"></div>
                        </div>
                        <h5>用户,成千上万</h5>
                        <p>在中国，云视窗已经打开了市场。我们的用户遍布全国各地，在北上广等一线
                            城市，我们的容器化桌面系统更是深受用户的青睐，并且成为许多世界500强
                            企业的必备之选。</p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="feature feature-1">
                        <div class="screenshot">
                            <div id="echart2" style="width:100%;height:480px;"></div>
                        </div>
                        <h5>轻量，极速开启</h5>
                        <p>云视窗的一个超群之处便在于它无与伦比的启动速度，不
                            需要漫长的镜像下载和安装过程,顷刻间拥有虚拟机的体验，同时，云视窗
                            具有更好的性能利用率，轻且强大
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="solo-screenshots" class="bg--secondary">
        <div class="container">
            <div class="col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 text-center">
                <h3>优雅操作&nbsp
                    便捷使用
                </h3>
                <p class="lead">
                    CloudWindow makes personal task simple, all wrapped up in a beautiful design.
                </p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">

                    <div class="slider slider--controlsoutside screenshot-slider" data-items="1" data-paging="true"
                         data-arrows="false">
                        <ul class="slides">
                            <li>
                                <div class="screenshot">
                                    <img alt="screenshot" src="../resource/theIndex/pic02.jpg">
                                </div>

                                <div class="info">
                                    <h4>强大，随身不随形</h4>
                                    <span><p>拥有云视窗，随时随地使用桌面级操作系统<br> 繁重工作，现在更可轻装上阵
                                    </p></span>
                                </div>
                            </li>

                            <!--<li>-->
                            <!--<div class="screenshot">-->
                            <!--<img alt="screenshot" src="Solo._files/task-list.png">-->
                            <!--</div>-->

                            <!--<div class="info">-->
                            <!--<h4>Task List</h4>-->
                            <!--<span><em>Sometimes you need to see a task list instead of the Kanban view. Solo makes it easy to switch between the two whenever you need. </em></span>-->
                            <!--</div>-->
                            <!--</li>-->
                        </ul>
                    </div>
                    <div class="slider slider--controlsoutside screenshot-slider" data-items="1" data-paging="true"
                         data-arrows="false">
                        <ul class="slides">
                            <li>
                                <div class=" screenshot">
                                    <!--<div id="echart2" style="width:100%;height:480px;"></div>-->
                                    <img alt="screenshot" src="../resource/theIndex/pic03.jpg">
                                </div>

                                <div class="info">
                                    <h4>多元，更多可能</h4>
                                    <span><p>通过云视窗商店——云Store，你总能找到自己心仪的新视窗，获得更便捷的启动和精巧的设计<br>
                                    成千上万的开发者正致力于为你带来更懂你的体验</p></span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="slider slider--controlsoutside screenshot-slider" data-items="1" data-paging="true"
                         data-arrows="false">
                        <ul class="slides">
                            <li>
                                <div class=" screenshot">
                                    <!--<div id="echart3" style="width:100%;height:480px;"></div>-->
                                    <img alt="screenshot" src="../resource/theIndex/pic04.jpg">
                                </div>

                                <div class="info">
                                    <h4>有限开销&nbsp无尽性能</h4>
                                    <span><p>云视窗仅需要较少的硬件花销，而我们会提供非常强大的计算支持<br>
                                    你专注于创造价值，我们为你保驾护航</p></span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="cta cta-6">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
                    <h3>即刻开始</h3>
                    <p class="lead">
                        Don't wait , get started
                    </p>
                    <a class="btn btn--primary vpe" href="">
								<span class="btn__text">
									Sign Up
								</span>
                    </a>

                    <a class="btn vpe btn--secondary-filled" href="">
								<span class="btn__text">
									<i class="socicon-apple"></i> Login
								</span>
                    </a>
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

            </ul>
            <span class="type--fine-print">© Copyright <span class="update-year">2016</span> ZhenDu & His Group</span>
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

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('echart1'));

    // 指定图表的配置项和数据
    var data = [
        {name: '青岛', value: 58},
        {name: '拉萨', value: 14},
        {name: '上海', value: 305},
        {name: '厦门', value: 46},
        {name: '福州', value: 49},
        {name: '南宁', value: 37},
        {name: '广州', value: 288},
        {name: '太原', value: 39},
        {name: '昆明', value: 39},
        {name: '深圳', value: 141},
        {name: '珠海', value: 142},
        {name: '咸阳', value: 23},
        {name: '海口', value: 44},
        {name: '大连', value: 47},
        {name: '沈阳', value: 50},
        {name: '苏州', value: 150},
        {name: '长春', value: 51},
        {name: '银川', value: 52},
        {name: '南昌', value: 54},
        {name: '三亚', value: 54},
        {name: '西宁', value: 57},
        {name: '呼和浩特', value: 48},
        {name: '成都', value: 98},
        {name: '大同', value: 38},
        {name: '桂林', value: 59},
        {name: '张家界', value: 59},
        {name: '西安', value: 61},
        {name: '扬州', value: 94},
        {name: '潍坊', value: 65},
        {name: '重庆', value: 66},
        {name: '台州', value: 67},
        {name: '南京', value: 366},
        {name: '贵阳', value: 61},
        {name: '无锡', value: 91},
        {name: '宝鸡', value: 32},
        {name: '北京', value: 379},
        {name: '乌鲁木齐', value: 54},
        {name: '杭州', value: 184},
        {name: '开封', value: 40},
        {name: '济南', value: 52},
        {name: '兰州', value: 59},
        {name: '哈尔滨', value: 54},
        {name: '石家庄', value: 47},
        {name: '合肥', value: 129},
        {name: '武汉', value: 123}
    ];
    var geoCoordMap = {
        '青岛': [120.33, 36.07],
        '拉萨': [91.11, 29.97],
        '上海': [121.48, 31.22],
        '厦门': [118.1, 24.46],
        '福州': [119.3, 26.08],
        '南宁': [108.33, 22.84],
        '广州': [113.23, 23.16],
        '太原': [112.53, 37.87],
        '昆明': [102.73, 25.04],
        '深圳': [114.07, 22.62],
        '珠海': [113.52, 22.3],
        '咸阳': [108.72, 34.36],
        '海口': [110.35, 20.02],
        '大连': [121.62, 38.92],
        '沈阳': [123.38, 41.8],
        '苏州': [120.62, 31.32],
        '长春': [125.35, 43.88],
        '银川': [106.27, 38.47],
        '南昌': [115.89, 28.68],
        '三亚': [109.511909, 18.252847],
        '呼和浩特': [111.65, 40.82],
        '成都': [104.06, 30.67],
        '大同': [113.3, 40.12],
        '桂林': [110.28, 25.29],
        '张家界': [110.479191, 29.117096],
        '西安': [108.95, 34.27],
        '扬州': [119.42, 32.39],
        '潍坊': [119.1, 36.62],
        '重庆': [106.54, 29.59],
        '台州': [121.420757, 28.656386],
        '南京': [118.78, 32.04],
        '贵阳': [106.71, 26.57],
        '无锡': [120.29, 31.59],
        '宝鸡': [107.15, 34.38],
        '北京': [116.46, 39.92],
        '乌鲁木齐': [87.68, 43.77],
        '杭州': [120.19, 30.26],
        '开封': [114.35, 34.79],
        '济南': [117, 36.65],
        '兰州': [103.73, 36.03],
        '天津': [117.2, 39.13],
        '郑州': [113.65, 34.76],
        '哈尔滨': [126.63, 45.75],
        '石家庄': [114.48, 38.03],
        '合肥': [117.27, 31.86],
        '武汉': [114.31, 30.52]
    };

    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    //name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };

    option = {
        backgroundColor: '#F5F5F5',
        //#404a59 原配色
        title: {
            text: '',
            left: 'center',
            textStyle: {
                color: '#000000'
            }
        },
        tooltip: {
            trigger: 'item'
        },
        /* legend: {
         orient: 'vertical',
         y: 'bottom',
         x:'right',
         data:['city'],
         textStyle: {
         color: '#fff'
         }
         },*/   //去掉了地图右下角的小点
        geo: {
            map: 'china',
            roam: true,
            itemStyle: {
                normal: {
                    areaColor: '#323c48',
                    borderColor: '#111'
                },
                emphasis: {
                    areaColor: '#2a333d'
                }
            }
        },
        series: [
            {
                name: 'city',
                type: 'scatter',
                coordinateSystem: 'geo',
                data: convertData(data),
                symbolSize: function (val) {
                    return val[2] / 10;
                },
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: false
                    },
                    emphasis: {
                        show: true
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#ddb926'
                    }
                }
            },
            {
                name: 'Top',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                data: convertData(data.sort(function (a, b) {
                    return b.value - a.value;
                }).slice(0, 8)),
                symbolSize: function (val) {
                    return val[2] / 10;
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: true
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#f4e925',
                        shadowBlur: 10,
                        shadowColor: '#333'
                    }
                },
                zlevel: 1
            }
        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('echart2'));

    option = {
        backgroundColor: '#F5F5F5',//与中国地图的背景色保持一致
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            data: ['云视窗', '其他系统']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01],
            axisLabel: {
                formatter: ''
            }//成功去掉了坐标轴上的数字
        },
        yAxis: {
            type: 'category',
            data: ['系统开销', '开启时间']
        },
        series: [
            {
                name: '云视窗',
                type: 'bar',
                data: [482, 300]
            },
            {
                name: '其他系统',
                type: 'bar',
                data: [2200, 3000]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

</body>
</html>
