<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cww" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="keywords"  content="设置关键词..." />
<meta name="description" content="设置描述..." />
<meta name="author" content="DeathGhost" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

	    <script type="text/javascript">
	        //<![CDATA[
	        try {
	            if (!window.CloudFlare) {
	                var CloudFlare = [{
	                    verbose: 0,
	                    p: 0,
	                    byc: 0,
	                    owlid: "cf",
	                    bag2: 1,
	                    mirage2: 0,
	                    oracle: 0,
	                    paths: {
	                        cloudflare: "/cdn-cgi/nexp/dok2v=1613a3a185/"
	                    },
	                    atok: "1668c19642567e08c574f5d9458345a2",
	                    petok: "3285f1db20753df31d6fcdae6015a30e5a60a785-1419101748-1800",
	                    zone: "nyasha.me",
	                    rocket: "0",
	                    apps: {
	                        "ga_key": {
	                            "ua": "UA-50530436-1",
	                            "ga_bs": "2"
	                        }
	                    }
	                }];
	                CloudFlare.push({
	                    "apps": {
	                        "ape": "86d42e0b8c0027bb178361fce707fc15"
	                    }
	                });
	                ! function(a, b) {
	                    a = document.createElement("script"), b = document.getElementsByTagName("script")[0], a.async = !0, a.src = "js/cloudflare.min.js", b.parentNode.insertBefore(a, b)
	                }()
	            }
	        } catch (e) {};
	        //]]>
	    </script>
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
	        <script src="js/html5shiv.js"></script>
	        <script src="js/respond.min.js"></script>
	    <![endif]-->
	
	    <script src="${cww}/2/vendor/modernizr.js"></script>
