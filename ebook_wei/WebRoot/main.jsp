<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,com.wei.model.*" errorPage="" %>
 <%
    //得到好书推荐 新书上架的图书信息
    List<GoodsBean> tuijian1=(List<GoodsBean>)request.getAttribute("tuijian1");
    List<GoodsBean> tuijian2=(List<GoodsBean>)request.getAttribute("tuijian2");
    
    //获得广告信息
     List<AdBean> ad1=(List<AdBean>)request.getAttribute("ad1");
     List<AdBean> ad2=(List<AdBean>)request.getAttribute("ad2");
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
<script type="text/javascript" src="js/jquery.ad1.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.sidebar.js"></script>
<script  type="text/javascript" src="js/new.js"></script>
</head>
<body >
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--------------------------------->
<div class="webbody">
  <!--left--------------------------->
  <div class="bodyleft">
    <!--分类--->
    <div id="sidebar">
      <div class="sidebartitle">
        <div class="fentitle">图书分类</div>
      </div>
      <%
      TypeBeanBo tbb=new TypeBeanBo();
      List<Type1Bean> type1=tbb.getType1();
      for(int i=0;i<type1.size();i++){
      %>
       <!--第一个 start-->
      <div class="sidelist"> <span>
        <h3><a href="goods_list.jsp?flag=1&type1_id=<%=type1.get(i).getType1_id() %>"><%=type1.get(i).getType1() %></a></h3>
        </span>
        <div class="i-list">
          <ul>
          <% 
         List<Type2Bean> type2= tbb.getType2ByType1(type1.get(i).getType1_id());
         for(int j=0;j<type2.size();j++){
         	%>
         	  <li><a href="goods_list.jsp?flag=2&type2_id=<%=type2.get(j).getType2_id() %>"><%=type2.get(j).getType2() %></a></li>
         	<%
         }
           %>
          </ul>
        </div>
      </div>
      <%
      }
       %>
     
      
      
     
     
    
    </div>
    <!--分类--->
    
    <!--ad2----360*135------->
    <div class="ad2">
    	<ul>
    	<%
    	for(int i=0;i<ad2.size();i++){
    	AdBean ad22=ad2.get(i);
    	%>
    	<li><a href="<%=ad22.getAd_url() %> " title="<%=ad22.getAd_title() %>"><img src="images/ad/<%=ad22.getAd_image() %>"/></a></li>
    	<%
    	}
    	
    	 %>
        	
           
           
            
        </ul>
    </div>
    <!--ad2-end---------->
    
  </div>
  <!--left--end----------------------->
  <div class="bodyright" >
    <!--ad1---720*287----------------------------->
    <div class="ad1">
      <div class="container">
        <div class="folio_block">
          <div class="main_view">
            <div class="window">
            
              <div class="image_reel"> 
              <%
              for(int i=0;i<5;i++){
            	   AdBean ad11=ad1.get(i);
              %>
            	  <a href="<%=ad11.getAd_url() %>"><img width="720px" height="287px" src="images/ad/<%=ad11.getAd_image() %>" alt="<%=ad11.getAd_title() %>" /></a> 
            	   
              <%
              }
              %>
	             
	              
               </div>
            </div>
            <div class="paging">
	             <a href="#" rel="1">1</a> 
	             <a href="#" rel="2">2</a>
	             <a href="#" rel="3">3</a> 
	             <a href="#" rel="4">4</a> 
	             <a href="#" rel="5">5</a>
            </div>
            
          </div>
        </div>
      </div>
      <script type="text/javascript">

