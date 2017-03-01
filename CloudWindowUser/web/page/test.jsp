<%--
  Created by IntelliJ IDEA.
  User: zhendu
  Date: 16/8/27
  Time: 上午11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test2</title>
    <script src="../component/jquery-2.1.4.min.js"></script>
</head>
<body>
<!--<div id="echarts1"  style="width:100%;height:480px;" ></div>-->

<!-- 引入 ECharts 文件 -->
<script type="text/javascript" src="../component/echarts/echarts.js"></script>

<script>
    $.ajax({
        url:'http://127.0.0.1:8080/test/testJsonp',
        dataType: "jsonp",
        jsonp: "callbackparam", //服务端用于接收callback调用的function名的参数
        success: function(json) {
            var data = eval("("+json+")");

            alert(data)
        },
        error: function(){alert('垃圾');}
    });

</script>

</body>
</html>