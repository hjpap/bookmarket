<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>
<%
String id=request.getParameter("id");

BoardBean bb;
         if(id=="" || id==null || id.equals("null")){
        	bb=new BoardBean();
         }else{
         	BoardBeanBo bbb=new BoardBeanBo();
         	bb=bbb.getBoardById(id);
         	bbb.addReadCount(bb.getBoard_id());
         	
         }
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>簿客网</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/gonggao.css" type="text/css" media="screen"/>
<script type="text/javascript" src="js/jquery-1.3.2.buttommenu.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.menu.js"></script>
</head>

<body>
<!--header--------------------------------->
<jsp:include page="include/header.jsp"/>
<!--header--end------------------------------->


	<div class="helpin">
    	<div class="hel-titel">商城公告</div>
        
        <div class="hel-left">
        	<ul class="hel-list">
            	<li>
					
					作者：<%=bb.getPoster() %>
				</li>
                <li>
					
					日期：<%=bb.getPost_date()%>
				</li>
                <li>
					
					浏览次数：<%=bb.getRead_count() %>
				</li>
            </ul>
        </div>
        
        <div class="hel-right">
				<table class="0" width="100%" cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
                        	<td>
                            	<div class="w-titel"><%=bb.getTitle() %> </div>
                            	<%=bb.getContent() %>
                            </td>
                        </tr>
                     </tbody>
                </table>        
        
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