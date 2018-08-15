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
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="keywords" content="" />
    <link rel="icon" href="${cww}/1/images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${cww}/1/css/style.css" />
    <link rel="shortcut icon" href="${cww}/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cww}/3/css/font.css">
    <link rel="stylesheet" href="${cww}/3/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script   type="text/javascript" src="${cww}/3/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${cww}/3/js/xadmin.js"></script>
    <link type="text/css" rel="Stylesheet" href="${cww}/4/css/imageflow.css" />
    <script type="text/javascript" src="${cww}/4/js/jquery.js"></script>
    <script type="text/javascript" src="${cww}/4/js/imageflow.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/jquery.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/customScrollbar.min.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/echarts.min.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/layerUi/layer.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/editor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/editor/ueditor.all.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/plug-ins/pagination.js"></script>
    <script type="text/javascript" charset="utf-8"  src="${cww}/1/javascript/public.js"></script>

</head>
<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">旅游</a>
        <a>
          <cite>备忘录</cite></a>
      </span>
</div><!--L_username-->
<div class="x-body">
    <form class="layui-form" method="post"  action="${cww}/url/bei" >
        <table>
        <div class="layui-form-item">
            <label for ="the" class="layui-form-label">
                <span class="x-red">*</span>备忘录标题
            </label>
            <div class="layui-input-inline">
                <select name="themes" id="the">
                    <c:forEach begin="0" items="${Stheme}" step="1" var="i">
                        <label class="check-box">
                            <span></span>
                            <option  name="themes"  value="${i.id}">${i.name}</option>
                        </label>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="start" class="layui-form-label">
                <span class="x-red">*</span>执行时间
            </label>
            <div class="layui-input-inline">
                <input class="layui-input" placeholder="开始日" name="dat" id="start">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="the"  class="layui-form-label">
                <span class="x-red">*</span>级别
            </label>
            <div class="layui-input-inline">
                <select name="order" id="order">
                        <label class="check-box">
                            <option  name="order"  value="1">一级</option>
                            <option  name="order"  value="2">二级</option>
                            <option  name="order"  value="3">三级</option>
                        </label>
                </select>
            </div>
        </div>
            <div class="layui-form-item">
                <label for="the"  class="layui-form-label">
                    <span class="x-red">*</span>详细信息
                </label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" id="desc" name="desc" class="layui-textarea"></textarea>
                        </div>
                </div>
            <input type="hidden" name="comsumerId"  value="${worker.id}"/>
        <div class="layui-form-item">
            <label  class="layui-form-label">
            </label>
            <button  type="submit" class="layui-btn" lay-filter="add" lay-submit="">
                增加备忘录
            </button>
            <button  type="reset" class="layui-btn" lay-filter="add" lay-submit="">
                重置
            </button>
        </div>
        </table>
    </form>
</div>

</div>
    <script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

    });
</script>
</body>
</html>
