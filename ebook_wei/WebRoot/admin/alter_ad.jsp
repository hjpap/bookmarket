<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String ad_id=request.getParameter("ad_id");
AdBeanBo abb=new AdBeanBo();
AdBean ab=new AdBean();
ab=abb.getAdById(ad_id);

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
				
				<h2>修改广告信息</h2>				

			
	  <form method="post" action="AlterAdServlet" enctype="multipart/form-data"><!-- Form -->
				<!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
				<fieldset>
			    <legend>填写广告信息</legend>
					<div class="input_field">
						<label for="sf">编号: </label>
 						<input class="smallfield" name="ad_id" type="text" value="<%=ab.getAd_id() %>" readonly="readonly"/>
 						<span class="field_desc"></span>
					</div>
					<div class="input_field">
					  <label for="mf">标题: </label>
					  <input class="bigfield" id="ad_title" name="ad_title" type="text" value="<%=ab.getAd_title() %>" /> <span id="titlemsg" class="validate_success"></span><!-- validate_error -->
					</div>
					
					
                    <script type="text/javascript">
                    //验证js
                    	function validate(){
                    		var title=document.getElementById("ad_title").value;
                    		var url=document.getElementById("ad_url").value;
                    		var image=document.getElementById("ad_image").value;
                    		
                    		var titlemsg=document.getElementById("titlemsg");
                    		var urlmsg=document.getElementById("urlmsg");
                    		var imagemsg=document.getElementById("imagemsg");
                    		if(title==null || title==""){
                    			titlemsg.className="validate_error";
                    			
                    		}
                    	}
                    	
                    	
                    
                    </script>
                    
                    
                       <div class="input_field">
						<label for="mf">URL: </label>
 						<input class="bigfield" name="ad_url" id="ad_url" type="text" value="<%=ab.getAd_url() %>" /> <span id="urlmsg" class="validate_success"></span>
					</div>
                  <div class="input_field">
				<label for="lf">图片: </label>
 						<input class="bigfield" name="ad_image" id="ad_image" type="file"  />原图：<img width="150px" height="50px;" src="../images/ad/<%=ab.getAd_image() %>"/> <span id="imagemsg" class="validate_success"></span> 
                        
					</div>
                  <div class="input_field no_margin_bottom">
                  
				  <input class="submit" type="submit" value="确认提交" />
						<input class="submit" type="reset" value="重置" />
						<a href="ad.jsp" class="button">取消</a>
					</div>
				</fieldset>
				<!-- End of fieldset -->
			</form><!-- /Form -->

			
		</div> <!-- END Content -->

	</div> 	
		<div id="footer"> 
			<p>Copyright wei 2009-2020. All rights reserved.</p>
		</div>	
</div> <!-- END Container -->
</body>
</html>