$(document).ready(function() {

	//Set Default State of each portfolio piece
	$(".paging").show();
	$(".paging a:first").addClass("active");
		
	//Get size of images, how many there are, then determin the size of the image reel.
	var imageWidth = $(".window").width();
	var imageSum = $(".image_reel img").size();
	
	var imageReelWidth = imageWidth * imageSum;
	
	//Adjust the image reel to its new size
	$(".image_reel").css({'width' : imageReelWidth});
	
	//Paging + Slider Function
	rotate = function(){	
		var triggerID = $active.attr("rel") - 1; //Get number of times to slide
		var image_reelPosition = triggerID * imageWidth; //Determines the distance the image reel needs to slide

		$(".paging a").removeClass('active'); //Remove all active class
		$active.addClass('active'); //Add active class (the $active is declared in the rotateSwitch function)
		
		//Slider Animation
		$(".image_reel").animate({ 
			left: -image_reelPosition
		}, 500 );
		
	}; 
	
	//Rotation + Timing Event
	rotateSwitch = function(){		
		play = setInterval(function(){ //Set timer - this will repeat itself every 3 seconds
			$active = $('.paging a.active').next();
			if ( $active.length === 0) { //If paging reaches the end...
				$active = $('.paging a:first'); //go back to first
			}
			rotate(); //Trigger the paging and slider function
		}, 5000); //Timer speed in milliseconds (3 seconds)
	};
	
	rotateSwitch(); //Run function on launch
	
	//On Hover
	$(".image_reel a").hover(function() {
		clearInterval(play); //Stop the rotation
	}, function() {
		rotateSwitch(); //Resume rotation
	});	
	
	//On Click
	$(".paging a").click(function() {	
		$active = $(this); //Activate the clicked paging
		//Reset Timer
		clearInterval(play); //Stop the rotation
		rotate(); //Trigger rotation immediately
		rotateSwitch(); // Resume rotation
		return false; //Prevent browser jump to link anchor
	});	
	
});
</script>
    </div>
    <!--ad1-------------------------------->
   
    <!--好书推荐------------------------------->
    <div class="bookshow">
      <!--标题-->
      <div class="bookshow-title">
        <h3>好书推荐</h3>
        <a href="#">more</a> </div>
        
      
      <!--要显示的book内容-->
      <div class="bookshow-content">
      
        <%
        for(int i=0;i<5;i++){
        
        GoodsBean tuijianbook=tuijian1.get(i);
        %>
        
          <!--一本书-->
        <div class="book"> <a href="goods_view.jsp?goods_id=<%=tuijianbook.getGoods_id() %>" title="<%=tuijianbook.getGoods_name() %>"><img src="images/bookimg/<%=tuijianbook.getImage_file() %>" alt="<%=tuijianbook.getGoods_name() %>" /></a>
          <div class="book-name"><a href="goods_view.jsp?goods_id=<%=tuijianbook.getGoods_id() %>" title="<%=tuijianbook.getGoods_name() %>"><%=tuijianbook.getGoods_name() %> </a></div>
          <div class="book-price">￥：<%=tuijianbook.getSale_price() %></div>
        </div>
        
        <%
        } 
        %>
       
      </div>
    </div>
    <!--好书推荐------------------------------->
    <!--新书上架------------------------------->
    <div class="bookshow">
      <!--标题-->
      <div class="bookshow-title">
        <h3>新书上架</h3>
        <a href="#">more</a> </div>
      <!--要显示的book内容-->
      <div class="bookshow-content">
        <%
        for(int i=0;i<5;i++){
        
        GoodsBean newbook=tuijian2.get(i);
        %>
        
          <!--一本书-->
        <div class="book"> <a href="goods_view.jsp?goods_id=<%=newbook.getGoods_id() %>" title="<%=newbook.getGoods_name() %>"><img src="images/bookimg/<%=newbook.getImage_file() %>" alt="<%=newbook.getGoods_name() %>" /></a>
          <div class="book-name"><a href="goods_view.jsp?goods_id=<%=newbook.getGoods_id() %>" title="<%=newbook.getGoods_name() %>"><%=newbook.getGoods_name() %> </a></div>
          <div class="book-price">￥：<%=newbook.getSale_price() %></div>
        </div>
        
        <%
        } 
        %>
      </div>
    </div>
    <!--新书上架------------------------------->
  </div>
</div>
<!--right--------------------------------->
<jsp:include page="include/rightad.jsp"/>
<!--right--------------------------------->
<!--buttom_menu--------------------------------->
<jsp:include page="include/bottom_menu.jsp"/>
<!--buttom_menu--------------------------------->

<!--footer--------------------------------->
<jsp:include page="include/footer.jsp"/>
</body>
</html>