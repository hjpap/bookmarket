<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fi" lang="fi">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Black Admin v2</title>
		<style type="text/css">/*<![CDATA[*/
			@import "css/login.css";
		/*]]>*/</style>
	</head>
<body>
	<div id="container">
		<h1>簿客 | 后台 Login </h1>
		<div id="box">
			<form action="AdminLoginServlet" method="post">
			<p class="main">
				<label>用户名: </label>
				<input name="username" value="" /> 
				<label>密码: </label>
				<input type="password" name="password" value="">	
			</p>
			<p class="space">
				<input type="submit" value="登陆" class="login" />
			</p>
			</form>
		</div>
	</div>
</body>
</html>