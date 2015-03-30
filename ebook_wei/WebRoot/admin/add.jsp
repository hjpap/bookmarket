<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
	<script type="text/javascript" src="<%=request.getContextPath() %>/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/ckfinder/ckfinder.js"></script>
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
				
				<h2>添加</h2>				

			
	  <form method="post" action="#"><!-- Form -->
				<!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
				<fieldset><legend>详细填写商品信息</legend>
					<div class="input_field">
						<label for="sf">商品名称: </label>
 						<input class="bigfield" name="goods_name" type="text"  />
 						<span class="field_desc"></span>
					</div>
					
					<div class="input_field">
						<label for="mf">类型: </label>
                        <select name="type1" id="type1">
                        	<option value="">类别1</option>
                            <option value="">类别1</option>
                        </select>
                        <select name="type2" id="type2">
                        	<option value="">类别2</option>
                            <option value="">类别2</option>
                        </select>
					  <span class="validate_success">A positive message!</span>
					</div>
                    
                    <div class="input_field">
					  <label for="mf">出版社: </label>
					  <input class="mediumfield" name="producer" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
                    
                       <div class="input_field">
						<label for="mf">ISBN码: </label>
 						<input class="mediumfield" name="sn_number" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
                    
                       <div class="input_field">
						<label for="mf">成本价: </label>
 						<input class="smallfield" name="cost_price" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
                    
                     <div class="input_field">
						<label for="mf">售价: </label>
					   <input class="smallfield" name="sale_price" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
                    
                     <div class="input_field">
						<label for="mf">出版日期: </label>
					   <input class="smallfield" name="pub_date" type="text"  onClick="WdatePicker()" /> <span class="validate_success">A positive message!</span>
					</div>
                    
                     <div class="input_field">
						<label for="mf">数量: </label>
 						<input class="smallfield" name="goods_count" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
                    
                     <div class="input_field">
						<label for="mf">可兑积分: </label>
 						<input class="smallfield" name="jifen" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
                     
					
<div class="input_field">
						<label for="lf">图片: </label>
 						<input class="bigfield" name="lf" type="file" value="" /> <span class="validate_error">A negative message!</span>
					</div>
<div class="input_field">

		    <label for="dropdown">是否推广: </label>
<select name="tuijian" class="dropdown">
							<option value="null" selected="selected">否</option>
							<option value="1">好书推荐</option>
                            <option value="2">新书上架</option>
                  <option value="3">侧栏展示</option>
						</select>
				  </div>
					<div class="input_field">
							<textarea name="editor1" cols="50" rows="10" id="editor1"></textarea>
							<script type="text/javascript">
		function on_load(){
			var editor = CKEDITOR.replace( 'editor1',
				{
					filebrowserBrowseUrl : '<%=request.getContextPath() %>/ckfinder/ckfinder.html',
					filebrowserImageBrowseUrl : '<%=request.getContextPath() %>/ckfinder/ckfinder.html?type=Images',
					filebrowserFlashBrowseUrl : '<%=request.getContextPath() %>/ckfinder/ckfinder.html?type=Flash',
					filebrowserUploadUrl : 
				 	   '<%=request.getContextPath() %>/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files&currentFolder=/archive/',
					filebrowserImageUploadUrl : 
					   '<%=request.getContextPath() %>/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images&currentFolder=/cars/',
					filebrowserFlashUploadUrl : '<%=request.getContextPath() %>/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
				});
			CKFinder.setupCKEditor( editor, '<%=request.getContextPath() %>/ckfinder/' );
		}
	</script>
          </div>
					<div class="input_field no_margin_bottom">
						<input class="submit" type="submit" value="确认提交" />
						<input class="submit" type="reset" value="重置" />
						<a href="#" class="button">取消</a>
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