<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
				
				<h2>所有商品</h2>		
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
                <!---查找商品-->
                	
  <table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
							<th width="6%"><input type="checkbox" class="checkall" /></th>
							<th width="6%">编号</th>
							<th width="8%">类型</th>
							<th width="41%">名称</th>
							<th width="9%">浏览数</th>
							<th width="9%">售出</th>
							<th width="11%">添加时间</th>
							<th width="10%">操作</th>
						</tr>
					</thead>
				
					<tbody>
						<tr>
							<td><input type="checkbox" /></td><!--复数用class alt-->
							<td>1</td>
							<td>Approved</td>
							<td>Lorem ipsum</td>
							<td>273</td>
							<td>6.12.2009</td>
							<td>2002-03-03</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
						
						<tr class="alt">
							<td><input type="checkbox" /></td>
							<td>2</td>
							<td>Approved</td>
							<td>Ipsum Dolor</td>
							<td>5096</td>
							<td>1.23.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" /></td>
							<td>3</td>
							<td>Pending</td>
							<td>Dolor sit</td>
							<td>0</td>
							<td>3.17.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
						
						<tr class="alt">
							<td><input type="checkbox" /></td>
							<td>4</td>
							<td>Declined</td>
							<td>Sit Amet</td>
							<td>192</td>
							<td>9.30.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" /></td>
							<td>5</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                        <tr>
							<td><input type="checkbox" /></td>
							<td>6</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                        <tr>
							<td><input type="checkbox" /></td>
							<td>7</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                        <tr>
							<td><input type="checkbox" /></td>
							<td>8</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                        <tr>
							<td><input type="checkbox" /></td>
							<td>9</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                         <tr>
							<td><input type="checkbox" /></td>
							<td>10</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                        
                          <tr>
							<td><input type="checkbox" /></td>
							<td>11</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                          <tr>
							<td><input type="checkbox" /></td>
							<td>12</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                          <tr>
							<td><input type="checkbox" /></td>
							<td>13</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                          <tr>
							<td><input type="checkbox" /></td>
							<td>14</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
                          <tr>
							<td><input type="checkbox" /></td>
							<td>15</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td>&nbsp;</td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="#" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
                        
					</tbody>
				</table> <!-- END Table -->
				

      <h2>Forms and buttons</h2>
			<p>In aliquam sagittis urna. Suspendisse potenti. Mauris eu ante ut enim semper egestas. Donec eros justo, tempor eu, condimentum non, fringilla sed, mauris. Fusce massa arcu, fringilla vitae, pulvinar pretium, viverra at, libero. Morbi elit. Integer dapibus. Pellentesque ut ipsum et metus rhoncus vehicula. Quisque fringilla tincidunt lorem. Proin sed erat. Curabitur sit amet risus in dolor tempor adipiscing.</p>
			

    <!-- The paginator -->
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
			<!-- Paginator end -->
		</div> <!-- END Content -->

	</div> 	
		<div id="footer"> 
			<p>Copyright 20012-2020 wei. All rights reserved. </p>
		</div>	
</div> <!-- END Container -->
</body>
</html>