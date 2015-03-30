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
    <td colspan="5"><h1>个人信息</h1></td>
  </tr>
  <tr>
    <td width="9%">&nbsp;</td>
    <td width="34%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
  </tr>
  <tr>
    <td>姓名：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>性别：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>地址：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>邮箱：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>联系电话：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>积分：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>等级：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>注册时间：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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