<%--
  Created by IntelliJ IDEA.
  User: chenwei
  Date: 18-7-26
  Time: 下午2:40
  To change this template use File | Settings | File Templates.
--%>
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
        <a >首页</a>
        <a >旅游</a>
        <a>
          <cite>备忘录信息</cite></a>
      </span>
</div><!--L_username-->
<div class="x-body">
   <!--备忘录所有信息 -->
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>ID</th>
            <th>描述</th>
            <th>查看时间</th>
            <th>备注主题</th>
            <th>级别</th>
            <th>操作</th></tr>
        </thead>
        <tbody>

        <c:forEach items="${notes}" var="note" step="1" varStatus="i" >

        <tr>
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${i.index}</td>

            <td>${note.desc}</td>
            <td>
                <fmt:formatDate value="${note.date}" type="date" pattern="yyyy-MM-dd"/>
            </td>
            <td>
                <c:if test="${note.themes == 1}">
                    <span class="layui-btn layui-btn-normal layui-btn-mini">个人</span>
                </c:if>
                <c:if test="${note.themes == 2}">
                    <span class="layui-btn layui-btn-warm layui-btn-mini">旅游</span>
                </c:if>
                <c:if test="${note.themes == 3}">
                    <span class="layui-btn layui-btn-danger layui-btn-mini">工作</span>
                </c:if>
            </td>
            <td>
                <c:if test="${note.order == 3}">
                    <span class="layui-btn layui-btn-normal layui-btn-mini">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </c:if>
                <c:if test="${note.order == 2}">
                    <span class="layui-btn layui-btn-warm layui-btn-mini">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </c:if>
                <c:if test="${note.order == 1}">
                    <span class="layui-btn layui-btn-danger layui-btn-mini">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </c:if>
            </td>
            <td class="td-manage">
                <a title="删除" onclick="member_del(this,${note.id})" href="javascript:;">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <%--<div class="page">--%>
        <%--<div>--%>
            <%--<a class="prev" href="">&lt;&lt;</a>--%>
            <%--<a class="num" href="">1</a>--%>
            <%--<span class="current">2</span>--%>
            <%--<a class="num" href="">3</a>--%>
            <%--<a class="num" href="">4</a>--%>
            <%--<a class="next" href="">&gt;&gt;</a>--%>
        <%--</div>--%>
    <%--</div>--%>

</div>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){

            if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

            }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
            }

        });
    }

    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $.get("${cww}/url/delBei?id="+id,function (res) {
                if(200 == res.code){
                    layer.msg('已删除!',{icon:1,time:2000});
                    location.href = "${cww}/url/beiwang2?id=${worker.id}";
                }
            });

        });
    }



    function delAll (argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</body>
</html>

