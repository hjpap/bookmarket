<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<div id="sidebar"> <!-- Sidebar -->
		<div class="sidebox">
			<span class="stitle">控制台</span>
		<div id="navigation"> <!-- Navigation begins here -->
			<div class="sidenav"><!-- Sidenav -->
				<div class="navhead_blank"><span><a href="ad.jsp" title="">首页广告</a></span></div>
				<div class="navhead"><span>商品管理</span></div>
					<div class="subnav">
						<ul class="submenu">
							<li><a href="add_goods.jsp" title="">添加商品</a></li>
							<li><a href="goods_list.jsp" title="">查看商品</a></li>
							<li><a href="add_type1.jsp" title="">一级分类</a></li>
							<li><a href="add_type2.jsp" title="">二级分类</a></li>
							
							
					  </ul>
					</div>
				<div class="navhead"><span>订单管理</span></div>
					<div class="subnav">
						<ul class="submenu">
							<li><a href="order_list.jsp?status=1" title="">未付款订单</a></li>
							<li><a href="order_list.jsp?status=2" title="">未发货订单</a></li>
							<li><a href="order_list.jsp?status=3" title="">已发货订单</a></li>
							<li><a href="order_list.jsp?status=4" title="">已完成订单</a></li>
						</ul>
					</div>
				<div class="navhead"><span>会员管理</span></div>
					<div class="subnav">
						<ul class="submenu">
							<li><a href="vip_list.jsp" title="">所有会员</a></li>
						
					  </ul>
					</div>
					<div class="navhead"><span>公告</span></div>
					<div class="subnav">
						<ul class="submenu">
							<li><a href="add_gonggao.jsp" title="">添加公告</a></li>
							<li><a href="show_gonggao.jsp" title="">所有公告</a></li>
					  </ul>
					</div>
				<div class="navhead"><span>统计</span></div>
					<div class="subnav">
						<ul class="submenu">
							<li><a href="tongji.jsp" title="">统计</a></li>
							
							
						</ul>
					</div>
			</div>
		</div> <!-- END Navigation -->
		</div>
		
<div class="sidebox">
			<span class="stitle">实时信息</span>
			<p>今天产生<b>103 </b>个订单</p>
			<p><b>213</b> 个订单未处理</p>
	  <p>&nbsp;</p>
</div>
	</div>