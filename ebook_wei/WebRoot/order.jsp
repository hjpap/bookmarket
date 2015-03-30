<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.text.DecimalFormat,java.util.*,java.text.NumberFormat" errorPage="" %>
<%
DecimalFormat df1 = new DecimalFormat("####.00");
UserBean user=(UserBean)request.getSession().getAttribute("userinfo");
MyCartBo cart=(MyCartBo)request.getSession().getAttribute("myCart");

 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/order.css" />
<script type="text/javascript" src="js/shengshixian.js"></script>
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
        <td width="15%"><img border="0" src="images/btn/cartstep2b.gif" /></td>
        <td width="15%"><img src="images/btn/cartstep3a.gif" /></td>
        <td width="20%">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div class="cart">
    <div class="cart-title">
      <h2>我的订单</h2>
    </div>
    <!--购物车内容-->
    <div class="cart-content">
      <div id="productList">
        <div class="o_write">
          <h1> <b>收货人信息</b> </h1>
          
          <div class="cydz">
<ul id="addrList">
<li class="">
<span>
<input id="addr_1" type="radio" value="addr1" checked="checked" onclick="selectadre(this.id)" name="addr">
<label for="addr_1">
<strong>使用常用地址</strong>
</label>
</span>
<br>
姓名：<%=user.getUser_name() %>;地址：<%=user.getAddress() %>
</li>

<li class="">
<span>
<input id="addr_2" type="radio" value="addr2" onclick="selectadre(this.id)" name="addr">
<label for="addr_2">
<strong>其他地址</strong>
</label>
</span>
<br>
其他 
</li>
</ul>
</div>

<form action="CreateOrderServlet" method="post" id="form">
          <!-- 地址 -->
          <div class="order1" >
          <div class="middle">
            <div id="consignee_addr">
              <table width="100%" cellspacing="0" border="0">
                <tbody>
                  <tr>
                    <td width="85" valign="middle" align="right"><font color="red">*</font> 收货人姓名： </td>
                    <td valign="middle" align="left"><input id="txtName" type="text" maxlength="20" value="<%=user.getUser_name() %>" name="txtName">
                      <span></span></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle"><font color="red">*</font> 地&#12288;&#12288;址： </td>
                    <td align="left" valign="middle">
                   <!--新地址--> 
                    <div id="newaddr" class="info" style="display:none">
                      
                      <select id="s_province" name="s_province">
                        </select>
                      
                      <select id="s_city" name="s_city" >
                        </select>
                      
                      <select id="s_county" name="s_county">
                        </select>
                      <br>
                      <script type="text/javascript">_init_area();</script>
                      
                      
                      
                      <input id="txtAddress" type="text" maxlength="50" value="" style="width:327px" name="s_xiangxi" />
                    </div>
                    <!--新地址--> 
                    <!--session-旧地址-->
                    <div id="oldaddr" class="oldaddr"  selected="selected" style="">
                    <input type="text" name="oldaddr" value="<%=user.getAddress() %>" style="width:327px"/>
                   
                    </div>
					<!---旧地址-->
					 <input id="addresstype" type="hidden" name="addresstype" value="oldaddress"/>
                    <script type="text/javascript">
                    	function selectadre(v){
                    		var radio=document.getElementById(v).value;
	                    	
	                    	if(radio=='addr1'){
	                    	//用户常用地址
	                    	document.getElementById("oldaddr").style.display="";
	                    	document.getElementById("newaddr").style.display="none";
	                    	var hidden=document.getElementById("addresstype");//oldaddress为用户地址
	                    	hidden.value="oldaddress";
	                    	
	                    	}else{
	                    	//新地址
	                    	document.getElementById("oldaddr").style.display="none";
	                    	document.getElementById("newaddr").style.display="";
	                    	var hidden=document.getElementById("addresstype");//newaddress为新地址
	                    	hidden.value="newaddress";
	                    	
	                    	}	
	                    	
                    	}
	                    	
	                    	function submit(){
	                    	//alert(document.getElementById("addresstype").value);
	                    	
	                    	if(confirm("确认提交？")){
	                    	
	                    	document.getElementById("form").submit();
	                    	}
	                    	}
                    </script>
                    
