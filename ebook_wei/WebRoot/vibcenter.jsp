<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>
<%UserBean userinfo=(UserBean)request.getSession().getAttribute("userinfo"); 

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/vib.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="admin/css/style.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
<script type="text/javascript" src="js/shengshixian.js"></script>

</head>
<body>

<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->
<!--左边BAR-->
<div class="vib_left">
<jsp:include page="include/vipbar.jsp"/>
</div>
<!--左边BAR-->
<!--右边-->
<div class="vib_right">
<script type="text/javascript">
function update(){
	var user_name=document.getElementById("user_name");
	var sex=document.getElementById("sex");
	var sexselect=document.getElementById("sexselect"); 
	var adress=document.getElementById("adress");
	var email=document.getElementById("email");
	var tel=document.getElementById("tel");
	var ubtn=document.getElementById("ubtn");
	var adressinfo=document.getElementById("info");
	
	
	
	user_name.readOnly="";
	sex.style.display="none";
	sexselect.style.display="";
	
	adress.style.display="none";
	adressinfo.style.display="";
	
	email.readOnly="";
	tel.readOnly="";
	ubtn.text="确认修改";
	ubtn.onclick=function(){
    	document.getElementById("myForm").submit();
    	
    	}
	}
	

</script>
<form id="myForm" action="UpdateUserInfoServlet" method="post">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td colspan="6"><h1>个人信息</h1></td>
      </tr>
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="9%">&nbsp;</td>
        <td width="33%">&nbsp;</td>
        <td width="36%">&nbsp;</td>
        <td width="13%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>姓名：</td>
        <td colspan="2"><input type="text" id="user_name" name="user_name"  value="<%=userinfo.getUser_name() %>" readonly="readonly"/><input type="hidden" name="user_id" value="<%=userinfo.getUser_id() %>"/></td>
        <!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>性别：</td>
        <td colspan="2"><input class="smallfield" type="text"  value="<%=userinfo.getSex() %>" id="sex" name="sex" readonly="readonly"/>
        <div id="sexselect" style="display:none">
        <select class="smallfield" name="sexselect" >
        	<option value="男">男</option>
        	<option value="女">女</option>
        </select>
        </div>
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>地址：</td>
        <td colspan="2"><input class="bigfield" type="text"  value="<%=userinfo.getAddress() %>" id="adress" name="adress" readonly="readonly"/>
        <!--全国省市县三级联动-->
        <div class="info" id="info" style="display:none">

    <select id="s_province" name="s_province">
    </select>

    <select id="s_city" name="s_city" >
    </select>

    <select id="s_county" name="s_county">
    </select>
    <script type="text/javascript">_init_area();</script>
    <input class="bigfield" type="text" name="s_xiangxi" value="详细地址"/>

  
</div>
<script type="text/javascript">
var Gid  = document.getElementById ;
var showArea = function(){
	Gid('show').innerHTML = "<h3>" + Gid('s_province').value + " - " + 
							Gid('s_city').value + " - " + 
							Gid('s_county').value + "</h3>"
}
Gid('s_county').setAttribute('onchange','showArea()');
</script>
<!--全国省市县三级联动-->
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>邮箱：</td>
        <td colspan="2"><input class="mediumfield" type="text"  value="<%=userinfo.getEmail() %>" id="email" name="email" readonly="readonly"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>联系电话：</td>
        <td colspan="2"><input class="mediumfield" type="text"  value="<%=userinfo.getTel() %>" id="tel" name="tel" readonly="readonly" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>积分：</td>
        <td colspan="2"><input class="smallfield" type="text"  value="<%=userinfo.getJifen() %>" id="jifen" name="jifen" readonly="readonly"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>等级：</td>
        <td colspan="2"><input class="smallfield" type="text"  value="<%=userinfo.getGrade() %>" id="grade" name="grade" readonly="readonly"/></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>注册时间：</td>
        <td colspan="2"><input class="smallfield" type="text"  value="<%=userinfo.getZc_date() %>" id="zc_date" name="zc_date" readonly="readonly" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><a href="#" id="ubtn" class="button" onclick="update()">修  改</a><a href="vibcenter.jsp" id="ubtn" class="button" onclick="update()">取消</a></td>
            
          </tr>
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="2">&nbsp;</td>
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