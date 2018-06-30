<%--
  Created by IntelliJ IDEA.
  User: chenwei
  Date: 18-6-29
  Time: 下午3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
                            <a href="music1.jsp">Fashion Music</a>
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
