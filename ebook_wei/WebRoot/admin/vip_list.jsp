<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.util.*,java.util.*" errorPage="" %>
<%
DButil db=new DButil();
		String s_pageNow=(String)request.getParameter("pageNow");
		int pageNow=1;
		int pageSize=15;
		
		if(s_pageNow!=null){
		pageNow=Integer.parseInt(s_pageNow);
		}
		String sql="select * from EBOOK_USERS";
		PageBean pb=(PageBean)db.getPage(sql,pageSize,pageNow);
		List<Map<String, Object>> list=pb.getResult();

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
				
				<h2>所有用户</h2>		
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
                <script type="text/javascript">
                     	function delvip(d){
                     	if(confirm("确认删除该会员？")){
                     	window.location='DelVipServlet?user_id='+d;
                     	}else{
                     	return;
                     	}
                     	
                     	}
                     </script>
                	
  <table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
							<th width="9%">用户ID</th>
							<th width="9%">姓名</th>
							<th width="5%">性别</th>
							<th width="32%">地址</th>
							<th width="11%">E-mail</th>
							<th width="11%">联系电话</th>
							<th width="7%">积分</th>
							<th width="10%">注册时间</th>
							<th width="6%">操作</th>
						</tr>
					</thead>
				
					<tbody>
						<%
					for(int i=0;i<list.size();i++){
						Map<String,Object> user=list.get(i);
					%>
						<tr <%if(i%2==0){out.print("class='alt'");} %>>
							<!--复数用class alt-->
							<td><%=user.get("USER_ID") %></td>
							<td><%=user.get("USER_NAME") %></td>
							<td><%=user.get("SEX") %></td>
							<td><%=user.get("ADRESS") %></td>
							<td><%=user.get("EMAIL") %></td>
							<td><%=user.get("TEL") %></td>
							<td><%=user.get("JIFEN") %></td>
							<td><%=user.get("ZC_DATE") %></td>
							<td><a href="#" onclick="delvip('<%=user.get("USER_ID") %>');" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
						
						<%
						}
						 %>
						 
						
                        
					</tbody>
				</table> <!-- END Table -->
				

<h2>&nbsp;</h2>
			

    <!-- The paginator -->
			  <ul class="paginator">
					<%
    	if(pb.getPagenow()!=1){
    	%>
    	<li><a href="goods_list.jsp?pageNow=<%=(pb.getPagenow()-1) %>">上一页</a></li><%
    	}
    	
    	 %>
	    
	   <%
	   for(int i=1;i<=pb.getPages();i++){
	   %>
	    <li <%if(i==pb.getPagenow()){ %>class="current"<%} %>><a href="goods_list.jsp?pageNow=<%=i %>"><%=i %></a></li>
	   <%
	   } 
	   %>			
	   
	   <%
	   if(pb.getPagenow()<pb.getPages()){
	   System.out.print(pb.getPages()+"  "+pb.getPagesize());
	   %>
	   <li><a href="goods_list.jsp?pageNow=<%=(pb.getPagenow()+1) %>">下一页</a></li>
	   <%
	   }
	    %>	
		
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