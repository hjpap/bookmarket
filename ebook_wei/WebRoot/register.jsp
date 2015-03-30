<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/register.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</head>
<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->
<!--注册主体!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!--->
<div id="regist" class="w">
  <div class="mt">
    <h2> 注册新用户</h2>
    <b></b> <span style="text-align: right">  </span> <span> 我已经注册，现在就&nbsp; <a class="flk13" href="login.jsp">登录</a> </span> </div>
  <div class="mc">
    
    <form id="formpersonal" action="RegisterServlet" onsubmit="return validate();" method="post">
      <div class="form">
        <div class="item"> <span class="label"> <b class="ftx04">*</b> 用户名： </span>
          <div class="fl">
            <input id="username" class="text" type="text" tabindex="1" name="username" sta="0" onblur="checkId()">
            <label id="username_succeed" class="blank"></label><!--成功为blank succeed-->
            <span class="clr"></span>
            <div id="username_error" class="null" style="display:none">请输入用户名</div><!--focus和null-->
          </div>
        </div>
        <div id="o-password">
          <div class="item"> <span class="label"> <b class="ftx04">*</b> 设置密码： </span>
            <div class="fl">
              <input id="pwd" class="text" type="password" style="ime-mode:disabled;" tabindex="2" name="pwd" onblur="validatepwd()">
              <label id="pwd_succeed" class="blank"></label>
              <span class="clr"></span>
              <label id="pwdstrength" class="hide"> <span class="fl">安全程度：</span> <b></b> </label>
              <label id="pwd_error" class="null" style="display:none">请正确输入密码</label>
            </div>
          </div>
          <div class="item"> <span class="label"> <b class="ftx04">*</b> 确认密码： </span>
            <div class="fl">
              <input id="pwd2" class="text" type="password" tabindex="3" name="pwd2" onblur="validatepwd2()">
              <label id="pwd2_succeed" class="blank"></label>
              <span class="clr"></span>
              <label id="pwd2_error" class="null" style="display:none">请正确输入确认密码</label>
            </div>
          </div>
        </div>
        <div class="item"> <span class="label"> <b class="ftx04">*</b> 邮箱： </span>
          <div class="fl">
            <input id="mail" class="text" type="text" tabindex="4" name="mail" onblur="validatemail()">
            <label id="mail_succeed" class="blank"></label>
            <label class="ftx23">免费邮箱：</label>
            <a class="flk13" href="http://login.mail.sohu.com/rapidReg/cooregister.jsp" target="_blank">搜狐</a> <a class="flk13" href="http://reg.email.163.com/mailregAll/reg0.jsp" target="_blank">网易</a> <span class="clr"></span>
            <div id="mail_error" class="null" style="display:none">请正确输入邮箱地址</div>
          </div>
        </div>
        <div class="item"> <span class="label"> <b class="ftx04">*</b> 验证码： </span>
          <div class="fl">
            <input id="authcode" class="text text-1" type="text" maxlength="6" autocomplete="off" tabindex="6" onblur="checkyanzm();" name="authcode" style="ime-mode:disabled">
            <label class="img"> <img id="idenimage" src="createMa.jsp" alt="" /> </label>
            <label class="ftx23"> <a href="#" onClick="idenfunc();" class="blue">看不清?</a> </label>
            
            <label id="errorM" class="blank invisible"></label>
            <span class="clr"></span>
            <label id="authcode_error" class="null" style="display:none">ddd</label>
          </div>
        </div>
        <div class="item"> <span class="label">&nbsp;</span>
          <input id="registsubmit" class="btn-img btn-regist" type="submit" tabindex="8" value="同意以下协议，提交">
        </div>
      </div>
    </form>
    <div id="protocol-con">
      <h4> 簿客商城网站用户注册协议</h4>
      <p> 本协议是您与簿客商城网站（简称“本站”）所有者（以下简称为“簿客网”）之间就簿客商城网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击“同意以下协议，提交”按钮后，本协议即构成对双方有约束力的法律文件。</p>
      <h5> 第1条 本站服务条款的确认和接纳</h5>
    </div>
  </div>
</div>
<!--注册主体!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!--->
<!--footer--------------------------------->
<jsp:include page="include/footer.jsp"/>
<!--footer---end------------------------------>
</body>
</html>