</head>
<body>
<div class="main-wrap">
	<div class="side-nav">
		<div class="side-logo">
			<div class="logo">
				<span class="logo-ico">
					<i class="i-l-1"></i>
					<i class="i-l-2"></i>
					<i class="i-l-3"></i>
				</span>
				<strong>后台管理切换</strong>
			</div>
		</div>
		<!--  main-cont content mCustomScrollbar-->
		<nav class="side-menu content  mCustomScrollbar" data-mcs-theme="minimal-dark" >
			<h2>
				<a href="${cww}/worker/info?phone=${worker.phone}" class="InitialPage"><i class="icon-dashboard"></i>基本信息</a>
			</h2>
			<section>
			<ul>
			<li>
					<dl>
						<dt>
							<i class="icon-table"></i>用心旅游<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="weather1.jsp">旅游天气</a>
						</dd>
						<dd>
							<a href="weather2.jsp">乡土情怀</a>
						</dd>
						<dd>
							<a href="weather3.jsp">好友圈</a>
						</dd>
						<dd>
							<a href="weather4.jsp">编译旅图</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>来嗨音乐馆<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="${cww}/music/music1">Fashion Music</a>
						</dd>
						<dd>
							<a href="music2.jsp">推荐好听 Music</a>
						</dd>
						<dd>
							<a href="music3.jsp">owner Music</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-inbox"></i>备忘录<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="beiwang1.jsp">Owner Memorandum</a>
						</dd>
						<dd>
							<a href="beiwang2.jsp">Record Memorandum</a>
						</dd>
					</dl>
				</li>
				
				<li>
					<dl>
						<dt>
							<i class="icon-list-alt"></i>好友<i class="icon-angle-right"></i>
						</dt>
						<dd>
						<a href="friend1.jsp">所有好友</a>
					</dd>
						<dd>
							<a href="friend2.jsp">关注好友</a><!--推荐关注度高的-->
						</dd>
					</dl>
				</li>
				
				<li>
					<dl>
						<dt>
							<i class="icon-list-alt"></i>娱乐<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="news1.jsp">国家大事</a><!--推荐关注度高的-->
						</dd>
						<dd>
						<a href="news2.jsp">搞笑段子</a>
					</dd>
							<dd>
							<a href="news3.jsp">青烟小说</a><!--推荐关注度高的-->
						</dd>
					
					</dl>
				</li>
			</ul>
			</section>
		</nav>
		</div>
		<footer class="side-footer">© 陈大小姐 版权所有</footer>
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
			<!--开始::内容-->
			<div class="page-wrap">
	                    <div class="row">
	                        <div class="col-md-3 col-sm-6 col-xs-12">
	                            <section class="panel">
	                                <div class="panel-body">
	                                    <div class="circle-icon bg-success">
	                                        <i class="fa fa-microphone"></i>
	                                    </div>
	                                    <div>
	                                        <h3 class="no-margin">5468</h3> 注册量
	                                    </div>
	                                </div>
	                            </section>
	                        </div>
	                        <div class="col-md-3 col-sm-6 col-xs-12">
	                            <section class="panel">
	                                <div class="panel-body">
	                                    <div class="circle-icon bg-danger">
	                                        <i class="fa fa-anchor"></i>
	                                    </div>
	                                    <div>
	                                        <h3 class="no-margin">4599</h3> 总量
	                                    </div>
	                                </div>
	                            </section>
	                        </div>
	                        <div class="col-md-3 col-sm-6 col-xs-12">
	                            <section class="panel">
	                                <div class="panel-body">
	                                    <div class="circle-icon bg-default">
	                                        <i class="fa fa-magnet"></i>
	                                    </div>
	                                    <div>
	                                        <h3 class="no-margin">88888</h3> 今日观点
	                                    </div>
	                                </div>
	                            </section>
	                        </div>
	                        <!-- 天气 -->
	                        <div class="col-md-3 col-sm-6 col-xs-12">
	                            <section class="panel">
	                                <div class="panel-body">
	                                    <div class="circle-icon">
	                                        <canvas id="icon2" width="50" height="50"></canvas>
	                                    </div>
	                                    <div>
	                                        <h3 class="no-margin">11&#176;</h3> 雾阴
	                                    </div>
	                                </div>
	                            </section>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-md-8">
	                            <div class="row">
	                                <div class="col-md-6 col-sm-6 col-xs-12">
	                                    <section class="panel no-border overflow-hidden widget-social">
	                                        <div class="panel-body bg-white">
	                                            <a href="javascript:;" class="pull-left mg-r-md">
	                                                <img src="${cww}/2/img/avatar.jpg" class="avatar avatar-md img-circle" alt="">
	                                            </a>
	                                            <div>陈炫
	                                                <small class="pull-right">87 mins ago</small>
	                                            </div>
	                                            <small>你好</small>
	                                            <br>
	                                            <small>在不在呀，姐姐</small>
	                                        </div>
	                                        <div class="panel-footer no-padding no-border">
	                                            <div class="row no-margin">
	                                                <div class="col-xs-4 bg-primary pd-md text-center">
	                                                    <a href="javascript:;">
	                                                        <span class="fa fa-heart mg-b-xs show"></span> 782<!-- 喜欢人数 -->
	                                                    </a>
	                                                </div>
	                                                <div class="col-xs-4 bg-warning pd-md text-center">
	                                                    <a href="javascript:;">
	                                                        <span class="fa fa-user mg-b-xs show"></span> 8,234<!-- 朋友人数 -->
	                                                    </a>
	                                                </div>
	                                                <div class="col-xs-4 bg-info pd-md text-center">
	                                                    <a href="javascript:;">
	                                                        <span class="fa fa-plus mg-b-xs show"></span> 290,847<!-- 关注人数 -->
	                                                    </a>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </section>
	                                </div>
	                                <div class="col-md-6 col-sm-6 col-xs-12">
	                                    <section class="panel position-relative">
	                                        <div class="ribbon ribbon-danger">
	                                            <div class="banner">
	                                                <div class="text">新标签</div>
	                                            </div>
	                                        </div>
	                                        <div class="panel-body">
	                                            <a href="javascript:;" class="pull-left mg-r-md">
	                                                <img src="${cww}/2/img/avatar.jpg" class="avatar avatar-sm img-circle" alt="">
	                                            </a>
	                                            <div>重要事件</div>
	                                            <small>今天</small>
	                                            <p class="mg-t-xs">
	                                                <span class="label label-primary">-1-</span>：敲代码<br style="hight:2px"><br>
	                                                <span class="label label-info">-2-</span>：吃饭饭<br><br>
	                                                <span class="label label-danger">-3-</span>：打豆豆<br><br>
	                                            </p>
	                                            <small>
	<i class="fa fa-circle text-primary mg-r-xs"></i>今天是开心、充实的一天哦～</small>
	                                            <p class="mg-xs"></p>
	                                        </div>
	                                    </section>
	                                </div>
	                                <div class="col-md-12 col-sm-12 col-xs-12">
	                                    <section class="panel panel-default dashboard-chart">
	                                        <div class="heading pd-lg">
	                                            <small class="show pd-b">用户登录活跃度分析
	<i class="pull-right">
	<a class="fa fa-refresh panel-refresh pd-r-xs" href="javascript:;"></a>
	<a class="fa fa-times panel-remove" href="javascript:;"></a>
	</i>
	<br>本周
	</small>
	                                        </div>
	                                        <div class="panel-body no-padding">
	                                            <div id="line" style="height:160px;"></div>
	                                        </div>
	                                        <div class="panel-footer text-center">
	                                            <div class="row text-center">
	                                                <div class="col-xs-6 col-sm-3">
	                                                    <i class="fa fa-circle text-default"></i>
	                                                    <span class="h4 mg-r-xs">5,687</span>
	                                                    <small class="text-muted">发送邮件</small>
	                                                </div>
	                                                <div class="col-xs-6 col-sm-3">
	                                                    <i class="fa fa-circle text-primary"></i>
	                                                    <span class="h4 mg-r-xs">78,694</span>
	                                                    <small class="text-muted">聊天活跃</small>
	                                                </div>
	                                                <div class="col-xs-6 col-sm-3">
	                                                    <span class="h4 mg-r-xs">12,095</span>
	                                                    <small class="text-muted">图片发送情况</small>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </section>
	                                </div>
	                                <div class="col-md-6 col-sm-6 col-xs-12">
	                                    <section class="panel panel-primary">
	                                        <div class="panel-heading">你可能认识的人
	                                        </div>
	                                        <ul class="list-group">
	                                            <li class="list-group-item">
	                                                <span class="pull-left mg-t-xs mg-r-md">
	<img src="/OfficeXm/2/img/xiaoren.jpg" class="avatar avatar-sm img-circle" alt="">
	</span>
	                                                <div class="show no-margin pd-t-xs">
	                                                   陈炫
	                                                    <small class="pull-right">1,244 关注</small>
	                                                </div>
	                                                <small class="text-muted">我很努力在生活</small>
	                                            </li>
	                                            <li class="list-group-item">
	                                                <span class="pull-left mg-t-xs mg-r-md">
	<img src="${cww }/2/img/face5.jpg" class="avatar avatar-sm img-circle" alt="">
	</span>
	                                                <div class="show no-margin pd-t-xs">
	                                                    邵杰
	                                                    <small class="pull-right">1,244 关注</small>
	                                                </div>
	                                                <small class="text-muted">直男。。。。</small>
	                                            </li>
	                                        </ul>
	                                    </section>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-4 col-sm-12 col-xs-12">
	                            <section class="panel no-border">
	                                <div class="panel-heading no-border">
	                                    <a href="javascript:;" class="pull-left mg-r-md">
	                                        <img src="${cww }/2/img/avatar.jpg" class="avatar avatar-sm img-circle" alt="">
	                                    </a>
	                                    <div>名字（谁分享的）
	                                        <small class="pull-right">
	<a class="fa fa-chevron-down panel-collapsible pd-r-xs" href="javascript:;"></a>
	<a class="fa fa-refresh panel-refresh pd-r-xs" href="javascript:;"></a>
	<a class="fa fa-times panel-remove" href="javascript:;"></a>
	</small>
	                                    </div>
	                                    <small>每日分享图片</small>
	                                </div>
	                                <!-- 动态 分享图片 -->
	                                <div class="panel-body no-padding">
	                                    <div class="imgpost-heading">
	                                        <ul class="bxslider">
	                                            <li>
	                                                <div class="cover" style="background-image: url(${cww}/2/img/profile-cover.jpg)"></div>
	                                            </li>
	                                            <li>
	                                                <div class="cover" style="background-image: url(https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=240645173,3029044050&fm=27&gp=0.jpg)"></div>
	                                            </li>
	                                            <li>
	                                                <div class="cover" style="background-image: url(https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1746392609,3023202045&fm=27&gp=0.jpg)"></div>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                </div>
	                            </section>
	                            <section class="panel no-border bg-success">
	                                <div class="panel-heading no-border">
	                                    <small class="pull-right text-white">
	<a class="fa fa-chevron-down panel-collapsible pd-r-xs" href="javascript:;"></a>
	<a class="fa fa-refresh panel-refresh pd-r-xs" href="javascript:;"></a>
	<a class="fa fa-times panel-remove" href="javascript:;"></a>
	</small>
	                                  <h5 class="text-white pd">  <b> 图片备注</b>
	</h5>
	                                </div>
	                                <div class="panel-body bg-white">
	                                    <a href="javascript:;" class="pull-left mg-r-md">
	                                        <img src="${cww}/2/img/avatar.jpg" class="avatar avatar-sm img-circle" alt="">
	                                    </a>
	                                    <div>拍照人
	                                        <small class="pull-right">几分钟前</small>
	                                    </div>
	                                    <p class="mg-t-sm">
	                                        生活不易，且行且珍惜
	                                    </p>
	                                    <div class="text-muted">
	                                        <a href="javascript:;" class="muted mg-r-md">
	                                            <i class="fa fa-comment-o  mg-r-xs"></i>3523 <!-- 留言的个数 -->
	                                        </a>
	                                        <a href="javascript:;" class="text-white">
	                                            <i class="fa fa-heart  text-danger mg-r-xs"></i>12K <!-- 喜欢的心心个数 -->
	                                        </a>
	                                    </div>
	                                </div>
	                            </section>
	                        </div>
	                    </div>
	                </div>
	</main>
	</div>
			<script>
				//分页
				$(".pagination").createPage({
			        pageCount:5,
			        current:1,
			        backFn:function(p){
			            console.log(p);
			        }
			    });
				//demo1
				var dom = document.getElementById("demo1");
				var myChart = echarts.init(dom);
				var app = {};
				option = null;
				function randomData() {
					now = new Date(+now + oneDay);
					value = value + Math.random() * 21 - 10;
					return {
						name: now.toString(),
						value: [
							[now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
							Math.round(value)
						]
					}
				}
			
				var data = [];
				var now = +new Date(1997, 9, 3);
				var oneDay = 24 * 3600 * 1000;
				var value = Math.random() * 1000;
				for (var i = 0; i < 1000; i++) {
					data.push(randomData());
				}
			
				option = {
					tooltip: {
						trigger: 'axis',
						formatter: function (params) {
							params = params[0];
							var date = new Date(params.name);
							return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
						},
						axisPointer: {
							animation: false
						}
					},
					xAxis: {
						type: 'time',
						splitLine: {
							show: false
						}
					},
					yAxis: {
						type: 'value',
						boundaryGap: [0, '100%'],
						splitLine: {
							show: false
						}
					},
					series: [{
						name: '模拟数据',
						type: 'line',
						showSymbol: false,
						hoverAnimation: false,
						data: data
					}]
				};
			
				setInterval(function () {
			
					for (var i = 0; i < 5; i++) {
						data.shift();
						data.push(randomData());
					}
			
					myChart.setOption({
						series: [{
							data: data
						}]
					});
				}, 1000);;
				if (option && typeof option === "object") {
					myChart.setOption(option, true);
				}
				
				//demo2
				var dom = document.getElementById("demo2");
				var myChart = echarts.init(dom);
				var app = {};
				option = null;
				option = {
					tooltip: {
						trigger: 'axis'
					},
					grid: {
						left: '3%',
						right: '4%',
						bottom: '3%',
						containLabel: true
					},
					xAxis: {
						type: 'category',
						boundaryGap: false,
						data: ['周一','周二','周三','周四','周五','周六','周日']
					},
					yAxis: {
						type: 'value'
					},
					series: [
						{
							name:'邮件营销',
							type:'line',
							stack: '总量',
							data:[120, 132, 101, 134, 90, 230, 210]
						},
						{
							name:'联盟广告',
							type:'line',
							stack: '总量',
							data:[220, 182, 191, 234, 290, 330, 310]
						},
						{
							name:'视频广告',
							type:'line',
							stack: '总量',
							data:[150, 232, 201, 154, 190, 330, 410]
						},
						{
							name:'直接访问',
							type:'line',
							stack: '总量',
							data:[320, 332, 301, 334, 390, 330, 320]
						},
						{
							name:'搜索引擎',
							type:'line',
							stack: '总量',
							data:[820, 932, 901, 934, 1290, 1330, 1320]
						}
					]
				};
				;
				if (option && typeof option === "object") {
					myChart.setOption(option, true);
				}	
			</script>
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
