<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>
<%UserBean userinfo=(UserBean)request.getSession().getAttribute("userinfo"); %>
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
	<form action="AlterUserPwdServlet" method="post" id="form">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
  <tr>
    <td colspan="5"><h1>修改密码</h1></td>
  </tr>
  <tr>
    <td width="9%"><input type="hidden" name="user_id" value="<%=userinfo.getUser_id() %>"/></td>
    <td width="8%">&nbsp;</td>
    <td width="45%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
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
    <td>原密码：</td>
    <td><input type="password" id="pwd1" name="pwd1" /><span id="pwd1msg" class="validate"></span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>新密码：</td>
    <td><input type="password" id="pwd2" name="pwd2"/><span id="pwd2msg" class="validate_fail"></span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>确认新密码：</td>
    <td><input type="password" id="repwd2" name="repwd2"/><span id="repwd2msg" class="validate"></span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><a href="#" class="button" onclick="validatepwd();">确认</a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    
  </tr>
 
  <script type="text/javascript">
  		function validatepwd(){
	  
  	var pwd1=document.getElementById("pwd1").value;
  	
  	var pwd1msg=document.getElementById("pwd1msg");
	var pwd2=document.getElementById("pwd2").value;
	
	var pwd2msg=document.getElementById("pwd2msg");
	var repwd2=document.getElementById("repwd2").value;
	var repwd2msg=document.getElementById("repwd2msg");
	
	
	if(pwd1!=<%=userinfo.getPwd()%>){
		pwd1msg.className="validate_error";
		}
	else if(pwd2=="" || pwd2==null){
	    pwd1msg.className="validate_success";
		pwd2msg.className="validate_error";
		}
	else if(repwd2=="" || repwd2==null){
	    pwd2msg.className="validate_success";
		repwd2msg.className="validate_error";
		}	
	else if(repwd2!=pwd2){
		repwd2msg.className="validate_error";
		}else{
		document.getElementById("form").submit();
		
		}
	}
  
  </script>
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
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </tbody>
</table>
</form>
    
   

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