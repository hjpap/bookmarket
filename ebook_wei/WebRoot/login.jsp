<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>簿客网</title>
		<link rel="stylesheet" href="css/style.css" type="text/css"
			media="screen" />
		<link rel="stylesheet" href="css/login.css" type="text/css"
			media="screen"/>
		<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.menu.js"></script>
		<script type="text/javascript" src="js/login.js"></script>
	</head>
	<body>
		<!--header--------------------------------->
		<jsp:include page="include/header.jsp" />
		<!--header--end------------------------------->
		<!--主体!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<form action="" id="form" method="post" onsubmit="checklogin();return false;">
		<div class="login_main">
			<div class="login_panel">
				<div class="right_panel">
					<div class="login_frame_top"></div>
					<div class="login_frame_border">
						<div class="login_frame">
							<div class="login_title">
								<a href="register.jsp">立即注册</a>
								<i></i> 还不是簿客网用户？
							</div>
							<div id="user_div_name" class="login_frist clearfix">
								<label>
									用户名
								</label>
								<span class="login_input"> <input id="txtUsername"
										class="tip" type="text" onblur="this.className='tip';"
										onkeyup="" errordata="0"
										onfocus="this.className='focus';" tabindex="1"
										maxlength="40" name="txtUsername">
								</span>
								<span id="liDivErrorMessage" class="hint" style="display:none">请输入邮箱地址/昵称/手机号码</span>
								<!-- class属性hint和error.style为display:none -->
							</div>
							<p id="password_div" class="clearfix">
								<label>
									密&nbsp;&nbsp;码
								</label>
								<span class="login_input"> <input id="txtPassword"
										type="password" onblur="this.className='tip';"
										onfocus="this.className='focus';" errordata="0"
										onkeyup="" tabindex="2"
										maxlength="20" name="txtPassword">
								</span>
								<a class="forgotpassword" tabindex="7" href="#">忘记密码</a>
								<span id="login_password_error" class="error"
									style="display:none">请输入用户名和密码！</span>
									
							</p>

							<div id="submit_signin_div" class="login_btn">
								<input type="hidden" name="url" value='<%=request.getHeader("Referer") %>'/>
								<input id="btnSignCheck" type="submit" tabindex="6" onmouseover="this.className='btn_login_hover'" onmouseout="this.className=''" value="登 录">
							</div>
						</div>
					</div>
					<div class="login_frame_bottom"></div>
				</div>
			</div>
		</div>
		</form>
		<!--主体!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<!--footer------------------------------------>
		<jsp:include page="include/footer.jsp" />
		<!--footer---end------------------------------>
	</body>
</html>