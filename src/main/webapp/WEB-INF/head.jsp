<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="s_tbar">
	<div class="s_hd">
		<div class="tbar_lft">
			您好，欢迎来到EGO商城！<a href="#">请登录</a> | <a href="#">免费注册</a>
		</div>
		<div class="tbar_rgt">
			<ul>
				<li class="first"><a href="#">我的订单</a></li>
				<li><a href="#">我的EGO商城</a></li>
				<li><a href="#">帮助中心</a></li>
				<li><a href="#">联系客服</a></li>
				<li><a href="#">加入收藏</a></li>
				<li class="s_tel_str">服务热线：</li>
				<li class="s_tel">400-009-1906</li>
			</ul>
		</div>
	</div>
</div>
<!--s_tbar end-->

<div class="s_hd nav">
	<div id="s_logo">
		<a href="#"><img src="${ctx }/images/logo.png" border="0" /></a>
	</div>
	<div id="s_nav">
		<ul>
			<li class="first cur"><a href="#">首页</a><span></span></li>
			<li><a href="#">积分兑换</a><span></span></li>
			<li><a href="#">抢购</a><span></span></li>
			<li class="last"><a href="#">礼品</a><span></span></li>
		</ul>
	</div>
</div>
<!--s_hd end-->

<div class="mmenu">
	<div class="s_hd">
		<div id="s_search">
			<form action="${ctx }/search/goSearch" method="get">
				<input name="keywords" id="keywords" value="${keywords }" type="text" class="search-input" />
				<input name="" type="image" src="${ctx }/images/btn_search.jpg" />
			</form>
		</div>

		<div id="s_keyword">
			<ul>
				<li><strong>热门搜索：</strong></li>
				<li><a href="#">贝玲妃</a></li>
				<li><a href="#">SKII</a></li>
				<li><a href="#">阿芙</a></li>
				<li><a href="#">罗莱家纺</a></li>
				<li><a href="#">glasslock</a></li>
				<li><a href="#">翡翠</a></li>
				<li><a href="#">珍珠</a></li>
				<li><a href="#">银饰</a></li>
				<li><a href="#">机械表</a></li>
			</ul>
		</div>

		<div id="s_cart">
			<ul>
				<li class="nums">
				<a href="" id="s_cart_nums1">
					购物车： <span>0</span>件
				</a> 
				<a href="" class="btn" id="s_cart_nums2"></a></li>
				<li class="checkout"><a href="#">去结算>></a></li>
			</ul>
		</div>

		<div id="s_cartbox" class="s_cartbox">您的购物车中暂无商品，赶快选择心爱的商品吧！</div>
		<%@ include file="menu.jsp" %>
	</div>
</div>