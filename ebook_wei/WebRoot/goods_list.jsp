<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*,com.wei.util.*" errorPage="" %>
<%
DButil db=new DButil();
		String flag=request.getParameter("flag");
		String s_pageNow=(String)request.getParameter("pageNow");
		int pageNow=1;
		int pageSize=10;
		if(s_pageNow!=null){
		pageNow=Integer.parseInt(s_pageNow);
		}
		
		String sql="";
		if(flag=="" || flag==null){
		sql="select * from ebook_goods order by dbms_random.random";
		
		}else if(flag.equals("1")){
		//如果是按一类别查
		String type1_id=request.getParameter("type1_id");
		sql="select * from ebook_goods where type1_id='"+type1_id+"' order by dbms_random.random";
		}else if(flag.equals("2")){
		//如果是按2类别查
		String type2_id=request.getParameter("type2_id");
		sql="select * from ebook_goods where type2_id='"+type2_id+"' order by dbms_random.random";
		
		}else if(flag.equals("3")){
		//按人气
		sql="select * from ebook_goods order by read_count desc ";
		
		}else if(flag.equals("4")){
		//按销量
		sql="select * from ebook_goods order by buy_count desc";
		}else if(flag.equals("5")){
		//价格
		sql="select * from ebook_goods order by sale_price asc";
		}else if(flag.equals("6")){
		//价格
		sql="select * from ebook_goods where tuijian='1' or tuijian='2' or tuijian='3' ";
		}
		
		
		
		
		
		
		
		PageBean pb=(PageBean)db.getPage(sql,pageSize,pageNow);
		List<Map<String, Object>> list=pb.getResult();



 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/list.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
</head>
<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->
<div class="webbody">
<!--分类-->
<div class="listfenlei">	
    	  <%
      TypeBeanBo tbb=new TypeBeanBo();
      List<Type1Bean> type1=tbb.getType1();
      for(int i=0;i<type1.size();i++){
      %>
       <!--一大类-->
        	<div class="fenlei">
            	<div class="fenlei1">
            	  <a href="goods_list.jsp?flag=1&type1_id=<%=type1.get(i).getType1_id() %>"><font color="red"><%=type1.get(i).getType1() %>：</font></a>
                </div>
            	<div class="fenlei2">
            	 <% 
         List<Type2Bean> type2= tbb.getType2ByType1(type1.get(i).getType1_id());
         for(int j=0;j<type2.size();j++){
         	%>
         	  <a href="goods_list.jsp?flag=2&type2_id=<%=type2.get(j).getType2_id() %>"><%=type2.get(j).getType2() %></a>
         	<%
         }
           %>
           		 
                 </div>
            </div>
         <!--一大类-->
         
         
      
      <%
      }
      %>
       
          
     
       

</div>
<!--分类-->


  <!--顶部-->
  <div class="list_top"> 
  	<span>排序：</span><div class="paixubtn"><a href="goods_list.jsp?flag=3">按人气</a></div><div class="paixubtn"><a href="goods_list.jsp?flag=4">按销量</a></div><div class="paixubtn"><a href="goods_list.jsp?flag=5">按价格</a></div>
  
  </div>
  <!--顶部-->
  <!--中部-->
  <div class="list_content">
  <!--10本一页-->
  
  <%
					for(int i=0;i<list.size();i++){
						Map<String,Object> goods=list.get(i);
  %>
  <!--一本书-->
    <div class="list_book">
      <a target="_blank" href="goods_view.jsp?goods_id=<%=goods.get("GOODS_ID") %>" title="<%=goods.get("GOODS_NAME") %>"><img src="images/bookimg/<%=goods.get("IMAGE_FILE") %>" /></a>
      <div class="list_name"><a target="_blank" href="goods_view.jsp?goods_id=<%=goods.get("GOODS_ID") %>" title="<%=goods.get("GOODS_NAME") %>"><%=goods.get("GOODS_NAME") %></a></div>
      <div class="list_price">¥<%=goods.get("SALE_PRICE") %></div>
    </div>
 <!--一本书-->

  <%									
					}
  %>
  
   
  
 
  </div>
  <!--中部-->
  <!--底部-->
  <div class="list_bottom">
  
  
    <div class="badoo">
    
	    
	    <%
    	if(pb.getPagenow()!=1){
    	%>
    	<a href="goods_list.jsp?pageNow=<%=(pb.getPagenow()-1) %>"><  Prev </a>
    	<%
    	}else{
    	%>
    	<span class="disabled"> <  Prev</span>
    	<%
    	}
    	 %>
		    
		    
		     <%
	   for(int i=1;i<=pb.getPages();i++){
	   		if(i==pb.getPagenow()){
	   		%>
	   		 <span class="current"><%=i %></span>
	   		<%
	   		}else{
	   %>
	     <a href="goods_list.jsp?pageNow=<%=i %>"><%=i %></a>
	   <%
	   		}
	   } 
	   %>			
		    
		    
		      <%
    	if(pb.getPagenow()<pb.getPages()){
    	%>
    	<a href="goods_list.jsp?pageNow=<%=(pb.getPagenow()+1) %>">Next  ></a>
    	<%
    	}else{
    	%>
    	<span class="disabled">Next  ></span>
    	<%
    	}
    	 %>
		    
     </div>
     
     
  </div>
  <!--底部-->
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