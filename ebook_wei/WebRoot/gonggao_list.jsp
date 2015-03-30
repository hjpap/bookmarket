<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*,java.util.*,com.wei.util.*" errorPage="" %>
<%
DButil db=new DButil();
		String s_pageNow=(String)request.getParameter("pageNow");
		int pageNow=1;
		int pageSize=10;
		
		if(s_pageNow!=null){
		pageNow=Integer.parseInt(s_pageNow);
		}
		String sql="select * from EBOOK_BOARD order by board_id desc";
		PageBean pb=(PageBean)db.getPage(sql,pageSize,pageNow);
		List<Map<String, Object>> list=pb.getResult();



 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/gonggao.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/list.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
</head>

<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->




<div class="helpin">
	<div class="hel-titel">簿客公告</div>
    
    <div class="hel-right">
    	<div class="gw-titel">公告列表</div>
        <ul class="gwys">
        <%
					for(int i=0;i<list.size();i++){
						Map<String,Object> gonggao=list.get(i);
  %>
        	<li>
				<a href="show_gonggao.jsp?id=<%=gonggao.get("BOARD_ID") %>" target="_blank"><h3><font color="red"><%=i+1%>:</font>&nbsp;&nbsp;&nbsp;&nbsp;<%=gonggao.get("TITLE") %></h3> </a>
			</li>
			
			<%									
					}
  %>
            
        </ul>
        
        
    </div>

</div>

<!--底部-->
  <div class="list_bottom">
  
  
    <div class="badoo">
    
	    
	    <%
    	if(pb.getPagenow()>1){
    	%>
    	<a href="gonggao_list.jsp?pageNow=<%=(pb.getPagenow()-1) %>"><  Prev </a>
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
	     <a href="gonggao_list.jsp?pageNow=<%=i %>"><%=i %></a>
	   <%
	   		}
	   } 
	   %>			
		    
		    
		      <%
    	if(pb.getPagenow()<pb.getPages()){
    	%>
    	<a href="gonggao_list.jsp?pageNow=<%=(pb.getPagenow()+1) %>">Next  ></a>
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