<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
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
				
				<h2>首页广告</h2>		
               
                	


<table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
						  <th colspan="5">焦点图广告（720*287）</th>
					  </tr>
						<tr>
							<th width="10%">编号</th>
							<th width="34%">标题</th>
							<th width="34%">URL</th>
							<th width="17%">图片</th>
							<th width="5%">操作</th>
						</tr>
					</thead>
				
					<tbody>
                    <%
                    AdBeanBo abb=new AdBeanBo();
                    List<AdBean> list=abb.getAd("1");
                    for(int i=0;i<list.size();i++){
                    %>
                    <tr <%if(i%2==0){out.print("class='alt'");} %>>
							<!--复数用class alt-->
							<td><%=list.get(i).getAd_id() %></td>
							<td><%=list.get(i).getAd_title() %></td>
							<td><%=list.get(i).getAd_url() %></td>
							<td><img width="130px" height="45px" src="../images/ad/<%=list.get(i).getAd_image() %>"></td>
							<td><a href="alter_ad.jsp?ad_id=<%=list.get(i).getAd_id() %>" title="修改"><img src="assets/pencil.png" alt="修改" /></a></td>
						</tr>
                    <%
                    }
                     %>
                        
					</tbody>
				</table> <!-- END Table -->
		  <p>	

          <table cellspacing="0" cellpadding="0" border="0">
                  <!-- Table -->
                  <thead>
                    <tr>
                      <th colspan="5">侧栏广告（360*135）</th>
                    </tr>
                    <tr>
                      <th>编号</th>
                      <th>标题</th>
                      <th>URL</th>
                      <th>图片</th>
                      <th>操作</th>
                    </tr>
                    
                  </thead>
                  <tbody>
                  
                   <%
               
                    List<AdBean> list2=abb.getAd("2");
                    for(int i=0;i<list2.size();i++){
                    %>
                    <tr <%if(i%2==0){out.print("class='alt'");} %>>
                      <!--复数用class alt-->
                      <td width="10%"><%=list2.get(i).getAd_id() %></td>
                      <td width="34%"><%=list2.get(i).getAd_title() %></td>
                      <td width="34%"><%=list2.get(i).getAd_url() %></td>
                      <td width="17%"><img width="130px" height="45px" src="../images/ad/<%=list2.get(i).getAd_image() %>"></td>
                      <td width="5%"><a href="alter_ad.jsp?ad_id=<%=list2.get(i).getAd_id() %>" title="修改"><img src="assets/pencil.png" alt="修改" /></a></td>
                    </tr>
                    <%} %>
                   
                  </tbody>
          </table>
          <h2>&nbsp;</h2>
			

    <!-- The paginator -->
    <!-- Paginator end -->
		</div> <!-- END Content -->

	</div> 	
		<div id="footer"> 
			<p>Copyright 20012-2020 wei. All rights reserved. </p>
		</div>	
</div> <!-- END Container -->
</body>
</html>