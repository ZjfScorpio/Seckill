<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀商品列表</title>
    <%@include file="common/head.jsp" %>
</head>
<body>

<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <a href="/seckill/list" class="navbar-brand"></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/seckill/list">首页</a></li>
        </ul>

        <form class="navbar-form navbar-right">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="">
                <span class="input-group-btn">
          <button class="btn btn-default">搜索</button>
        </span>
            </div>
        </form>
    </div>
</nav>

<div class="container">
    <img class="seckill" src="/seckill/resource/img/seckill.jfif" alt="">
</div>

<div class="container">
    <div class="list">
        <div class="left-mark"></div>
        <span class="list-title">正在秒杀中...</span>
            <div class="row">
                <div class="list-item col-lg-3">
                    <a href="/seckill/1000/details">
                        <img src="/seckill/resource/img/1000.jpg" alt="">
                    </a>
                    <div class="desc">iphonexs</div>
                    <div class="price">￥1000</div>
                </div>
                <div class="list-item col-lg-3 ">
                    <a href="/seckill/1001/details">
                        <img src="/seckill/resource/img/1001.jpg" alt="">
                    </a>
                    <div class="desc">ipadmini</div>
                    <div class="price">￥800</div>
                </div>
                <div class="list-item col-lg-3">
                    <a href="/seckill/1002/details">
                        <img src="/seckill/resource/img/1002.jpg" alt="">
                    </a>
                    <div class="desc">小米9</div>
                    <div class="price">￥500</div>
                </div>
                <div class="list-item col-lg-3">
                    <a href="/seckill/1003/details">
                        <img src="/seckill/resource/img/1003.jpg" alt="">
                    </a>
                    <div class="desc">魅族16s</div>
                    <div class="price">￥600</div>
                </div>
            </div>
    </div>
</div>

<div class="container">
    <div class="list">
        <div class="left-mark"></div>
        <span class="list-title">秒杀列表</span>
        <div class="panel panel-default">
            <%--<div class="panel-heading text-center">--%>
            <%--</div>--%>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>库存</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>创建时间</th>
                        <th>详情页</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="sk">
                        <tr>
                            <td>${sk.name}</td>
                            <td>${sk.number}</td>
                            <td>
                                <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                            <td>
                                <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                            <td>
                                <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                            <td><a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" target="_blank">详情</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<div class="footer">
    <div class="">@2019秒杀列表 2019/5/31</div>
    <div>item item item item item item</div>
    <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
</div>



<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>