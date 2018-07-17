<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cww" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>天气查询</title>
	<meta name="keywords"  content="设置关键词..." />
	<meta name="description" content="设置描述..." />
	<meta name="author" content="DeathGhost" />
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<link rel="icon" href="${cww}/1/images/icon/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="${cww}/1/css/style.css" />
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/jquery.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/customScrollbar.min.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/echarts.min.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/layerUi/layer.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/editor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/editor/ueditor.all.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/pagination.js"></script>
	<script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/public.js"></script>


	<link rel="stylesheet" href="${cww}/2/vendor/offline/theme.css">
	<link rel="stylesheet" href="${cww}/2/vendor/pace/theme.css">
	<link rel="stylesheet" href="${cww}/2/vendor/jvectormap/jquery-jvectormap-1.2.2.css">
	<link rel="stylesheet" href="${cww}/2/vendor/bxslider/jquery.bxslider.css">
	<link rel="stylesheet" href="${cww}/2/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${cww}/2/css/font-awesome.min.css">
	<link rel="stylesheet" href="${cww}/2/css/animate.min.css">
	<link rel="stylesheet" href="${cww}/2/css/panel.css">
	<link rel="stylesheet" href="${cww}/2/css/skins/palette.1.css" id="skin">
	<link rel="stylesheet" href="${cww}/2/css/fonts/style.1.css" id="font">
	<link rel="stylesheet" href="${cww}/2/css/main.css">


	<!--[if lt IE 9]>
	<script src="${cww}/2/js/html5shiv.js"></script>
	<script src="${cww}/2/js/respond.min.js"></script>
	<![endif]-->

	<script src="${cww}/2/vendor/modernizr.js"></script>
    <script type="text/javascript">
               $(function () {
                        $.ajax({
                                url: "https://www.apiopen.top/weatherApi",
                                data:{"city":"北京"},
                                 dataType: "json",
                                 type:"get",
                                 success: function (data) {
                                     $.each(data, function (i, v) {

                                             layer.msg('拼命加载中');
                                         {
                                             var a1 = document.getElementById("1w");
                                             a1.innerHTML = "* " + data.data.forecast[0].date;
                                             var a2 = document.getElementById("2w");
                                             a2.innerHTML = data.data.forecast[1].date;
                                             var a3 = document.getElementById("3w");
                                             a3.innerHTML = data.data.forecast[2].date;
                                             var a4 = document.getElementById("4w");
                                             a4.innerHTML = data.data.forecast[3].date;
                                             var a5 = document.getElementById("5w");
                                             a5.innerHTML = +data.data.forecast[4].date;
                                             var a1 = document.getElementById("1");
                                             a1.innerHTML =data.data.forecast[0].wendu;
                                             a1.text(data.data.forecast[0].wendu);
                                             var a2 = document.getElementById("2");
                                             a2.innerHTML = data.data.forecast[1].wendu;
                                             var a3 = document.getElementById("3");
                                             a3.innerHTML = data.data.forecast[2].wendu;
                                             var a4 = document.getElementById("4");
                                             a4.innerHTML = data.data.forecast[3].wendu;
                                             var a5 = document.getElementById("5");
                                             a5.innerHTML = +data.data.forecast[4].wendu;
                                         }
                                         {
                                             var a1 = document.getElementById("1");
                                             a1.innerHTML +=data.data.forecast[0].fengli;
                                             var a2 = document.getElementById("2");
                                             a2.innerHTML += data.data.forecast[1].fengli;
                                             var a3 = document.getElementById("3");
                                             a3.innerHTML += data.data.forecast[2].fengli;
                                             var a4 = document.getElementById("4");
                                             a4.innerHTML += data.data.forecast[3].fengli;
                                             var a5 = document.getElementById("5");
                                             a5.html.append("&nbsp"+data.data.forecast[4].fengli)
                                             a5.innerHTML += +data.data.forecast[4].fengli;
                                         }
                                         });
                               },
                             error: function (responseText, textStatus, XMLHttpRequest) {
                                 layer.msg('预报天气信息报错');
                                 }
                         });
                     });
             </script>

