<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>


  <div id="navigation">
    <!-- Navigation begins here -->
    <div class="sidenav">
      <!-- Sidenav -->
      <div class="navhead"><span>个人信息</span></div>
      <div class="subnav">
        <ul class="submenu">
          <li><a href="vibcenter.jsp" title="">查看/修改个人信息</a></li>
          <li><a href="alterpwd.jsp" title="">修改密码</a></li>
        </ul>
      </div>
      <div class="navhead"><span>订单管理</span></div>
      <div class="subnav">
        <ul class="submenu">
          <li><a href="show_order.jsp?status=1" title="">未结账订单</a></li>
          <li><a href="show_order.jsp?status=2" title="">等待发货</a></li>
          <li><a href="show_order.jsp?status=3" title="">等待收货</a></li>
          <li><a href="show_order.jsp?status=4" title="">已完成订单</a></li>
        </ul>
      </div>
      <div class="navhead"><span>评价管理</span></div>
      <div class="subnav">
        <ul class="submenu">
          <li><a href="pingjia_list.jsp" title="">查看</a></li>
    
        </ul>
      </div>
    </div>
  </div>
  <!-- END Navigation -->










