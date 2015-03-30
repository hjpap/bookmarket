<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
      <!--第一个 start-->
      <div class="sidelist"> <span>
        <h3><a href="#">小说</a></h3>
        </span>
        <div class="i-list">
          <ul>
            <li><a href="##">军事</a></li>
            <li><a href="##">都市</a></li>
            <li><a href="##">言情</a></li>
            <li><a href="##">恐怖</a></li>
            <li><a href="##">悬疑</a></li>
            <li><a href="##">科幻</a></li>
          </ul>
        </div>
      </div>
      <!--second start-->
      <div class="sidelist"> <span>
        <h3><a href="#">文学</a></h3>
        </span>
        <div class="i-list">
          <ul>
            <li><a href="##">中国当代文学</a></li>
            <li><a href="##">中国古代文学</a></li>
            <li><a href="##">外国文学</a></li>
            <li><a href="##">诗歌词曲</a></li>
            <li><a href="##">戏剧曲艺</a></li>
            <li><a href="##">散文|随笔|书信</a></li>
            <li><a href="##">影视文学</a></li>
            <li><a href="##">纪实文学</a></li>
          </ul>
        </div>
      </div>
      <!--third start-->
      <div class="sidelist"> <span>
        <h3><a href="#">传记</a></h3>
        </span>
        <div class="i-list">
          <ul>
            <li><a href="##">历史人物</a></li>
            <li><a href="##">军事人物</a></li>
            <li><a href="##">财经人物</a></li>
            <li><a href="##">自传</a></li>
            <li><a href="##">政治家</a></li>
            <li><a href="##">科学家</a></li>
          </ul>
        </div>
      </div>
      <!--5 start-->
      <div class="sidelist"> <span>
        <h3><a href="#">励志与成功</a></h3>
        </span>
        <div class="i-list">
          <ul>
            <li><a href="##">创业</a></li>
            <li><a href="##">文明礼仪</a></li>
            <li><a href="##">心灵鸡汤</a></li>
            <li><a href="##">成功学</a></li>
            <li><a href="##">演讲与口才</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--分类--->
    
    <!--ad2----360*135------->
    <div class="ad2">
    	<ul>
        	<li><img src="images/ad/reel_1.jpg"/></li>
            <li><img src="images/ad/reel_2.jpg"/></li>
            <li><img src="images/ad/reel_3.jpg"/></li>
           
            
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
              <div class="image_reel"> <a href="#"><img src="images/ad/reel_1.jpg" alt="" /></a> <a href="#"><img src="images/ad/reel_2.jpg" alt="" /></a> <a href="#"><img src="images/ad/reel_3.jpg" alt="" /></a> <a href="#"><img src="images/ad/reel_4.jpg" alt="" /></a> <a href="#"><img src="images/ad/reel_1.jpg" alt="" /></a> </div>
            </div>
            <div class="paging"> <a href="#" rel="1">1</a> <a href="#" rel="2">2</a> <a href="#" rel="3">3</a> <a href="#" rel="4">4</a> <a href="#" rel="5">5</a> </div>
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
        <!--书1-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="我的第一套成长必读书（套装共8册） ">我的第一套成长必读书（套装共8册） </a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书2-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="喜羊羊与灰太狼·给快乐加油：小灰灰上学记（1-4）（套装共4册）">喜羊羊与灰太狼·给快乐加油：小灰灰上学记（1-4）（套装共4册）强烈推荐好书推荐物超所值赶快拥有 </a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书3-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书4-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书5-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
      </div>
    </div>
    <!--好书推荐------------------------------->
    <!--好书推荐------------------------------->
    <div class="bookshow">
      <!--标题-->
      <div class="bookshow-title">
        <h3>新书上架</h3>
        <a href="#">more</a> </div>
      <!--要显示的book内容-->
      <div class="bookshow-content">
        <!--书1-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书2-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书3-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书4-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
        <!--书5-->
        <div class="book"> <a href="#" title="书名一"><img src="images/bookimg/2023236.jpg" alt="dd" /></a>
          <div class="book-name"><a href="#" title="书名一">书名一</a></div>
          <div class="book-price">￥：9.00</div>
        </div>
      </div>
    </div>
    <!--好书推荐------------------------------->
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