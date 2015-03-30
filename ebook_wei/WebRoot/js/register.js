//验证
    var userid=false;	
		function validate(){
			
			return validatepwd()&&validatepwd2()&&validatemail()&&validatecode()&&checkId()&&userid;
			
		}
		
		
    	function validatepwd(){   	
    		var userPwd = document.getElementById("pwd").value;
    		var pwdmsg=document.getElementById("pwd_error");
    		
    		if(userPwd==null || userPwd==""){
    			document.getElementById("pwd_succeed").className="blank";
    			pwdmsg.style.display="";
    			return false;
    		}else{
    			pwdmsg.style.display="none";
    			document.getElementById("pwd_succeed").className="blank succeed";
    			return true;
    		}
    	
    	}
    	function validatepwd2(){ 
    		var userPwd = document.getElementById("pwd").value;
    		var userPwd2 = document.getElementById("pwd2").value;	
    		var pwd2msg=document.getElementById("pwd2_error");
    		
    		if(userPwd2==null || userPwd2==""){
    			document.getElementById("pwd2_succeed").className="blank";
    			pwd2msg.style.display="";
    			return false;
    		}else if(userPwd2!=userPwd){
    			document.getElementById("pwd2_succeed").className="blank";
    			pwd2msg.style.display="";
    			
    			return false;
    		}else{
    			pwd2msg.style.display="none";
    			document.getElementById("pwd2_succeed").className="blank succeed";
    			return true;
    		}
    	}
    	
    	function validatemail(){  		
    		var email = document.getElementById("mail").value;	
    		var emailmsg=document.getElementById("mail_error");
    		var rex= /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
    		 if(!rex.test(email)){
    			    document.getElementById("mail_succeed").className="blank";
    				emailmsg.style.display="";
    				return false;
    			}else{
    				emailmsg.style.display="none";
    				 document.getElementById("mail_succeed").className="blank succeed";
    				return true;
    			}
    		
    	}
    	
   
		//.............................
		$(function(){
	var tab1 = new tabpane(3,'tab','tabpage','_on.gif','.gif','hover');
	var scquick = new scrollquick('quick',100);
	$('#gnb').menuModel({hightLight:{level_1:0},imgOn:'_on.gif',imgOff:'.gif',target_obj:'#header',showOps:{display:'block'},hideOps:{display:'none'}});
})
function idenfunc()
{
	document.getElementById("authcode").value="";
	document.getElementById("idenimage").setAttribute("src","createMa.jsp?temp="+new Date())
	
}
var isT=false;
function checkyanzm(){
	$.get('/AuthCodeServlet?id='+$('#authcode').val(),function(data){
		isT=true;
		//$('#errorM').html('效验码不正确,请重新输入.');
	})
}
function toRegist(){
	
	$.get('/AuthCodeServlet?id='+$('#authcode').val(),function(data){
		if(data=='1'){
			alert('效验码不正确,请重新输入.');
			$('#errorM').html('效验码不正确,请重新输入.');
			return;
		}
	})
	
	
}
		//..............................
    
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
    	function checkId(){
    		var userId=document.getElementById("username").value;
    		var idmsg=document.getElementById("username_error");
    		if(userId==null || userId==""){
    			idmsg.style.display="";
    			return false;
    		}else{
    			
    			var url="CheckUserIdServlet?id="+userId;
        		
        		xmlHttp=createXhr();
        		xmlHttp.onreadystatechange=handleReadyState;
        		xmlHttp.open("get",url);
        		xmlHttp.send();
    		}
    		
    	}
    	function handleReadyState(){
    		var idmsg=document.getElementById("username_error");
    		var success=document.getElementById("username_succeed");
    		if(xmlHttp.readyState==4 && xmlHttp.status==200){
    		var msg=xmlHttp.responseText;
    		if(msg=="1"){
    			idmsg.style.display="none";
    			
    			success.className="blank succeed";
    			userid= true;
    		}else{
    			success.className="blank";
    			idmsg.style.display="";
    			idmsg.innerHTML=xmlHttp.responseText;
    			return false;
    		}
    		
    			
    		}
    	}
    	