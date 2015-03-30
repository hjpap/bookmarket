package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.UserBean;
import com.wei.model.UserBeanBo;

public class LoginServlert extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlert() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String username=request.getParameter("txtUsername");
		String pwd=request.getParameter("txtPassword");
		
		
		
		UserBeanBo ubb=new UserBeanBo();
		if(ubb.cheakUser(username, pwd)){
			//完成后跳转到前一页
			/*String url=request.getParameter("url");
			System.out.println(url);
			if(url.equals("null") || url==""){
				url="index.jsp";
			}*/
			
			System.out.println("loginservlet--用户名密码正确");
			
			UserBean ub=ubb.getUser(username);
			
			request.getSession().setAttribute("userinfo", ub);
			response.sendRedirect("index.jsp");
		}else{
			
			System.out.println("loginservlet--用户名密码错误");
			out.print("<script type='text/javascript'>window.alert('用户名或密码错误');location='login.jsp'</script>");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
