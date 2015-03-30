<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
<style type="text/css">
.success-1 {
	margin-top:40px;
	margin-left:350px;
    margin-bottom: 12px;
    overflow: hidden;
}
.fl {
    float: left;
}
.yahei {
    color: #009900;
    font-family: "微软雅黑";
    font-size: 24px;
}

.yahei {
    color: #009900;
    display: block;
    font-family: "微软雅黑";
    font-size: 24px;
    height: 33px;
    line-height: 33px;
    overflow: hidden;
}
.null-1 {
    color: #999999;
    line-height: 22px;
}
.but {
    background: url("images/background/but.gif") no-repeat scroll 0 0 transparent;
    border: medium none;
    color: #FFFFFF;
    font-size: 12px;
    font-weight: bold;
    height: 30px;
    padding-bottom: 5px;
    width: 113px;
}
i {
    background: url("images/background/icon.gif") no-repeat scroll 0 0 transparent;
    float: left;
    height: 40px;
    line-height: 30px;
    margin-left: 95px;
    margin-right: 20px;
    width: 48px;
}
</style>
</head>

<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->



<div class="success-1">
<i></i>
<div class="fl">
<span class="yahei">恭喜，注册成功！</span>
<%UserBean user=(UserBean)request.getSession().getAttribute("userinfo"); %>
<span class="null-1">您登录簿客的用户名为：<%=user.getUser_id() %>，您随时可使用此用户名享受便宜又放心的购物乐趣。</span>
<br>
<input class="but" type="button" onclick="javascript:window.location='index.jsp';" value="立即去购物">
</div>
</div>



<!--buttom_menu--------------------------------->
<jsp:include page="include/bottom_menu.jsp"/>
<!--buttom_menu--end------------------------------->
<!--footer--------------------------------->
<jsp:include page="include/footer.jsp"/>
<!--footer---end------------------------------>
</body>
</html>