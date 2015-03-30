<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen"/>
<script type="text/javascript" src="../js/jquery.menu.js"></script>
<script language="javascript">
		$(document).ready(function() {

			/*	2nd example	*/
			
			$("#menu2 li a").wrapInner( '<span class="out"></span>' );
			
			$("#menu2 li a").each(function() {
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#menu2 li a").hover(function() {
				$(".out",	this).stop().animate({'top':	'45px'},	200); // move down - hide
				$(".over",	this).stop().animate({'top':	'0px'},		200); // move down - show

			}, function() {
				$(".out",	this).stop().animate({'top':	'0px'},		200); // move up - show
				$(".over",	this).stop().animate({'top':	'-45px'},	200); // move up - hide
			});

		});

	</script>


<div class="header_top" style="background:#BFE2FE">
	<img src="images/background/logo.png"/>
</div>

<div id="menucontent">
  <div id="menu2" class="menu">
    <ul>
      <li><a href="index.jsp">首页</a></li>
      <li><a href="goods_list.jsp">逛逛</a></li>
      <li><a href="goods_list.jsp?flag=6">精品</a></li>
      <li><a href="gonggao_list.jsp">资讯</a></li>
      <li><a href="javascript:;">关于我们</a></li>
    </ul>
  </div>
</div>