</head>
<body  onload="mymessage()">
<div class="main-wrap">
	<jsp:include page="same_body.jsp"/>
	<div class="content-wrap">
		<header class="top-hd">
			<div class="hd-lt">
				<a class="icon-reorder"></a>
			</div>
			<div class="hd-rt">
				<ul>
					<li>
						<a href="#" target="_blank"><i class="icon-home"></i>前台访问</a>
					</li>
					<li>
						<a><i class="icon-random"></i>清除缓存</a>
					</li>
					<li>
						<a><i class="icon-user"></i>管理员:<em>${worker.name}</em></a>
					</li>
					<li>
						<a><i class="icon-bell-alt"></i>系统消息</a>
					</li>
					<li>
						<a href="javascript:void(0)" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
					</li>
				</ul>
			</div>
		</header>
        <main class="main-cont content mCustomScrollbar">
            <div class="page-wrap">
                <!--开始::内容-->
                <section class="page-hd">
                    <header>
                        <h2 class="title">近期天气查询</h2>
                        <p class="title-description">
                            感受本地天气,来一次预感旅行
                            <em class="text-primary">天气</em>。
                        </p>
                    </header>
                    <hr>
                </section>
                <blockquote class="blockquote mb-10">
                    <b>北京天气</b>
                </blockquote>
                <ul class="flex flex-wrap flex-col-5">
                    <li class="box-child">
                        <div class="panel panel-primary">
                            <div class="panel-hd" id="1w">今天</div>
                            <div class="panel-bd" id="1">

                            </div>
                        </div>
                    </li>
                    <li class="box-child">
                        <div class="panel panel-secondary">
                            <div class="panel-hd" id ="2w">明天</div>
                            <div class="panel-bd" id="2">
                                弹性盒子布局·五列多行样式
                            </div>
                        </div>
                    </li>
                    <li class="box-child">
                        <div class="panel panel-primary">
                            <div class="panel-hd"id="3w">后天</div>
                            <div class="panel-bd" id="3">
                                弹性盒子布局·五列多行样式
                            </div>
                        </div>
                    </li>
                    <li class="box-child">
                        <div class="panel panel-primary">
                            <div class="panel-hd" id="4w">大后天</div>
                            <div class="panel-bd" id="4">
                                弹性盒子布局·五列多行样式
                            </div>
                        </div>
                    </li>
                    <li class="box-child">
                        <div class="panel panel-primary">
                            <div class="panel-hd" id="5w">第五天</div>
                            <div class="panel-bd" id="5">
                                弹性盒子布局·五列多行样式
                            </div>
                        </div>
                    </li>
                </ul>
                <!--开始::结束-->
            </div>
        </main>

	</div>
</div>
			<!--开始::结束-->
		</div>
		<footer class="btm-ft">
			<p class="clear">
				<span class="fl">©Copyright 2016 <a href="#" title="DeathGhost" target="_blank">com.cww.cn</a></span>
				<span class="fr text-info">
					<em class="uppercase">
						<i class="icon-user"></i>
						author:chenweiwei
					</em> | 
					<a onclick="reciprocate()" class="text-primary"><i class="icon-qrcode"></i>赞赏</a>
				</span>
			</p>
		</footer>
<!-- 2 -->

<script type="text/javascript">
document.write("<scr"+"ipt src=\"${cww}/2/vendor/jquery-1.11.1.min.js\" language=\"JavaScript\" ></sc"+"ript>")
</script>
  <script src="${cww}/2/vendor/jquery-1.11.1.min.js"></script>
	    <script src="${cww}/2/bootstrap/js/bootstrap.js"></script>
	    <script src="${cww}/2/vendor/jquery.easing.min.js"></script>
	    <script src="${cww}/2/vendor/jquery.placeholder.js"></script>
	    <script src="${cww}/2/vendor/fastclick.js"></script>
	    <script src="${cww}/2/vendor/moment.js"></script>
	    <script src="${cww}/2/vendor/skycons.js"></script>
	    <script src="${cww}/2/vendor/jquery.blockUI.js"></script>
	    <script src="${cww}/2/vendor/raphael.min.js"></script>
	    <script src="${cww}/2/vendor/morris/morris.js"></script>
	    <script src="${cww}/2/vendor/switchery/switchery.js"></script>
	    <script src="${cww}/2/vendor/jquery.slimscroll.js"></script>
	    <script src="${cww}/2/vendor/bxslider/jquery.bxslider.min.js"></script>
	    <script src="${cww}/2/vendor/offline/offline.min.js"></script>
	    <script src="${cww}/2/vendor/pace/pace.min.js"></script>
	    <script src="${cww}/2/js/off-canvas.js"></script>
	    <script src="${cww}/2/js/main.js"></script>
	    <script src="${cww}/2/js/panel.js"></script>
	    <script src="${cww}/2/js/dashboard.js"></script>
</body>
</html>
