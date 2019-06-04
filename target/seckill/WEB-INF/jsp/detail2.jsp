<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀详情页</title>
    <%@include file="common/head.jsp" %>
</head>
<body>

<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <a href="/seckill/list" class="navbar-brand"></a>
        </div>
        <ul class="nav navbar-nav">
            <li class=""><a href="/seckill/list">首页</a></li>
            <li class="active"><a href="#">详情页</a></li>
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
    <div class="seckill-list mymargin">
        <div class="left-mark"></div>
        <span class="seckill-list-title">${seckill.name}</span>
        <div class="seckill-item">
            <div class="col-lg-5">
                <img src="/seckill/resource/img/1001.jpg" alt="">
            </div>
            <div class="col-lg-7">
                <div class="desc">
                    Apple iPad mini 128GB
                    <div class="info">
                        <br>
                        机身颜色 黑色
                        <br>
                        操作系统 ios
                        <br>
                        主屏幕尺寸（英寸）7.0英寸
                    </div>
                </div>
                <div class="price">￥800</div>
                <div class="kill">
                    <h3 class="text-danger">
                        <%--显示time图标--%>
                        <span class="glyphicon glyphicon-time"></span>
                        <%--展示倒计时--%>
                        <span class="glyphicon" id="seckill-box"></span>
                    </h3>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="">@2019秒杀列表 2019/5/31</div>
    <div>item item item item item item</div>
    <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
</div>


<%--登录弹出层 输入电话--%>
<div id="killPhoneModal" class="modal fade">

    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone"> </span>秒杀电话:
                </h3>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="killPhone" id="killPhoneKey"
                               placeholder="填写手机号^o^" class="form-control">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <%--验证信息--%>
                <span id="killPhoneMessage" class="glyphicon"> </span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>

        </div>
    </div>

</div>


</body>
<%--jQery文件,务必在bootstrap.min.js之前引入--%>
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<%--使用CDN 获取公共js http://www.bootcdn.cn/--%>
<%--jQuery Cookie操作插件--%>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%--jQuery countDown倒计时插件--%>
<script src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>

<script src="/seckill/resource/js/seckill.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        //使用EL表达式传入参数
        seckill.detail.init({
            seckillId:${seckill.seckillId},
            startTime:${seckill.startTime.time},//毫秒
            endTime:${seckill.endTime.time}
        });
    })
</script>
</html>