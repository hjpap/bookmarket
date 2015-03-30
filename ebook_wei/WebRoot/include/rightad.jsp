<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,com.wei.model.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%
//得到右侧广告展示书籍信息
 //List<GoodsBean> tuijian3=(List<GoodsBean>)request.getSession().getAttribute("tuijian3");
 //System.out.print("推荐3------"+tuijian3);
List<GoodsBean> tuijian3=new LinkedList<GoodsBean>();//侧栏广告  3
        GoodsBeanBo gbb=new GoodsBeanBo();
		tuijian3=gbb.getTuijianGoods("3");
		if(tuijian3.isEmpty() || tuijian3.size()<5){
			for(int i=0;i<5;i++){
				GoodsBean gb=new GoodsBean();
				gb.setGoods_name("暂无该商品");
				tuijian3.add(gb);
			}
		}
		
 %>


<link rel="stylesheet" href="../css/style.css" type="text/css"/>


<div id="rp_list" class="rp_list">
  <ul>
  <!--要大于等于5个-->
 	 <%
 		  for(int i=0;i<tuijian3.size()&&i<10;i++){
        
    	  GoodsBean adbook=tuijian3.get(i);
        
      %>
       <li>
          <div> 
          <img src="images/bookimg/<%=adbook.getImage_file() %>" alt="<%=adbook.getGoods_name() %>"/> 
          <span class="rp_title"><%=adbook.getGoods_name() %></span> 
          <span class="rp_links"> <a target="_blank" href="goods_view.jsp?goods_id=<%=adbook.getGoods_id() %>">查看详情</a>  
          </span> 
          </div>
       </li>
   
      
      <%  
  		 }
  	  %>
    
<!-- ------------------------------------

<li>
          <div> 
          <img src="images/bookimg/1.jpg %>" alt="1 %>"/> 
          <span class="rp_title">111</span> 
          <span class="rp_links"> <a target="_blank" href="goods_view.jsp?goods_id=1">查看详情</a>  
          </span> 
          </div>
       </li>
   <li>
          <div> 
          <img src="images/bookimg/1.jpg %>" alt="1 %>"/> 
          <span class="rp_title">111</span> 
          <span class="rp_links"> <a target="_blank" href="goods_view.jsp?goods_id=1">查看详情</a>  
          </span> 
          </div>
       </li>
        <li>
          <div> 
          <img src="images/bookimg/1.jpg %>" alt="1 %>"/> 
          <span class="rp_title">111</span> 
          <span class="rp_links"> <a target="_blank" href="goods_view.jsp?goods_id=1">查看详情</a>  
          </span> 
          </div>
       </li>
        <li>
          <div> 
          <img src="images/bookimg/1.jpg %>" alt="1 %>"/> 
          <span class="rp_title">111</span> 
          <span class="rp_links"> <a target="_blank" href="goods_view.jsp?goods_id=1">查看详情</a>  
          </span> 
          </div>
       </li>
        <li>
          <div> 
          <img src="images/bookimg/1.jpg %>" alt="1 %>"/> 
          <span class="rp_title">111</span> 
          <span class="rp_links"> <a target="_blank" href="goods_view.jsp?goods_id=1">查看详情</a>  
          </span> 
          </div>
       </li>--------------------------------------------- -->

  </ul>
  <span id="rp_shuffle" class="rp_shuffle"> </span> </div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
			$(function() {
				/**
				* the list of posts
				*/
				var $list 		= $('#rp_list ul');
				/**
				* number of related posts
				*/
				var elems_cnt 		= $list.children().length;
				
				/**
				* show the first set of posts.
				* 200 is the initial left margin for the list elements
				*/
				load(200);
				
				function load(initial){
					$list.find('li').hide().andSelf().find('div').css('margin-left',-initial+'px');
					var loaded	= 0;
					//show 5 random posts from all the ones in the list. 
					//Make sure not to repeat
					while(loaded < 5){
						var r 		= Math.floor(Math.random()*elems_cnt);
						var $elem	= $list.find('li:nth-child('+ (r+1) +')');
						if($elem.is(':visible'))
							continue;
						else
							$elem.show();
						++loaded;
					}
					//animate them
					var d = 200;
					$list.find('li:visible div').each(function(){
						$(this).stop().animate({
							'marginLeft':'-50px'
						},d += 100);
					});
				}
					
				/**
				* hovering over the list elements makes them slide out
				*/	
				$list.find('li:visible').live('mouseenter',function () {
					$(this).find('div').stop().animate({
						'marginLeft':'-220px'
					},200);
				}).live('mouseleave',function () {
					$(this).find('div').stop().animate({
						'marginLeft':'-50px'
					},200);
				});
				
				/**
				* when clicking the shuffle button,
				* show 5 random posts
				*/
				$('#rp_shuffle').unbind('click')
								.bind('click',shuffle)
								.stop()
								.animate({'margin-left':'-18px'},700);
								
				function shuffle(){
					$list.find('li:visible div').stop().animate({
						'marginLeft':'60px'
					},200,function(){
						load(-60);
					});
				}
            });
		</script>
