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
                    a = document.createElement("script"), b = document.getElementsByTagName("script")[0], a.async = !0, a.src = "${cww}/2/js/cloudflare.min.js", b.parentNode.insertBefore(a, b)
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
	<script src="${cww}/2/js/html5shiv.js"></script>
	<script src="${cww}/2/js/respond.min.js"></script>
	<![endif]-->

	<script src="${cww}/2/vendor/modernizr.js"></script>
	<script type="text/javascript">
        $(document).ready(function () {
          //  window.location.href = "${pageContext.request.contextPath}/login.do"
			$.ajax("${cww}/music/list", function(res){
                if(res.status == 200){
                    document.getElementById("foreach");
                    alert("亲"+res);
                }else{
                    $.message.alert("提示","亲，系统升级中");
                }
            })
        });
	</script>

</head>
<body>
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


	</div>
</div>
	<script type="text/javascript">
		$(f);
		window.onload=function(){
			window.alert("hehe")
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
<main class="main-cont content mCustomScrollbar">
	<!-- 内容开始 -->
	<section class="layout">
		<aside class="canvas-right sidebar-300 bg-default">
			<div class="content-wrap">
				<div class="profile pd-l-md pd-r-md pd-b-lg">
					<div class="row">
						<div class="col-xs-12 profile-cover">
							<div class="profile-avatar text-center">
								<img src="img/avatar.jpg" class="avatar avatar-lg bordered-avatar img-circle" alt="">
							</div>
						</div>
						<div class="col-xs-12 text-center mg-t-md">
							<div class="h4 no-margin">Gerald Theodore Stone</div>
							<small>UX Designer</small>
						</div>
						<div class="col-xs-12 mg-t-md mg-b-md">
							<div class="btn-group btn-group-justified btn-rounded">
								<a class="btn btn-success" role="button">Follow</a>
								<a class="btn btn-primary" role="button">Send Message</a>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 mg-b-sm">
							Followers
							<span class="pull-right">1323</span>
						</div>
						<div class="col-xs-12 mg-b-sm">
							Following
							<span class="pull-right">615</span>
						</div>
						<div class="col-xs-12">
							Appreciations
							<span class="pull-right">9315</span>
						</div>
						<hr>
					</div>
					<div class="row mg-b mg-t">
						<div class="col-xs-12">
							<h6>About Gary Stone</h6>
							<p>Gary, a mere mortal man of 25. Likes skipping rope and playing with small fluffy cute toys. Enjoys the occasional UI/UX Design.</p>
						</div>
					</div>
					<a href="javascript:;" class="text-muted">
						<i class="fa fa-globe mg-r-md"></i>www.garystone.co</a>
				</div>
			</div>
		</aside>

		<section class="main-content">

			<div class="content-wrap">
				<div class="row">
					<div class="col-md-6 mg-b-lg">
						<section class="panel no-border overflow-hidden">
							<div class="photobox-heading">
                                    <span class="fa-stack fa-sm thumb">
<i class="fa fa-circle fa-stack-2x text-danger"></i>
<i class="fa fa-thumbs-up fa-stack-1x fa-inverse"></i>
</span>
							</div>
							<div class="panel-body">
								<a href="javascript:;" class="pull-left mg-r-md">
									<img src="img/avatar.jpg" class="avatar avatar-sm img-circle" alt="">
								</a>
								We cannot solve our problems with the same thinking we used when we created them.
							</div>
							<div class="panel-footer bg-white">
								<div class="row pd-t-xs pd-b-xs">
									<div class="col-xs-4 text-center">
										<a href="javascript:;">
											<i class="fa fa-heart mg-r-xs"></i>Like</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="javascript:;">
											<i class="fa fa-comment-o mg-r-xs"></i>Chat</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="javascript:;">
											<i class="fa fa-hand-o-right mg-r-xs"></i>Poke</a>
									</div>
								</div>
							</div>
						</section>
						<section class="panel no-border">
							<form>
								<textarea placeholder="Share something new..." rows="2" class="form-control no-border"></textarea>
							</form>
							<div class="panel-footer">
								<button class="btn btn-danger pull-right">Post</button>
								<ul class="nav nav-pills">
									<li>
										<a href="javascript:;" class="btn btn-xs">
											<i class="fa fa-pencil"></i>
										</a>
									</li>
									<li>
										<a href="javascript:;" class="btn btn-xs">
											<i class="fa fa-link"></i>
										</a>
									</li>
									<li>
										<a href="javascript:;" class="btn btn-xs">
											<i class="fa fa-camera"></i>
										</a>
									</li>
									<li>
										<a href="javascript:;" class="btn btn-xs">
											<i class=" fa fa-film"></i>
										</a>
									</li>
									<li>
										<a href="javascript:;" class="btn btn-xs">
											<i class="fa fa-microphone"></i>
										</a>
									</li>
								</ul>
							</div>
						</section>
						<section class="panel panel-primary">
							<div class="panel-heading">People you may know
								<a href="javascript:;" class="btn btn-primary btn-xs btn-rounded pull-right pd-l-sm pd-r-sm">view more</a>
							</div>
							<ul class="list-group">
								<li class="list-group-item">
                                        <span class="pull-left mg-t-xs mg-r-md">
<img src="img/face3.jpg" class="avatar avatar-sm img-circle" alt="">
</span>
									<div class="show no-margin pd-t-xs">
										Gary Stone
										<small class="pull-right">1,244 Followers</small>
									</div>
									<small class="text-muted">Friends with Kevin Hanson</small>
								</li>
								<li class="list-group-item">
                                        <span class="pull-left mg-t-xs mg-r-md">
<img src="img/face5.jpg" class="avatar avatar-sm img-circle" alt="">
</span>
									<div class="show no-margin pd-t-xs">
										Taylor King
										<small class="pull-right">1,244 Followers</small>
									</div>
									<small class="text-muted">Friends with John Tylor</small>
								</li>
								<li class="list-group-item">
                                        <span class="pull-left mg-t-xs mg-r-md">
<img src="img/face1.jpg" class="avatar avatar-sm img-circle" alt="">
</span>
									<div class="show no-margin pd-t-xs">
										Taylor King
										<small class="pull-right">1,244 Followers</small>
									</div>
									<small class="text-muted">Friends with Jack Beanstalk</small>
								</li>
							</ul>
						</section>
						<section class="panel">
							<div class="panel-body">
								<a href="javascript:;" class="pull-left mg-r-md">
									<img src="img/avatar.jpg" class="avatar avatar-md img-circle" alt="">
								</a>
								<div>Gary Stone
									<small class="pull-right">6,387 Followers</small>
								</div>
								<small>San Francisco, CA</small>
								<p>
									<a href="javascript:;" class="btn btn-primary btn-xs">Send request</a>
								</p>
							</div>
						</section>
					</div>
					<div class="col-md-6">
						<section class="panel no-border">
							<div class="panel-body">
								<a href="javascript:;" class="pull-left mg-r-md">
									<img src="img/avatar.jpg" class="avatar avatar-md img-circle" alt="">
								</a>
								<div>Gary Stone
									<small class="pull-right">Yesterday, 13:48</small>
								</div>
								<small>
									<i class="fa fa-map-marker pd-r-xs"></i>San Francisco, CA</small>
								<p>
									Is thinking of bananas
								</p>
							</div>
							<div class="panel-footer">
								<a href="javascript:;" class="text-muted">
									<i class="fa fa-comments mg-r-xs"></i>Add comment
								</a>
							</div>
						</section>
						<section class="panel panel-success bg-success">
							<div class="panel-body">
								<a href="javascript:;" class="pull-left mg-r-md">
									<img src="img/face4.jpg" class="avatar avatar-md img-circle" alt="">
								</a>
								<div>
									<b>Gary Stone</b>
									<small class="pull-right">Yesterday, 13:48</small>
								</div>
								<small>
									<i class="fa fa-map-marker pd-r-xs"></i>San Francisco, CA</small>
								<div>Is thinking of bananas
									<div class="btn-group pull-right">
										<a class="btn btn-color btn-xs" role="button">Don't Suggest</a>
										<a class="btn btn-danger btn-xs" role="button">Add as friend</a>
									</div>
								</div>
							</div>
						</section>
						<section class="panel panel-primary post bg-primary">
							<div class="panel-heading">
								<i class="fa fa-twitter pd-r-sm"></i>Recent tweets
							</div>
							<ul class="list-group bg-none">
								<li class="list-group-item">
									<small>A person who never made a mistake never tried anything new.
										<a href="javascript:;">@Issac</a>
									</small>
									<small class="center-block">3 minutes ago</small>
								</li>
								<li class="list-group-item">
									<small>The true sign of intelligence is not knowledge but imagination.
										<a href="javascript:;">@Newton</a>
									</small>
									<small class="center-block">12 minutes ago</small>
								</li>
							</ul>
						</section>
						<section class="panel no-border post overflow-hidden bg-none">
							<div class="panel-body">
								<div class="mg-b-sm">
									<a href="javascript:;" class="pull-left mg-r-sm">
										<img src="img/avatar.jpg" class="avatar avatar-sm img-circle" alt="">
									</a>
									<div class="h6 no-margin">
										<b>Gary Stone</b>
										<span class="text-muted pull-right">Yesterday, 13:48</span>
									</div>
									<small class="text-muted">
										<i class="fa fa-map-marker pd-r-xs"></i>San Francisco, CA
									</small>
									<p>Insanity: doing the same thing over and over again and expecting different results.</p>
								</div>
								<small class="text-muted">
									<span class="mg-r-sm">Comment</span>
									<span class="mg-r-sm">Share</span>
									<span class="mg-r-sm">Like</span>
									<span class="mg-r-sm">More</span>
								</small>
								<div class="mg-t-lg pd-l-lg">
									<a href="javascript:;" class="pull-left mg-r-sm">
										<img src="img/face4.jpg" class="avatar avatar-sm img-circle" alt="">
									</a>
									<div class="h6 no-margin">
										<b>Gary Stone</b>
									</div>
									<p>So many
										<a href="javascript:;">#quotes</a>so little time</p>
									<small class="text-muted">
										<span class="mg-r-sm">2 Minutes ago</span>
										<span class="mg-r-sm">Share</span>
										<span class="mg-r-sm">Like</span>
									</small>
								</div>
								<div class="mg-t-lg pd-l-lg">
									<a href="javascript:;" class="pull-left mg-r-sm">
										<img src="img/face3.jpg" class="avatar avatar-sm img-circle" alt="">
									</a>
									<div class="h6 no-margin">
										<b>Gary Stone</b>
									</div>
									<p>Thats what my mother keeps telling me. :) lol</p>
									<small class="text-muted">
										<span class="mg-r-sm">2 Minutes ago</span>
										<span class="mg-r-sm">Share</span>
										<span class="mg-r-sm">Like</span>
										<i class="fa fa-tags" data-toggle="tooltip" data-original-title="View tags"></i>
									</small>
								</div>
								<div class="mg-t-lg pd-l-lg">
									<form role="form" class="form-horizontal">
										<div class="form-group no-margin">
											<div class="col-sm-12 no-padding">
												<input type="text" class="form-control input-sm no-border" placeholder="Join the conversation">
											</div>
										</div>
									</form>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>

		</section>
		</section>
	</div>
</main>
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
