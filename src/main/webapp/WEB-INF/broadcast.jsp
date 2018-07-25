<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cww" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html   class="no-js" lang="zh" onselectstart='return false'>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="keywords" content="" />
    <link rel="shortcut icon" href="${cww}/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cww}/3/css/font.css">
    <link rel="stylesheet" href="${cww}/3/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script   type="text/javascript" src="${cww}/3/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${cww}/3/js/xadmin.js"></script>
    <link type="text/css" rel="Stylesheet" href="${cww}/4/css/imageflow.css" />
    <script type="text/javascript" src="${cww}/4/js/jquery.js"></script>
    <script type="text/javascript" src="${cww}/4/js/imageflow.js"></script>
</head>

<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">旅游</a>
        <a>
          <cite>美图</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div id="LoopDiv">
    <input id="S_Num" type="hidden" value="8" />
    <div id="starsIF" class="imageflow">
        <img src="${cww}/4/images/211414202_R.png" longdesc="http://sc.chinaz.com" width="280" height="300" alt="杨颖" />
        <img src="${cww}/4/images/195739743_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="霍思燕" />
        <img src="${cww}/4/images/184449150_R.png" longdesc="http://sc.chinaz.com" width="280" height="300" alt="马苏" />
        <img src="${cww}/4/images/171852304_R.png" longdesc="http://sc.chinaz.com" width="280" height="300" alt="杜淳" />
        <img src="${cww}/4/images/195359252_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="冯绍峰" />
        <img src="${cww}/4/images/205427556_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="沙溢" />
        <img src="${cww}/4/images/195001998_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="廖凡" />
        <img src="${cww}/4/images/121306920_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="保剑锋" />
        <img src="${cww}/4/images/151817631_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="姚晨" />
        <img src="${cww}/4/images/172141456_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="井柏然" />
        <img src="${cww}/4/images/105953334_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="陈楚河" />
        <img src="${cww}/4/images/092950120_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="李晨" />
        <img src="${cww}/4/images/112020805_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="段奕宏" />
        <img src="${cww}/4/images/210858906_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="朱亚文" />
        <img src="${cww}/4/images/202510490_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="苏有朋" />
        <img src="${cww}/4/images/211605770_R.jpg" longdesc="http://sc.chinaz.com" width="280" height="300" alt="张涵予" />
    </div>
</div>
</body>
</html>