<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<%
UserBean user=(UserBean)request.getSession().getAttribute("userinfo");


MyCartBo cart=(MyCartBo)request.getSession().getAttribute("myCart");


BoardBeanBo bbb=new BoardBeanBo();
List<BoardBean> board=bbb.get10Board();

 %>

<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen"/>
<script type="text/javascript" src="../js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){

	//Adjust panel height
	$.fn.adjustPanel = function(){ 
		$(this).find("ul, .subpanel").css({ 'height' : 'auto'}); //Reset subpanel and ul height
		
		var windowHeight = $(window).height(); //Get the height of the browser viewport
		var panelsub = $(this).find(".subpanel").height(); //Get the height of subpanel	
		var panelAdjust = windowHeight - 100; //Viewport height - 100px (Sets max height of subpanel)
		var ulAdjust =  panelAdjust - 25; //Calculate ul size after adjusting sub-panel (27px is the height of the base panel)
		
		if ( panelsub >= panelAdjust ) {	 //If subpanel is taller than max height...
			$(this).find(".subpanel").css({ 'height' : panelAdjust }); //Adjust subpanel to max height
			$(this).find("ul").css({ 'height' : ulAdjust}); //Adjust subpanel ul to new size
		}
		else if ( panelsub < panelAdjust ) { //If subpanel is smaller than max height...
			$(this).find("ul").css({ 'height' : 'auto'}); //Set subpanel ul to auto (default size)
		}
	};
	
	//Execute function on load
	$("#chatpanel").adjustPanel(); //Run the adjustPanel function on #chatpanel
	$("#alertpanel").adjustPanel(); //Run the adjustPanel function on #alertpanel
	
	//Each time the viewport is adjusted/resized, execute the function
	$(window).resize(function () { 
		$("#chatpanel").adjustPanel();
		$("#alertpanel").adjustPanel();
	});
	
	//Click event on Chat Panel + Alert Panel	
	$("#chatpanel a:first, #alertpanel a:first").click(function() { //If clicked on the first link of #chatpanel and #alertpanel...
		if($(this).next(".subpanel").is(':visible')){ //If subpanel is already active...
			$(this).next(".subpanel").hide(); //Hide active subpanel
			$("#footpanel li a").removeClass('active'); //Remove active class on the subpanel trigger
		}
		else { //if subpanel is not active...
			$(".subpanel").hide(); //Hide all subpanels
			$(this).next(".subpanel").toggle(); //Toggle the subpanel to make active
			$("#footpanel li a").removeClass('active'); //Remove active class on all subpanel trigger
			$(this).toggleClass('active'); //Toggle the active class on the subpanel trigger
		}
		return false; //Prevent browser jump to link anchor
	});
	
	//Click event outside of subpanel
	$(document).click(function() { //Click anywhere and...
		$(".subpanel").hide(); //hide subpanel
		$("#footpanel li a").removeClass('active'); //remove active class on subpanel trigger
	});
	$('.subpanel ul').click(function(e) { 
		e.stopPropagation(); //Prevents the subpanel ul from closing on click
	});
	
	//Delete icons on Alert Panel
	$("#alertpanel li").hover(function() {
		$(this).find("a.delete").css({'visibility': 'visible'}); //Show delete icon on hover
	},function() {
		$(this).find("a.delete").css({'visibility': 'hidden'}); //Hide delete icon on hover out
	});





	
});
</script>

<div id="headerc">
<div id="footpanel">
	<ul id="mainpanel">    	
        <li><a href="index.jsp" class="home">HOME <small>返回首页</small></a></li>
        <%
        if(user==null || user.equals("null")){
        %>
        <li>
       	  <div class="wec"> 你好,欢迎来到簿客网!</div>
       	</li>
         <li><a href="login.jsp" class="text">[登录] <small>用户登录</small></a></li>
        <li><a href="register.jsp" class="text">[注册] <small>新用户注册</small></a></li>
        <%
        }else{
        %>
          <li>
       	  <div class="wec"> 你好,<%=user.getUser_id() %>&nbsp;！</div>
       	</li>
       	<li><a href="LogoutServlet" class="text">[退出] <small>安全退出</small></a></li>
         <li><a href="vibcenter.jsp" class="profile">我的簿客 <small>我的簿客</small></a></li>
         
        <%
        }
         %>
       	
        
       
       
     
       
        <li id="alertpanel">
        	<a href="gonggao_list.jsp" class="alerts">公告 <small>公告</small></a>
            <div class="subpanel">
            <h3><span> &ndash; </span>公告</h3>
            <ul>
            <li class="view"><a href="gonggao_list.jsp">查看所有</a></li>
            <%
            
            for(int i=0;i<board.size();i++){
            %>
            <li><p><a href="show_gonggao.jsp?id=<%=board.get(i).getBoard_id() %>"><%=board.get(i).getTitle() %></a> </p></li>
            <%
            }
            
             %>
            </ul>
            </div>
        </li>
        <li id="chatpanel">

        
        	<a target="_blank" href="cart.jsp" class="chat">购物车  </a>
            <div class="subpanel">
            <h3><span> &ndash; </span>购物车</h3>
            <ul>
            	<li><span>我的购物车</span></li>

<%if(cart==null){
%>
<li><a href="#"><div class="b_g_name">购物车暂无商品</div></a></li>
<%
}else{
	ArrayList<GoodsBean> goods=cart.showCart();
	for(int i=0;i<goods.size();i++){
%>

<li><a target="_blank" href="goods_view.jsp?goods_id=<%=goods.get(i).getGoods_id() %>"><img src="images/bookimg/<%=goods.get(i).getImage_file() %>" alt="<%=goods.get(i).getGoods_name() %>" /> <div class="b_g_name"><%=goods.get(i).getGoods_name() %></div></a></li>

<%
	}
}

%>

                
                <li><span>总价：<font color="#FF0000"><strong>￥<%if(cart!=null){out.print(cart.getTotalprice());}else{out.print("0.0");} %></strong></font></span></li>
                <li><a target="_blank" href="cart.jsp"><img src="images/btn/cart_pic.png" alt="" /> 去结账</a></li>
                
            </ul>
            </div>
        </li>
        
        
	</ul>
</div>


</div>

