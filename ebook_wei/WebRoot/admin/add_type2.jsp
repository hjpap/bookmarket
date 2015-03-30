<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*,com.wei.util.*" errorPage="" %>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link href="<%=request.getContextPath() %>/_samples/sample.css" rel="stylesheet" type="text/css" />

	<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>

</head>
<body onload="on_load()">
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
				
				<h2>二级分类</h2>				

			
	 
				<!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
				<fieldset>
                 <legend>填写分类信息</legend>
                
                 <form method="post" action="AddTypeServlet?flag=2"><!-- Form -->
					<div class="input_field">
				
						<label for="sf">请选择一级分类: </label>
                        
                  <select name="type1_id" style="float:left;" >
                  
                  		<%
					TypeBeanBo tb=new TypeBeanBo();
					List<Type1Bean> list=tb.getType1();
					for(int i=0;i<list.size();i++){
					%>
					<option value="<%=list.get(i).getType1_id()%>"><%=list.get(i).getType1() %></option>
					<%
					}
					%>
                        	
                        </select>
                        <label for="sf">二级分类名称: </label>
				    <input class="mediumfield" name="type2_name" type="text" style="float:left;" />
 						<input class="submit" type="submit" value="添加" style="float:left;" />
					</div>
                  </form><!-- /Form -->
					<div class="input_field">
					   <table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
						  <th width="31%">二级分类编号</th>
							<th width="30%">二级分类名称</th>
							<th width="30%">所属一级分类</th>
							<th width="9%">操作</th>
						</tr>
					</thead>
				
					<tbody>
						<%
						DButil db=new DButil();
		String s_pageNow=(String)request.getParameter("pageNow");
		int pageNow=1;
		int pageSize=15;
		
		if(s_pageNow!=null){
		pageNow=Integer.parseInt(s_pageNow);
		}
		String sql="select * from EBOOK_TYPE2";
		PageBean pb=(PageBean)db.getPage(sql,pageSize,pageNow);
		List<Map<String, Object>> list2=pb.getResult();
						
					
					
					for(int i=0;i<list2.size();i++){
					%>
					<tr <%if(i%2==0){out.print("class='alt'");} %>>
						  <td><%=list2.get(i).get("TYPE2_ID") %></td>
							<!--复数用class alt-->
							<td><%=list2.get(i).get("TYPE2") %></td>
							<td><%=list2.get(i).get("TYPE2_ID") %></td>
							<td><a href="#" title="修改"><img src="assets/pencil.png" alt="修改" /></a><a href="DelTypeServlet?flag=2&type2_id=<%=list2.get(i).get("TYPE2_ID") %>" title="删除"><img src="assets/action_delete.png" alt="删除" /></a></td>
						</tr>
					<%
					}
					%>
						
						   
					</tbody>
				</table> <!-- END Table -->
				
				  </div>
				</fieldset>
				<!-- End of fieldset -->
			
<!-- The paginator -->
    
    <ul class="paginator">
    	<%
    	if(pb.getPagenow()!=1){
    	%>
    	<li><a href="add_type2.jsp?pageNow=<%=(pb.getPagenow()-1) %>">上一页</a></li><%
    	}
    	
    	 %>
	    
	   <%
	   for(int i=1;i<=pb.getPages();i++){
	   %>
	    <li <%if(i==pb.getPagenow()){ %>class="current"<%} %>><a href="add_type2.jsp?pageNow=<%=i %>"><%=i %></a></li>
	   <%
	   } 
	   %>			
	   
	   <%
	   if(pb.getPagenow()<pb.getPages()){
	   System.out.print(pb.getPages()+"  "+pb.getPagesize());
	   %>
	   <li><a href="add_type2.jsp?pageNow=<%=(pb.getPagenow()+1) %>">下一页</a></li>
	   <%
	   }
	    %>	
		
	</ul>
			<!-- Paginator end -->
			
		</div> <!-- END Content -->

	</div> 	
		<div id="footer"> 
			<p>Copyright wei 2009-2020. All rights reserved.</p>
		</div>	
</div> <!-- END Container -->
</body>
</html>