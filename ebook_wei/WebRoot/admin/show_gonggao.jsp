<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.util.*,java.util.*" errorPage="" %>
<%
DButil db=new DButil();
		String s_pageNow=(String)request.getParameter("pageNow");
		int pageNow=1;
		int pageSize=10;
		
		if(s_pageNow!=null){
		pageNow=Integer.parseInt(s_pageNow);
		}
		String sql="select * from ebook_board order by board_id desc";//desc降序asc升序
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
		<script type="text/javascript">
								function delboard(v){
								if(confirm("确认删除？")){
								location="DelBoardServlet?board_id="+v;
								}
								}
							</script>
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
				
				<h2>公告</h2>		
                <!---查找商品-->
             
				
                <div class="find">按:
                <form action="dd" method="post" name="findform">
                <select id="findtype" name="findtype">
                	
                    <option value="编号" selected="selected">编号</option>
                    <option value="标题">标题</option>
                    
                </select>
                
                
                
                <input id="findtex" type="text" name="findtex"/>
                
                <input type="submit" value="查找"/>
                </form>
                </div>	
                <!---查找商品-->
                	
  <table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
							<th width="6%">编号</th>
							<th width="37%">标题</th>
							<th width="9%">作者</th>
							<th width="12%">时间</th>
							<th width="9%">浏览数</th>
							<th width="10%">操作</th>
						</tr>
					</thead>
				
					<tbody>
						<%
					for(int i=0;i<list.size();i++){
						Map<String,Object> goods=list.get(i);
					%>
						<tr <% if(i%2==0){out.print("class='alt'");}%>>
							<!--复数用class alt-->
							<td><%=goods.get("BOARD_ID") %></td>
							<td><a href="../show_gonggao.jsp?id=<%=goods.get("BOARD_ID") %>" target="_blank"><%=goods.get("TITLE") %></a></td>
							<td><%=goods.get("POSTER") %></td>
							<td><%=goods.get("POST_DATE") %></td>
							<td><%=goods.get("READ_COUNT") %></td>
							<td><a href="alter_gonggao.jsp?board_id=<%=goods.get("BOARD_ID") %>" title="修改"><img src="assets/pencil.png" alt="修改" /></a>
							<a href="#" onclick="delboard(<%=goods.get("BOARD_ID") %>)" title="删除">
							<img src="assets/action_delete.png" alt="删除" />
							</a>
							</td>
						
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
    	<li><a href="show_gonggao.jsp?pageNow=<%=(pb.getPagenow()-1) %>">上一页</a></li><%
    	}
    	
    	 %>
	    
	   <%
	   for(int i=1;i<=pb.getPages();i++){
	   %>
	    <li <%if(i==pb.getPagenow()){ %>class="current"<%} %>><a href="show_gonggao.jsp?pageNow=<%=i %>"><%=i %></a></li>
	   <%
	   } 
	   %>			
	   
	   <%
	   if(pb.getPagenow()<pb.getPages()){
	   System.out.print(pb.getPages()+"  "+pb.getPagesize());
	   %>
	   <li><a href="show_gonggao.jsp?pageNow=<%=(pb.getPagenow()+1) %>">下一页</a></li>
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