<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*,java.text.DecimalFormat" errorPage="" %>
<%
UserBean user=(UserBean)request.getSession().getAttribute("userinfo");
String user_id="none";
if(user!=null ){
user_id=user.getUser_id();
}
MyCartBo cart=(MyCartBo)request.getSession().getAttribute("myCart");
DecimalFormat df1 = new DecimalFormat("####.00");

 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
      	      <td width="55%">&nbsp;<input type="hidden" name="user_id" id="user_id" value="<%=user_id %>"/></td>
      	      <td width="15%"><img src="images/btn/cartstep1b.gif" /></td>
      	      <td width="15%"><img border="0" src="images/btn/cartstep2a.gif" /></td>
      	      <td width="15%"><img src="images/btn/cartstep3a.gif" /></td>
      	      <td width="20%">&nbsp;</td>
   	        </tr>
   	      </table>
</div>
        
        <div class="cart">
        	<div class="cart-title">
            	<h2>我挑选的商品</h2>
            </div>
            <!--购物车内容-->
            <div class="cart-content">
                <!--商品列表-->
                <div id="productList">
					<table class="table" width="100%" cellspacing="0" cellpadding="0" bordercolor="#AACDED" border="1">
						<tbody>
							<tr class="align_center thead">
								<td width="11%" style="height:30px">商品编号</td>
								<td>商品名称</td>
								
								<td width="11%">会员价</td>
                                <td width="8%">赠送积分</td>
                                <td width="9%">商品数量</td>
                                <td width="9%">小计</td>
                                <td width="7%">删除商品</td>
							</tr>
                            <!--一件商品-->
                            <script type="text/javascript">
                            	function add(d,v,id){
                            		var text=document.getElementById(d);
                            		var count=text.value;
                            		var t=Number(count)+1
                					if(t<=v){
                					text.value=t;
                					location='CartServlet?flag=alter&goods_id='+id+'&buy_count='+t;
                					}else{
                					alert("商品库存不足，请联系卖家");
                					}
                            		
                            		
                            	}
                            	
                            	function reduce(d,id){
                            		var text=document.getElementById(d);
                            		var count=text.value;
                            		var t=Number(count)-1
                					if(t>0){
                					text.value=t;
                					location='CartServlet?flag=alter&goods_id='+id+'&buy_count='+t;
                					}else{
                					alert("商品数量必须大于0");
                					}
                            	}
                            
                            	function del(v){
                            	if(confirm("确认删除该商品？")){
                            	location='CartServlet?flag=del&goods_id='+v;
                            	}
                            	}
                            	function removeall(){
                            	if(confirm("确认删除所有商品？")){
                            	location='CartServlet?flag=delall';
                            	}
                            	}
                            	
                            </script>
                            <%
                            if(cart==null){
                            out.print("<tr class='align_center'><td colspan='7'>暂无商品</td></tr>");
                            }else{
                            ArrayList<GoodsBean> goods=cart.showCart();
							for(int i=0;i<goods.size();i++){
							%>
							
							 <tr class="align_center">
                                <td id="100460" trueid="589"><%=goods.get(i).getGoods_id() %></td>
                                <td productname="<%=goods.get(i).getGoods_name() %>">
                                <div class="align_left">
                                <img align="absmiddle" onmouseout="" onmouseover="" style="cursor:pointer;" src="">
                                <a class="cart_size" target="_blank" title=" <%=goods.get(i).getGoods_name() %>" href="goods_view.jsp?goods_id=<%=goods.get(i).getGoods_id() %>"> <%=goods.get(i).getGoods_name() %></a>
                                </div>
                                </td>
                                
                                <td>
                                <span class="price">￥<%=goods.get(i).getSale_price() %></span>
                                </td>
                                <td><%=goods.get(i).getJifen() %></td>
                                <td>
                                <a onclick="reduce(<%=goods.get(i).getGoods_id() %>,<%=goods.get(i).getGoods_id() %>)" style="margin-right:2px" title="减一" href="#">
                                <img border="none" src="images/btn/img-2.gif" style="display:inline">
                                </a>
                                <input id="<%=goods.get(i).getGoods_id() %>" class="input" type="text" onblur="" onpaste="return false" onkeydown="" size="3" value="<%=goods.get(i).getBuy_count() %>" name="count">
                                
                                <a onclick="add(<%=goods.get(i).getGoods_id() %>,<%=goods.get(i).getGoods_count() %>,<%=goods.get(i).getGoods_id() %>)" style="margin-left:2px" title="加一" href="#">
                                <img border="none" src="images/btn/img-3.gif" style="display:inline">
                                </a>
                                </td>
                                <td><span class="price">￥<%
              

				df1.setGroupingUsed(false);
            	 String pr= df1.format((goods.get(i).getSale_price()*goods.get(i).getBuy_count()));
              out.print(pr); 
              %></span></td>
                                <td>
                                <a class="cart_size" onclick="del(<%=goods.get(i).getGoods_id() %>)" href="">删除</a>
                                </td>
                                </tr>
						<!--一件商品结束-->
							
							<%

							}
                            }
                            
                             %>
                           
                        <!--商品总价-->
                            <tr class="align_center thead">
                           		<td class="text_right" colspan="7">
                             
                                   <span style="font-size:14px">
                                    	<b>商品总金额(不含运费)：
                                   			 <span id="cartBottom_price" class="price">￥<%if(cart!=null){cart.showCart();out.print(df1.format(cart.getTotalprice()));}else{out.print("0.00");} %></span>元
                                   		</b>
                                   </span>
                                </td>
                            </tr>
							
						</tbody>
					</table>
				</div>
                <!--商品列表end-->
                <div class="cart-btn">
                	<div class="cart-btn-left1">
						<a id="clearCart" class="cart_size" onclick="removeall()" href="">清空购物车</a>
					</div>
                   
                   	 <div class="cart-btn-right">
                		<a href="index.jsp">
							<img border="0" align="absmiddle" src="images/btn/img-6.gif">
						</a>
                    		 <img align="absmiddle" onclick="gotoorder()" src="images/btn/img-7.gif" style="cursor:pointer">
                    		 <script type="text/javascript">
                    		 	function gotoorder(){
                    		 		var user_id=document.getElementById("user_id").value;
	                    		 	if(user_id=="none"){
		                    		 	alert("请先登录");
		                    		 	location="login.jsp";
	                    		 	}else{
	                    		 		location="order.jsp?user_id="+user_id;
	                    		 	}
                    		 	}
                    		 </script>
               		 </div>
                
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
        <jsp:include page="include/bottom_menu.jsp"/>
    
</body>
</html>
