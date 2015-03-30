package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.UserBean;
import com.wei.model.UserBeanBo;

public class UpdateUserInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateUserInfoServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		UserBean user=new UserBean();
		String user_id=request.getParameter("user_id");
		user.setUser_id(user_id);
		String user_name=request.getParameter("user_name");
		user.setUser_name(user_name);
		String sex=request.getParameter("sex");
		user.setSex(sex);
		String address=request.getParameter("s_province")+"  "+request.getParameter("s_city")+"  "+request.getParameter("s_county")+"  "+request.getParameter("s_xiangxi");
		user.setAddress(address);
		String email=request.getParameter("email");
		user.setEmail(email);
		String tel=request.getParameter("tel");
		user.setTel(tel);
		
		UserBeanBo ubb=new UserBeanBo();
		if(ubb.updateUser(user)==1){
			//修改成功
			request.getSession().setAttribute("userinfo", ubb.getUser(user_id));
			out.print("<script type='text/javascript'>window.alert('修改成功');location='vibcenter.jsp'</script>");
		}else{
			//修改失败
			out.print("<script type='text/javascript'>window.alert('修改失败');location='vibcenter.jsp'</script>");
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
