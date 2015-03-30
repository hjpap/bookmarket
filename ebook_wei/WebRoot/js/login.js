function checklogin(){

		var user=document.getElementById("txtUsername").value;
		var pwd=document.getElementById("txtPassword").value;
		var msg=document.getElementById("login_password_error");
		var buttomdiv=document.getElementById("submit_signin_div");
		var buttom=document.getElementById("btnSignCheck");
		
			if(user==null || user ==""||pwd==null || pwd=="" ){
				msg.style.display="";
				
				return false;
			}else{
				
				buttomdiv.className="login_btn login_btn02";
				buttom.value="µÇÂ¼ÖÐ";
				
				
				
				document.getElementById("form").action="LoginServlert";
				document.getElementById("form").submit();
			}
		

	}