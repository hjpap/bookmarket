<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>

<%
UserBean user=(UserBean)request.getSession().getAttribute("userinfo");
String user_id=user.getUser_id();

PingjiaBo pb=new PingjiaBo();

List<OrderDetailBean> weiping=pb.getPingjia(user_id,"1");
List<OrderDetailBean> yiping=pb.getPingjia(user_id,"2");



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
    <td colspan="5"><h1>商品评价</h1></td>
  </tr>
  <tr>
    <td width="1%" rowspan="10">&nbsp;</td>
    <td colspan="3" rowspan="9">
      <!--未评ddddddddd-->
      <table cellspacing="0" cellpadding="0" border="0">
        <!-- Table -->
        <thead>
          <tr>
            <th colspan="5"><h3>未评商品</h3></th>
            </tr>
          </thead>
        <tbody>
         <!--复数用class alt-->
           <tr>
            <a href="#">
            <td width="11%">商品编号</td></a>
            <td width="59%">商品名称</td>
            <td width="10%">单价</td>
            <td width="10%">购买数量</td>
            <td width="10%">是否评价</td>
            </tr>
        <%
        GoodsBeanBo gbb=new GoodsBeanBo();
        for(int i=0;i<weiping.size();i++){
        %>
        <tr <%if(i%2==0){out.print("class='alt'");} %>>
           
            <td><%=weiping.get(i).getGoods_id() %></td>
            <td><a href="goods_view.jsp?goods_id=<%=weiping.get(i).getGoods_id() %>" target"_blank"=><font color="#cccccc"><%=gbb.getGoodsById(weiping.get(i).getGoods_id()).getGoods_name() %></font></a></td>
            <td><%=weiping.get(i).getSale_price() %></td>
            <td><%=weiping.get(i).getBuy_count() %></td>
            <td><a href="add_pingjia.jsp?goods_id=<%=weiping.get(i).getGoods_id() %>&order_id=<%=weiping.get(i).getOrder_id() %>" class="button">去评价</a></td>
            </tr>
        <%
        }
         %>
          
        
        
          </tbody>
        </table>
      <!--dddddddddddddd-->
      <p></p>
      <p></p>
      <p></p>
       <!--dddddddddddddd-->
      <table cellspacing="0" cellpadding="0" border="0">
        <!-- Table -->
        <thead>
          <tr>
            <th colspan="5"><h3>已评商品</h3></th>
            </tr>
          </thead>
        <tbody>
          <tr>
            <!--复数用class alt-->
            <a href="#">
            <td width="11%">商品编号</td></a>
            <td width="59%">商品名称</td>
            <td width="10%">单价</td>
            <td width="10%">购买数量</td>
            <td width="10%">是否评价</td>
            </tr>
         <%
       
        for(int i=0;i<yiping.size();i++){
        %>
        <tr <%if(i%2==0){out.print("class='alt'");} %>>
           
            <td><%=yiping.get(i).getGoods_id() %></td>
            <td><a href="goods_view.jsp?goods_id=<%=yiping.get(i).getGoods_id() %>" target"_blank"=><font color="#cccccc"><%=gbb.getGoodsById(yiping.get(i).getGoods_id()).getGoods_name() %></font></a></td>
            <td><%=yiping.get(i).getSale_price() %></td>
            <td><%=yiping.get(i).getBuy_count() %></td>
            <td><a href="#" class="button">已评价</a></td>
            </tr>
        <%
        }
         %>
          
          </tbody>
        </table>
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