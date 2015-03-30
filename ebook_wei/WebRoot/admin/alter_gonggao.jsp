<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String board_id=request.getParameter("board_id");

 BoardBean bb;
         if(board_id=="" || board_id==null || board_id.equals("null")){
        	bb=new BoardBean();
         }else{
         	BoardBeanBo bbb=new BoardBeanBo();
         	bb=bbb.getBoardById(board_id);
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
				
				<h2>添加公告</h2>				

			
	  <form method="post" action="AlterBoardServlet"><!-- Form -->
				<!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
				<fieldset>
			    <legend>详细填写公告信息</legend>
					<div class="input_field">
						<label for="sf">公告标题: </label>
 						<input class="bigfield" name="title" value="<%=bb.getTitle() %>" type="text"  />
 						<input type="hidden" name="board_id" value="<%=board_id%>" />
 						<input type="hidden" name="read_count" value="<%=bb.getRead_count()%>" />
 						<span class="field_desc"></span>
					</div>
                    <div class="input_field">
						<label for="sf">作者: </label>
 						<input class="smallfield" name="poster" value="<%=bb.getPoster() %>" type="text"  />
 						<span class="field_desc"></span>
					</div>
					<div class="input_field">
					  <textarea name="editor1" cols="50" rows="10" id="editor1"><%=bb.getContent() %></textarea>
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
						<a href="show_gonggao.jsp" class="button">取消</a>
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