<script type="text/javascript">
var Gid  = document.getElementById ;
var showArea = function(){
	Gid('show').innerHTML = "<h3>" + Gid('s_province').value + " - " + 
							Gid('s_city').value + " - " + 
							Gid('s_county').value + "</h3>"
}
Gid('s_county').setAttribute('onchange','showArea()');
</script></td>
                  </tr>
                  <tr>
                    <td valign="middle" align="right">联系电话：</td>
                    <td valign="middle" align="left"><input id="txtMoblie" type="text" value="<%=user.getTel() %>" name="txtMoblie">
                      </td>
                  </tr>
                  <tr>
                    <td valign="middle" align="right">电子邮件：</td>
                    <td valign="middle" align="left"><input id="txtEmail" type="text" value="<%=user.getEmail() %>" name="txtEmail">
                      </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          </div>
          <!-- 地址 -->
       </form>
          
          
        </div>
      </div>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><h3>订单详情</h3></p>
      <!--商品列表-->
      <div id="productList">
        <table class="table" width="100%" cellspacing="0" cellpadding="0" bordercolor="#AACDED" border="1">
          <tbody>
            <tr class="align_center thead">
              <td width="11%" style="height:30px">商品编号</td>
              <td>商品名称</td>
              <td width="11%">商城价</td>
              <td width="11%">赠送积分</td>
             
              <td width="9%">商品数量</td>
              <td width="9%">小计</td>
            </tr>
             <%
                            if(cart==null){
                            out.print("<tr class='align_center'><td colspan='7'>暂无商品</td></tr>");
                            }else{
                            ArrayList<GoodsBean> goods=cart.showCart();
							for(int i=0;i<goods.size();i++){
							%>
            <!--一件商品-->
            <tr class="align_center">
              <td id="100460" trueid="589"><%=goods.get(i).getGoods_id() %></td>
              <td productname=" <%=goods.get(i).getGoods_name() %>"><div class="align_left"> <img align="absmiddle" onmouseout="" onmouseover="" style="cursor:pointer;" src=""> <a class="cart_size" target="_blank" title=" <%=goods.get(i).getGoods_name() %>" href="goods_view?user_id=<%=goods.get(i).getGoods_id()  %>"><%=goods.get(i).getGoods_name() %></a> </div></td>
              
              <td><span class="price">￥<%=goods.get(i).getSale_price() %></span></td>
              <td><%=goods.get(i).getJifen() %> </td>
              <td><%=goods.get(i).getBuy_count() %></td>
              <td><span class="price">￥<%
              

				df1.setGroupingUsed(false);
            	 String pr= df1.format((goods.get(i).getSale_price()*goods.get(i).getBuy_count()));
              out.print(pr); 
              %></span></td>
            </tr>
            <%

							}
                            }
                            
                             %>
            <!--一件商品结束-->
            <!--商品总价-->
            <tr class="align_center thead">
              <td class="text_right" colspan="6"><span style="font-size:14px"> <b>商品总金额(不含运费)： <span id="cartBottom_price" class="price">￥<%if(cart!=null){cart.showCart();out.print(df1.format(cart.getTotalprice()));}else{out.print("0.00");} %></span>元 </b> </span></td>
            </tr>
          </tbody>
        </table>
      </div>
      <!--商品列表end-->
      <div class="cart-btn">
        <div class="cart-btn-right"> <a href="/index.jsp"> <img border="0" align="absmiddle" src="images/btn/img-6.gif"> </a> <img align="absmiddle" onclick="submit()" src="images/btn/img-11.gif" style="cursor:pointer"> </div>
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
