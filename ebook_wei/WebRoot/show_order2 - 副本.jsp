<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/vib.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="admin/css/style.css" type="text/css" media="screen"/><script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
</head>

<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->



<div class="vib_left">
<jsp:include page="include/vipbar.jsp"/>
</div>

<!--右边-->
<div class="vib_right">
	
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
  <tr>
    <td colspan="5"><h1>订单详情</h1></td>
  </tr>
  <tr>
    <td width="1%" rowspan="10">&nbsp;</td>
    <td colspan="3" rowspan="9">
      <!--dddddddddddddd-->
      <table cellspacing="0" cellpadding="0" border="0">
        <!-- Table -->
        <thead>
          <tr>
            <th colspan="5">订单号：88888  | 状态：</th>
            </tr>
          </thead>
        <tbody>
          <tr>
            <!--复数用class alt-->
            <a href="#">
            <td width="11%">商品编号</td></a>
            <td width="59%">商品名称</td>
            <td width="10%">单价</td>
            <td width="10%">购买数量</td>
            <td width="10%">是否评价</td>
            </tr>
          <tr class="alt">
            <td>2</td>
            <td>Approved</td>
            <td>Ipsum Dolor</td>
            <td>1.23.2009</td>
            <td><a href="#" class="button">去评价</a></td>
            </tr>
          <tr>
            <td>3</td>
            <td>Pending</td>
            <td>Dolor sit</td>
            <td>3.17.2009</td>
            <td>&nbsp;</td>
            </tr>
          <tr class="alt">
            <td>4</td>
            <td>Declined</td>
            <td>Sit Amet</td>
            <td>9.30.2009</td>
            <td>&nbsp;</td>
            </tr>
          <tr>
            <td>5</td>
            <td>Pending</td>
            <td>Amet Lorem</td>
            <td>10.01.2009</td>
            <td>&nbsp;</td>
            </tr>
          <tr>
            <td>6</td>
            <td>Pending</td>
            <td>Amet Lorem</td>
            <td>10.01.2009</td>
            <td>&nbsp;</td>
            </tr>
          </tbody>
        </table>
      <!--dddddddddddddd-->
      </td>
    <td width="17%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="42%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="21%">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </tbody>
</table>

    
   

</div>
<!--右边-->


<!--buttom_menu--------------------------------->
<jsp:include page="include/bottom_menu.jsp"/>
<!--buttom_menu--end------------------------------->
<!--footer--------------------------------->
<jsp:include page="include/footer.jsp"/>
<!--footer---end------------------------------>
</body>
</html>