<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*" errorPage="" %>
<%
         String goodsid=request.getParameter("goods_id");
         PingjiaBo pj=new PingjiaBo();
        
         List<PingjiaBean> pjs=pj.getGoodsPJ(goodsid);
       
         
         GoodsBean gb;
         if(goodsid=="" || goodsid==null || goodsid.equals("null")){
        	gb=new GoodsBean();
         }else{
         	GoodsBeanBo gbb=new GoodsBeanBo();
         	gb=gbb.getGoodsById(goodsid);
         	gbb.addReadCount(gb.getGoods_id());
         }

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
</head>
<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->
<div class="daohang"> <a href="/index.jsp">首页</a> &gt; <a href="#">分类</a> &gt; <a href="#"><%=gb.getType2_id()%></a> &gt; <%=gb.getGoods_name()%> </div>
<div class="webbody">
  <!--左边部分------------------------------->
  <jsp:include page="include/left.jsp"/>
  <!--左边部分------------------------------->
  <div class="v-right">
    <!--上部分-->
    <div class="booktop">
      <!--显示book图片-->
      <div class="bookimg"><a href="#"><a href="#"><img src="images/bookimg/<%=gb.getImage_file() %>" /></a></div>
      <!--book相关信息-->
      <div class="bookname">
        <table width="100%">
          <tr>
            <td colspan="4"><div class="name">
                <h3><%=gb.getGoods_name()%></h3>
              </div></td>
          </tr>
          <tr>
            <td width="20%">价　　格：</td>
            <td colspan="2" class="price"><%=gb.getSale_price() %></td>
            <td width="32%"></td>
          </tr>
          <tr>
            <td>出 版 社 ：</td>
            <td colspan="2"><%=gb.getProducer() %></td>
            <td></td>
          </tr>
          <tr>
            <td>出版日期：</td>
            <td colspan="2"><%=gb.getPub_date() %></td>
            <td></td>
          </tr>
          <tr>
            <td>ISBN&nbsp;&nbsp;&nbsp;号：</td>
            <td colspan="2"><%=gb.getSn_number() %></td>
            <td></td>
          </tr>
          <tr>
            <td>购买次数：</td>
            <td width="32%"><%=gb.getBuy_count() %></td>
            <td width="20%">浏览次数：</td>
            <td><%=gb.getRead_count() %></td>
          </tr>
        </table>
        <div class="buybtn">
          <div class="ttable">
            <table  width="100%">
              <tr>
                <td width="22%" height="25">购买数量：</td>
                <td width="22%"><input id="count" type="text" name="count" value="1" size="6"/></td>
                <td>(库存<%=gb.getGoods_count() %>件)</td>
              </tr>
              <tr>
                <td height="20%">可得积分：</td>
                <td height="20%"><%=gb.getJifen() %></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="25%" colspan="2"><a class="buy-btn" href="#" onclick="addCart()"></a></td>
                <td align="right" width="56%"><a class="btn-fav" href="">收藏此商品</a></td>
              </tr>
              <script type="text/javascript">
                              	 function addCart(){
                              	 	var buy_count=document.getElementById("count").value;
                              	 	var goods_count=<%=gb.getGoods_count()%>;
                              	 	if(buy_count<goods_count){
                              	 	window.location='CartServlet?flag=add&goods_id='+<%=gb.getGoods_id()%>+'&buy_count='+buy_count;
                              	 	}else{
                              	 	alert("购买数量大于商品数量，请与卖家联系");
                              	 	}
                              	 }
                              
                              </script>
            </table>
          </div>
          <div class="btn"> </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
    <!--下部分-->
    <div class="bookbottom">
      <!--简介和评论-->
      <script type="text/javascript">
				<!--切换简介和评论的js-->
					function changestate(a){
						
						var main0=document.getElementById("main0");
						var main1=document.getElementById("main1");
						var menu0=document.getElementById("menu0");
						var menu1=document.getElementById("menu1");
						if(a==0){
							
							menu0.className="button02"
							menu1.className="button01";
							
							main0.style.display="";
							main1.style.textAlign="left";
							main1.style.display="none";
							
							}else{
								
								menu0.className="button01";
								menu1.className="button02";
							
								main0.style.textAlign="left";
								main0.style.display="none";
								main1.style.display="";
								
								}
						
						}
				</script>
      <div class="info-title">
        <ul>
          <li id="menu0" class="button02" onclick="changestate(0)">简介</li>
          <li id="menu1" class="button01" onclick="changestate(1)">评价</li>
        </ul>
      </div>
      <div id="main0" style="">
        <!--显示详细内容-->
        <div class="message_menu"> <%=gb.getContent() %> </div>
      </div>
      <div id="main1" style="text-align: left;display: none;">
        <!-- display: none;为隐藏-->
        <!--显示详细内容-->
        <div class="message_menu">
          <div class="ptitle">评价详情</div>
          <div class="divclear"></div>
          <div id="goods_comment_list" class="prcYe_plInfo">
            <table bgcolor="#FCE8E8" width="200" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%">好评：</td>
                <td width="23%"><%=pj.getCountLevel(goodsid,"好评") %></td>
                <td width="6%">中评：</td>
                <td width="23%"><%=pj.getCountLevel(goodsid,"中评") %></td>
                <td width="6%">差评：</td>
                <td width="36%"><%=pj.getCountLevel(goodsid,"差评") %></td>
              </tr>
            </table>
          </div>
          <div class="divclear"></div>
          <%
          UserBeanBo ubb=new UserBeanBo();
          for(int i=0;i<pjs.size();i++){
          %>
           <!--一个评论-->
          <div id="goods_comment_list" class="prcYe_plInfo">
            <table width="200" border="0" cellspacing="0" cellpadding="0" style="border-top:#AC090D solid 1px;border-bottom:#AC090D solid 1px; border-left:#AC090D solid 1px; border-right:#AC090D solid 1px;">
              <tr>
                <td width="7%">买家：</td>
                <td width="22%"><%=ubb.getUser(pjs.get(i).getUser_id()).getUser_id() %></td>
                <td width="6%">评级：</td>
                <td width="23%"><%=pjs.get(i).getPj_level() %></td>
                <td width="6%">时间：</td>
                <td width="36%"><%=pjs.get(i).getPj_date() %></td>
              </tr>
              <tr>
                <td colspan="6">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="6"><div class="pjcontent"><%=pjs.get(i).getPj_content() %></div></td>
              </tr>
            </table>
          </div>
          <div class="divclear"></div>
          <div class="divclear"></div>
          <!--一个评论-->
          <%
          }
           %>
           
         
          <div class="divclear"></div>
          <div class="divclear"></div>
         
        </div>
      </div>
    </div>
  </div>
</div>
<!--right--------------------------------->
<jsp:include page="include/rightad.jsp"/>
<!--right--end------------------------------->
<!--buttom_menu--------------------------------->
<jsp:include page="include/bottom_menu.jsp"/>
<!--buttom_menu--end------------------------------->
<!--footer--------------------------------->
<jsp:include page="include/footer.jsp"/>
<!--footer---end------------------------------>
</body>
</html>