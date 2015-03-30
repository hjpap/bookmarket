<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,com.wei.model.*" errorPage="" %>
<%
AdminBean admin=(AdminBean)request.getSession().getAttribute("admin");
System.out.print("admin---"+admin);
if(admin==null){
//System.out.print("ture");
response.sendRedirect("login.jsp");
}else{
%>
		<div class="logged">
			<p>你好,<a href="#" title=""><%=admin.getAdmin_id() %></a>!</p>
			<p><a href="#">账户</a> | <a href="AdminLogoutServlet" >退出</a></p>
			
		</div>

<%
}
 %>
