<%--
  Created by IntelliJ IDEA.
  User: chenwei
  Date: 18-7-17
  Time: 上午9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cww" value="${pageContext.request.contextPath }"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <title>音乐大厅</title>
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
    <script language="javascript" type="text/javascript" src="${cww}/1/js/My97DatePicker/WdatePicker.js"></script>

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
        <main class="main-cont content mCustomScrollbar">
            <div class="page-wrap">
                <!--开始::内容-->
                <section class="page-hd">
                    <header>
                        <h2 class="title">Memorandum</h2>
                        <p class="title-description">
                            对自己的计划进行备忘吧～
                        </p>
                    </header>
                    <hr>
                </section>
                <form method="post" action="${cww}/url/beiwang">
                    <table>
                    <div class="form-group-col-2">
                        <div class="form-label">备忘录标题：</div>
                        <div class="form-cont">
                            <c:forEach begin="0" items="${themes}" step="1" var="i">
                            <label class="check-box">
                                <input type="checkbox"  name="themes" value="${i.id}"/>
                                <span>${i.name}</span>
                            </label>
                            </c:forEach>
                        </div>
                    </div>
                <div class="form-group-col-2">
                    <div class="form-label">开始时间：</div>
                    <div class="form-cont">
                    <input type="text" name="date"  class="Wdate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/></br>
                    </div>
                </div>
                <div class="form-group-col-2">
                    <div class="form-label">备忘级别：</div>
                    <div class="form-cont">
                        <label class="radio">
                            <input type="radio" name="order" value="1"/>
                            <span>一级</span>
                        </label>
                        <label class="radio">
                            <input type="radio" name="order" value="2"/>
                            <span>二级</span>
                        </label>
                        <label class="radio">
                            <input type="radio" name="order"  value="3"  checked="checked"/>
                            <span>三级</span>
                        </label>
                    </div>
                </div>
                <div class="form-group-col-2">
                    <div class="form-label">详细信息：</div>
                    <div class="form-cont">
                        <%--<textarea class="form-control form-boxed">...</textarea>--%>
                        <div class="panel-bd">
                            <script id="container" name="desc" type="text/plain">...</script>
                            <script type="text/javascript">
                                var ue = UE.getEditor('container');
                            </script>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="comsumerId"  value="${worker.id}"/>
                <div class="form-group-col-2">
                    <div class="form-label"></div>
                    <div class="form-cont">
                        <input type="submit" class="btn btn-primary" value="提交表单" />
                        <input type="reset" class="btn btn-primary" value="重置" />
                    </div>
                </div>
                    </table>
            </form>
                <!--开始::结束-->
            </div>
        </main>
        <footer class="btm-ft">
            <p class="clear">
                <span class="fl">©Copyright 2016 <a href="#" title="DeathGhost" target="_blank">cww.cn</a></span>
                <span class="fr text-info">
					<em class="uppercase">
						<i class="icon-user"></i>
						author:${worker.name}
					</em> |
					<em class="uppercase"><i class="icon-envelope-alt"></i>
						更多模板： <a href="http://www.mycodes.net/" target="_blank">cww.com</a>
					</em>
					<a onclick="reciprocate()" class="text-primary"><i class="icon-qrcode"></i>捐赠</a>
				</span>
            </p>
        </footer>
    </div>
</div>

<div class="mask"></div>
<div class="dialog">
    <div class="dialog-hd">
        <strong class="lt-title">标题</strong>
        <a class="rt-operate icon-remove JclosePanel" title="关闭"></a>
    </div>
    <div class="dialog-bd">
        <!--start::-->
        <p>这里是基础弹窗,可以定义文本信息，HTML信息这里是基础弹窗,可以定义文本信息，HTML信息。</p>
        <!--end::-->
    </div>
    <div class="dialog-ft">
        <button class="btn btn-info JyesBtn">确认</button>
        <button class="btn btn-secondary JnoBtn">关闭</button>
    </div>
</div>
</div>
<script type="text/javascript">
    $(f);
    window.onload=function(){

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
