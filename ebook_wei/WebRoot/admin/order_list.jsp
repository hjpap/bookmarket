<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<%
	String status;
	status=request.getParameter("status");
	if(null==status || "null".equals(status) || "".equals(status)){
	status="4";
	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>簿客 | 后台</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style type="text/css" media="all">
		@import url(css/style.css);
		img {behavior:url('js/iepngfix.htc') !important;}
	</style>	
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/jquery_ui.js" type="text/javascript"></script>
	<script src="js/wysiwyg.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>

</head>
<body>
<div id="container"> <!-- Container -->
	<div id="header"> <!-- Header -->
		<div id="title">簿&nbsp;&nbsp; 客&nbsp; |&nbsp; 后&nbsp;&nbsp; 台<span>Welcome to Buke Administrator Skin</span>
		</div>
        <!--登录部分-->
		<jsp:include page="include/loginbar.jsp"/>
         <!--登录部分-->
	</div>
    <!-- 左边部分 Sidebar -->	
   		<jsp:include page="include/leftbar.jsp"/>
	 <!--左边部 END Sidebar -->
	<div id="main"> <!-- Main, right side content -->
		<div id="content"> <!-- Content begins here -->
				
				<h2>订单信息</h2>		
                <!---查找商品-->
                <script type="text/javascript">
				function ftype(){
					var findtype=document.getElementById("findtype");
					var goodstype=document.getElementById("goodstype");
					var findtex=document.getElementById("findtex");
					if(findtype.value=="类型"){
						goodstype.style.display="";
						findtex.style.display="none";
						}else{
							goodstype.style.display="none";
						findtex.style.display="";
							}
					}
					
				function quxiao(v){
           				
           				if(confirm("确认取消？")){
           				location="../AlterOrderStatus?flag=4&order_id="+v;
           		}
           	}
                	
                </script>
                   
                <div class="find">按:
                <form action="dd" method="post" name="findform">
                <select id="findtype" name="findtype" onchange="ftype();">
                	
                    <option value="编号" selected="selected">编号</option>
                    <option value="isbn码">isbn码</option>
                    <option value="名称">名称</option>
                    <option value="类型">类型</option>
                </select>
                
                <div id="goodstype" style="display:none">
                	 <select name="goodstype1">
                	<option value="">类型1</option>
                    <option value="">类型1</option>
                    <option value="">类型1</option>
                    <option value="">类型1</option>
                </select>
                
                 <select name="goodstype2">
                	<option value="">类型2</option>
                    <option value="">类型2</option>
                    <option value="">类型2</option>
                    <option value="">类型2</option>
                </select>
                </div>
                
                <input id="findtex" type="text" name="findtex"/>
                
                <input type="submit" value="查找"/>
                </form>
                </div>
                <p>&nbsp;</p>
				<p>&nbsp;</p>	
                <!---查找商品-->
                 <%
           
            OrderInfo oif=new OrderInfo();
            List<String> order_ids=oif.getSuoYouOrder(status);
	            for(int i=0;i<order_ids.size();i++){
	            	OrderBean order=oif.getOrderInfo(order_ids.get(i));
	            	List<OrderDetailBean> orderdetail=oif.getOrderDetailBenInfo(order_ids.get(i));
	       
	            %>
	            
                	
  <table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
						  <th colspan="5">订单编号：<%=order.getOrder_id() %>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;订单状态：<%if(order.getStatus().equals("1")){out.print("未处理");}else if(order.getStatus().equals("2")){out.print("已结账，等待发货");}else if(order.getStatus().equals("3")){out.print("已发货，等待确认收货");}else if(order.getStatus().equals("4")){out.print("已完成订单");} %>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;时间：<%=order.getOrder_date() %></th>
					  </tr>
						<tr>
						  <th colspan="5">收件地址：<%=order.getAddress() %></th>
					  </tr>
						<tr>
							<th colspan="5">

 		 <%if(order.getStatus().equals("1")){
          %>
           <a href="#" onclick="quxiao(<%=order.getOrder_id() %>)" class="button">取消订单</a>
        
          <%
         // out.print("未处理");
          
          }else if(order.getStatus().equals("2")){
         // out.print("已结账，等待发货");
          %>
           <a href="../AlterOrderStatus?flag=2&order_id=<%=order.getOrder_id() %>" class="button">发货</a>
          <%
          
          }else if(order.getStatus().equals("3")){
          //out.print("已发货，确认收货");
           %>
           <a href="#" class="button">已发货</a>
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
							<td width="11%">原价</td>
							<td width="10%">数量</td>
						</tr>
						
						  <%
        for(int j=0;j<orderdetail.size();j++){
        	OrderDetailBean odb=orderdetail.get(j);
        	GoodsBeanBo gbb=new GoodsBeanBo();
        	
        	%>
						
						<tr <% if(j%2==0){out.print("class='alt'");}%>>
							<td><%=odb.getGoods_id() %></td>
							<td><a href="../goods_view.jsp?goods_id=<%=odb.getGoods_id() %>" target="_blank"><font style="color:#cccccc;"><%=gbb.getGoodsById(odb.getGoods_id()).getGoods_name()%></font></a></td>
							<td>￥<%=odb.getSale_price() %></td>
							<td>￥<%=odb.getCost_price() %></td>
							<td><%=odb.getBuy_count() %></td>
						</tr>
						
						 	<%
        }  
         %>
						
                        
					</tbody>
				</table> <!-- END Table -->
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				       <%

	            }
            
             %>

<h2>&nbsp;</h2>
			

    <!-- The paginator 
			  <ul class="paginator">
					<li><a href="#">上一页</a></li>
					<li class="current"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">下一页</a></li>
				</ul>
			 Paginator end -->
		</div> <!-- END Content -->

	</div> 	
		<div id="footer"> 
			<p>Copyright 20012-2020 wei. All rights reserved. </p>
		</div>	
</div> <!-- END Container -->
</body>
</html>