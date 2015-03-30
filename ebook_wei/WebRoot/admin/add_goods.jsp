<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
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
		
			<script type="text/javascript">
function createXhr(){
		  var httprequest=false;
		  if (window.XMLHttpRequest)
		  { // if Mozilla, Safari etc
		    httprequest=new XMLHttpRequest()
		    if (httprequest.overrideMimeType)
		      httprequest.overrideMimeType('text/xml')
		   }
		   else if (window.ActiveXObject)
		   { // if IE
		     try {
		       httprequest=new ActiveXObject("Msxml2.XMLHTTP");
		     }
		     catch (e){
		       try{
		          httprequest=new ActiveXObject("Microsoft.XMLHTTP");
		       }
		       catch (e){}
		     }
		   }
		   return httprequest;
		}

		var xmlHttp;

	function select_type1(v){
		//alert(v);
    		//var type1 = encodeURI(encodeURI(v));
    		var url = "ServletTypeServlet?type1="+v;
    		xmlHttp = createXhr();
    		xmlHttp.onreadystatechange = selectOption;
    		xmlHttp.open("get",url);
    		xmlHttp.send();
    	}
    	function removeAllChilds(f){
    		var childs = f.childNodes;    
			for(var i=childs.length-1;i>=0;i--) {      
			    //alert(childs[i].nodeName);      
			    f.removeChild(childs[i]);      
			}   
    		
    	}
 function selectOption() {
	if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
		
		var xmlData = xmlHttp.responseText;
		var gsonData = eval('('+xmlData+')');
		var select=document.getElementById("type2");
		
		removeAllChilds(select);

		for(var i=0;i<gsonData.length;i++){
			var obj = gsonData[i];
			var myoption = document.createElement("option");
			myoption.setAttribute("id",i);
			myoption.setAttribute("name",i);
			myoption.setAttribute("value",obj.TYPE2_ID);
			var textNode = document.createTextNode(obj.TYPE2);
			myoption.appendChild(textNode);
			var option = select.appendChild(myoption);
		}
		
	}
}

	</script>

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

			
	  <form method="post" action="../AddGoodsServlet" enctype="multipart/form-data"><!-- Form -->
				<!-- Fieldset  smallfield小的输入框 mediumfield中等输入框 "bigfield"长输入框-->
				<fieldset><legend>详细填写商品信息</legend>
					<div class="input_field">
						<label for="sf">商品名称: </label>
 						<input class="bigfield" name="goods_name" type="text"  />
 						<span class="field_desc"></span>
					</div>
					
					<div class="input_field">
						<label for="mf">类型: </label>
                        <select name="type1" onchange="select_type1(this.value)" id="type1">
                        <option value="一级分类" selected="selected">一级分类</option>
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
                        <select name="type2" id="type2">
                         
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
						<input class="submit" type="submit" value="确认添加" />
						<input class="submit" type="reset" value="重置" />
						<a href="#" onclick="window.location='goods_list.jsp'" class="button">取消</a>
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