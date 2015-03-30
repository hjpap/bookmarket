<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
String order_id=request.getParameter("order_id");
String price=request.getParameter("price");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/order.css" />
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>


<title>簿客网</title>
</head>
<body>
<jsp:include page="include/header.jsp"/>
<!-—-————————————————-header结束————————————————————————————————————————-->
<!-—-————————————————-webbody开始————————————————————————————————————————-->
<div id="webbody">
  <div class="clear"></div>
  <div class="carttop">
    <table  cellspacing="0" cellpadding="0">
      <tr>
        <td width="55%">&nbsp;</td>
        <td width="15%"><img src="images/btn/cartstep1a.gif" /></td>
        <td width="15%"><img border="0" src="images/btn/cartstep2a.gif" /></td>
        <td width="15%"><img src="images/btn/cartstep3b.gif" /></td>
        <td width="20%">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div class="cart">
    <div class="cart-title">
      <h2>&nbsp;</h2>
    </div>
    <!--购物车内容-->
    <div class="cart-content">
      <!--商品列表-->
      <!--商品列表end-->
      <div class="cart3_1">订单己提交，请尽快付款</div>
     <div class="cart3_2">
您的订单号为
<font><%=order_id %></font>
&#12288;&#12288;应付金额：
<font><%=price %></font>
元&#12288;&#12288;</div>

<div class="cart3_3">
<div class="cart3_3a">还差一步，请立即支付(请尽快付清款项，否则订单会被取消)</div>
<div class="cart3_3b">
<a class="cart_size" target="_blank" href="show_order.jsp?status=1">查看我的订单</a>
</div>
</div>
    </div>
    <!--购物车内容end-->
    <div class="cart-bottom"><img src="images/background/bottom-1.gif"></div>
  </div>
  <div class="clear"></div>
  <div class="clear"></div>
</div>
<!-—-————————————————-webbody结束————————————————————————————————————————-->
<!-—-————————————————-footer开始————————————————————————————————————————-->
<jsp:include page="include/footer.jsp"/>
<!-—-————————————————-footer结束————————————————————————————————————————-->
<!--buttom_menu--------------------------------->
<jsp:include page="include/bottom_menu.jsp"/>
<!--buttom_menu--end------------------------------->
</body>
</html>
