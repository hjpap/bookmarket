<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<%
String order_id=request.getParameter("order_id");
String goods_id=request.getParameter("goods_id");
GoodsBeanBo gbb=new GoodsBeanBo();
GoodsBean goods=gbb.getGoodsById(goods_id);
UserBean user=(UserBean)request.getSession().getAttribute("userinfo");

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
<div id="content"> <!-- Content begins here -->
				
							
	  <form method="post" action="AddPingjiaServlet"><!-- Form -->
				<!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
				<fieldset><legend>详细填写商品信息</legend>
				  <div class="input_field">
					<label for="sf">添加商品详细评论 </label>
					  <span class="field_desc"></span>
					</div>
				  <div class="input_field">
				    <label for="mf">商品编号:</label>
					  <input class="smallfield" name="goods_id" type="text" value="<%=goods.getGoods_id() %>" readonly="readonly"><!-- <span class="validate_success">A positive message!</span>-->
					  <input type="hidden" name="user_id" value="<%=user.getUser_id() %>"/>
					  <input type="hidden" name="order_id" value="<%=order_id %>"/>
				  </div>
                    
                       <div class="input_field">
						<label for="mf">商品名称:</label>
 						<input class="bigfield" name="goods_name" type="text" value="<%=goods.getGoods_name() %>" readonly="readonly"/> 
					</div>
                    
                       <div class="input_field">
						<label for="mf">图片: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 						<img width="120px" height="140px" src="images/bookimg/<%=goods.getImage_file() %>"/>
					</div>
                    
                     <div class="input_field">
						---------------------------------------------------------------------------------------------------------------------------------------------
					  
					</div>
                    
                  <div class="input_field">
						<label for="mf">评价:</label>
					   <select name="pj_level">
                   			<option value="好评" selected="selected">好评</option>
                            <option value="中评">中评</option>
                            <option value="差评">差评</option>
                       </select>
					</div>
                  <div class="input_field">
						  <textarea name="pj_content" cols="50" rows="10" id="pj_content"></textarea>
				 
          </div>
					<div class="input_field no_margin_bottom">
						<input class="submit" type="submit" value="确认提交" />
						<input class="submit" type="reset" value="重置" />
						<a href="pingjia_list.jsp" class="button">取消</a>
					</div>
				</fieldset>
				<!-- End of fieldset -->
	</form><!-- /Form -->

			
  </div>
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