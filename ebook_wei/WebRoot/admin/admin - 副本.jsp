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
				
				<h2>Tables</h2>				
				<table cellspacing="0" cellpadding="0" border="0"><!-- Table -->
					<thead>
						<tr>
							<th><input type="checkbox" class="checkall" /></th>
							<th>No</th>
							<th>Status</th>
							<th>Customer Name</th>
							<th>Views</th>
							<th>Date</th>
							<th>Actions</th>
						</tr>
					</thead>
				
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td>1</td>
							<td>Approved</td>
							<td>Lorem ipsum</td>
							<td>273</td>
							<td>6.12.2009</td>
							<td><a href="#"><img src="assets/action_add.png" alt="Add" /></a><a href="#"><img src="assets/action_remove.png" alt="Remove" /></a><a href="#"><img src="assets/action_check.png" alt="Check" /></a><a href="#"><img src="assets/action_delete.png" alt="Delete" /></a><a href="#"><img src="assets/folder.png" alt="Folder" /></a><a href="#"><img src="assets/letter.png" alt="Letter" /></a></td>
						</tr>
						
						<tr class="alt">
							<td><input type="checkbox" /></td>
							<td>2</td>
							<td>Approved</td>
							<td>Ipsum Dolor</td>
							<td>5096</td>
							<td>1.23.2009</td>
							<td><a href="#"><img src="assets/action_add.png" alt="Add" /></a><a href="#"><img src="assets/action_remove.png" alt="Remove" /></a><a href="#"><img src="assets/action_check.png" alt="Check" /></a><a href="#"><img src="assets/action_delete.png" alt="Delete" /></a><a href="#"><img src="assets/folder.png" alt="Folder" /></a><a href="#"><img src="assets/letter.png" alt="Letter" /></a></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" /></td>
							<td>3</td>
							<td>Pending</td>
							<td>Dolor sit</td>
							<td>0</td>
							<td>3.17.2009</td>
							<td><a href="#"><img src="assets/action_add.png" alt="Add" /></a><a href="#"><img src="assets/action_remove.png" alt="Remove" /></a><a href="#"><img src="assets/action_check.png" alt="Check" /></a><a href="#"><img src="assets/action_delete.png" alt="Delete" /></a><a href="#"><img src="assets/folder.png" alt="Folder" /></a><a href="#"><img src="assets/letter.png" alt="Letter" /></a></td>
						</tr>
						
						<tr class="alt">
							<td><input type="checkbox" /></td>
							<td>4</td>
							<td>Declined</td>
							<td>Sit Amet</td>
							<td>192</td>
							<td>9.30.2009</td>
							<td><a href="#"><img src="assets/action_add.png" alt="Add" /></a><a href="#"><img src="assets/action_remove.png" alt="Remove" /></a><a href="#"><img src="assets/action_check.png" alt="Check" /></a><a href="#"><img src="assets/action_delete.png" alt="Delete" /></a><a href="#"><img src="assets/folder.png" alt="Folder" /></a><a href="#"><img src="assets/letter.png" alt="Letter" /></a></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" /></td>
							<td>5</td>
							<td>Pending</td>
							<td>Amet Lorem</td>
							<td>501</td>
							<td>10.01.2009</td>
							<td><a href="#"><img src="assets/action_add.png" alt="Add" /></a><a href="#"><img src="assets/action_remove.png" alt="Remove" /></a><a href="#"><img src="assets/action_check.png" alt="Check" /></a><a href="#"><img src="assets/action_delete.png" alt="Delete" /></a><a href="#"><img src="assets/folder.png" alt="Folder" /></a><a href="#"><img src="assets/letter.png" alt="Letter" /></a></td>
						</tr>
					</tbody>
				</table> <!-- END Table -->
				<h2>Notifications</h2>
				<div class="warning">
					<div class="warn_icon"><!-- --></div>
					<a href="#" class="close" title="Close this notification">x</a>
					<div class="desc">
						<span>Warning!</span>
						<p>Mauris molestie, nisi ac elementum convallis, sapien odio sollicitudin mi, vel pellentesque nunc erat at sapien. </p>
					</div>
				</div>
				<div class="err">
					<div class="err_icon"><!-- --></div>
					<a href="#" class="close" title="Close this notification">x</a>
					<div class="desc">
						<span>Error!</span>
						<p>Ut fermentum, quam non eleifend molestie, velit nisl mattis eros, sit amet imperdiet diam justo sed augue.</p>
					</div>
				</div>
				<div class="succes">
					<div class="succes_icon"><!-- --></div>
					<a href="#" class="close" title="Close this notification">x</a>
					<div class="desc">
						<span>Success!</span>
						<p>Ut fermentum, quam non eleifend molestie, velit nisl mattis eros, sit amet imperdiet diam justo sed augue.</p>
					</div>
				</div>
				<div class="clear"><!-- --></div>

			<h2>Forms and buttons</h2>
			<p>In aliquam sagittis urna. Suspendisse potenti. Mauris eu ante ut enim semper egestas. Donec eros justo, tempor eu, condimentum non, fringilla sed, mauris. Fusce massa arcu, fringilla vitae, pulvinar pretium, viverra at, libero. Morbi elit. Integer dapibus. Pellentesque ut ipsum et metus rhoncus vehicula. Quisque fringilla tincidunt lorem. Proin sed erat. Curabitur sit amet risus in dolor tempor adipiscing.</p>
			<form method="post" action="#"><!-- Form -->
				<!-- Fieldset -->
				<fieldset><legend>This is a simple fieldset</legend>
					<div class="input_field">
						<label for="sf">Small field: </label>
 						<input class="smallfield" name="sf" type="text" value="input text" />
 						<span class="field_desc">Field description</span>
					</div>
					
					<div class="input_field">
						<label for="mf">Medium Field: </label>
 						<input class="mediumfield" name="mf" type="text" value="" /> <span class="validate_success">A positive message!</span>
					</div>
					
					<div class="input_field">
						<label for="lf">Large Field: </label>
 						<input class="bigfield" name="lf" type="text" value="" /> <span class="validate_error">A negative message!</span>
					</div>
					<div class="input_field">
						<label for ="che">Linecheckboxes: </label>
						<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
						<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
						<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
						<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
					</div>
					<div class="input_field">

						<label for="dropdown">DropDown: </label>
						<select name="dropdown" class="dropdown">
							<option>United States</option>
							<option>Other Country</option>
						</select>
					</div>
					<div class="input_field">
						<label>Vertical:</label>
						<div class="column">
							<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
							<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
							<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
							<span class="form_line"><input type="checkbox" name="che" class="checkbox" />Lorem Ipsum</span>
						</div>
						<div class="column">
							<span class="form_line"><input type="radio" class="radio" />Lorem Ipsum</span>
							<span class="form_line"><input type="radio" class="radio" />Lorem Ipsum</span>
							<span class="form_line"><input type="radio" class="radio" />Lorem Ipsum</span>
							<span class="form_line"><input type="radio" class="radio" />Lorem Ipsum</span>
						</div>
					</div>
					<div class="input_field">
							<textarea cols="50" rows="10"></textarea>
					</div>
					<div class="input_field no_margin_bottom">
						<input class="submit" type="submit" value="Submit" />
						<input class="submit" type="reset" value="Reset" />
						<a href="#" class="button">A button</a>
					</div>
				</fieldset>
				<!-- End of fieldset -->
			</form><!-- /Form -->

			<!-- The paginator -->
				<ul class="paginator">
					<li><a href="#">Previous</a></li>
					<li class="current"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			<!-- Paginator end -->
		</div> <!-- END Content -->

	</div> 	
		<div id="footer"> 
			<p>Copyright yourwebsitename 2009. All rights reserved.</p>
		</div>	
</div> <!-- END Container -->
</body>
</html>