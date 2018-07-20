<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cww" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>登录</title>
<meta name="keywords"  content="设置关键词..." />
<meta name="description" content="设置描述..." />
<meta name="author" content="DeathGhost" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="address=no">
<link rel="icon" href="${cww }/1/images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="${cww }/1/css/style.css" />
<script src="${cww}/1/javascript/jquery.js"></script>
<script src="${cww}/1/javascript/public.js"></script>
<script src="${cww}/1/javascript/plug-ins/customScrollbar.min.js"></script>
<script src="${cww}/1/javascript/pages/login.js"></script>
</head>
<body class="login-page">
	<section class="login-contain">
		<header>
			<h1>后台管理小系统</h1>
			<p>Backstage Garden</p>
		</header>
		<form action="${cww}/worker/login" method="post">
		<div class="form-content">
			<ul>
				<li>
					<div class="form-group">
						<label class="control-label">管理员手机号：</label>
						<input  type="text" placeholder="管理员账号..." class="form-control form-underlined" name="phone"/>
					</div>
				</li>
				<li>
					<div class="form-group">
						<label class="control-label">管理员密码：</label>
						<input  name="password" type="password"  placeholder="管理员密码..." class="form-control form-underlined" id="password"/>
					</div>
				</li>
				<li>
					<label class="check-box">
						<input type="checkbox" name="remember"/>
						<span>记住账号密码</span>
					</label>
				</li>
				<li>
					<button  name="submit" type="submit" class="btn btn-lg btn-block" id="entry">立即登录</button>
				</li>
				<li>
					<p class="btm-info">©Copyright 2006-2018 <a href="#" target="_blank" title="DeathGhost">com.cww.cn</a></p>
					<address class="btm-info">山西省运城区</address>
				</li>
			</ul>
		</div>
		</form>
	</section>

</body>
</html>
