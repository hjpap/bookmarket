<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<%
	UserBean user=(UserBean)request.getSession().getAttribute("userinfo");
	String status;
	status=request.getParameter("status");
	if(null==status || "null".equals(status) || "".equals(status)){
	status="4";
	}
 %>
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
    <td colspan="5"><h1>订单信息</h1></td>
  </tr>
  <tr>
    <td width="1%" rowspan="10">&nbsp;</td>
    <td colspan="3" rowspan="9">
      <!--dddddddddddddd-->
      
       <%
            if(user!=null){
            OrderInfo oif=new OrderInfo();
            List<String> order_ids=oif.getAllOrder(user.getUser_id(),status);
	            for(int i=0;i<order_ids.size();i++){
	            	OrderBean order=oif.getOrderInfo(order_ids.get(i));
	            	List<OrderDetailBean> orderdetail=oif.getOrderDetailBenInfo(order_ids.get(i));
	       
	            %>
	            
	              <table cellspacing="0" cellpadding="0" border="0">
        <!-- Table -->
        <thead>
          <tr>
            <th colspan="5">订单编号：<%=order.getOrder_id() %>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;订单状态：<%if(order.getStatus().equals("1")){out.print("未处理");}else if(order.getStatus().equals("2")){out.print("已结账，等待发货");}else if(order.getStatus().equals("3")){out.print("已发货，确认收货");}else if(order.getStatus().equals("4")){out.print("已完成订单");} %>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;时间：<%=order.getOrder_date() %></th>
          </tr>
          <tr>
            <th colspan="5">收件地址：<%=order.getAddress() %></th>
          </tr>
          <tr>
            <th colspan="5">
             <%if(order.getStatus().equals("1")){
          %>
           <a href="AlterOrderStatus?flag=1&order_id=<%=order.getOrder_id() %>" class="button">去付款</a>
          <%
         // out.print("未处理");
          
          }else if(order.getStatus().equals("2")){
         // out.print("已结账，等待发货");
          %>
           <a href="#" class="button">等待发货...</a>
          <%
          
          }else if(order.getStatus().equals("3")){
          //out.print("已发货，确认收货");
           %>
           <a href="AlterOrderStatus?flag=3&order_id=<%=order.getOrder_id() %>" class="button">确认收货</a>
          <%
          
          }else if(order.getStatus().equals("4")){
          //out.print("已完成订单");
           %>
           <a href="#" class="button">已完成</a>
          <%
          } %>
            
            
            </th>
          </tr>
        </thead>
        <tbody>
       
          <tr>
            <!--复数用class alt-->
            <td width="13%">商品编号</td>
            <td width="47%">商品名称</td>
            <td width="11%">售价</td>
            <td width="10%">数量</td>
             <td width="10%">评价</td>
            </tr>
            <%
        for(int j=0;j<orderdetail.size();j++){
        	OrderDetailBean odb=orderdetail.get(j);
        	GoodsBeanBo gbb=new GoodsBeanBo();
        	
        	%>
        	<tr <% if(j%2==0){out.print("class='alt'");}%>>
            <td><%=odb.getGoods_id() %></td>
            <td><a href="goods_view.jsp?goods_id=<%=odb.getGoods_id() %>" target="_blank"><font style="color:#cccccc;"><%=gbb.getGoodsById(odb.getGoods_id()).getGoods_name()%></font></a></td>
            <td>￥<%=odb.getSale_price() %></td>
           
            <td><%=odb.getBuy_count() %></td>
             <td>
             <%
             if(odb.getPingjia().equals("1") && order.getStatus().equals("4")){
             %>
          		 <a href="add_pingjia.jsp?order_id=<%=order.getOrder_id() %>&goods_id=<%=odb.getGoods_id() %>" class="button">未评</a>
          	 <%
             }else if(odb.getPingjia().equals("2")){
             %>
          		 <a href="#" class="button">已评</a>
          	 <%
             }
              %>
              </td>
            </tr>
        	<%
        }  
         %>
          
       
      
        </tbody>
      </table>
	            
	            
	            
	            
	            
	            <%

	            }
            
            }else{
            
            //没有登录
            out.print("没有订单信息！");
            
            }
            
             %>
    
      <!--dddddddddddddd-->
      
      
      </td>
    <td width="17%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="42%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="21%">&nbsp;</td>
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