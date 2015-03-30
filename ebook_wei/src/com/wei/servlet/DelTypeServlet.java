package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.util.DButil;

public class DelTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DelTypeServlet() {
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
		
		DButil db=new DButil();
		String flag=request.getParameter("flag");
		
		if(flag.equals("1")){
			//É¾³ýtype1
			String type1_id=request.getParameter("type1_id");
			String sql="delete from EBOOK_TYPE1 where TYPE1_ID='"+type1_id+"'";
			if(db.update(sql)==1){
				String sql2="delete from EBOOK_TYPE2 where TYPE1_ID='"+type1_id+"'";
				//É¾³ý³É¹¦
				out.print("<script type='text/javascript'>window.alert('É¾³ý³É¹¦');location='add_type1.jsp';</script>");
			}else{
				//É¾³ýÊ§°Ü
				out.print("<script type='text/javascript'>window.alert('É¾³ýÊ§°Ü');location='add_type1.jsp';</script>");
			}
			
		}else if(flag.equals("2")){
			//É¾³ýtype2
			String type2_id=request.getParameter("type2_id");
			String sql="delete from EBOOK_TYPE2 where TYPE2_ID='"+type2_id+"'";
			if(db.update(sql)==1){
				//É¾³ý³É¹¦
				out.print("<script type='text/javascript'>window.alert('É¾³ý³É¹¦');location='add_type2.jsp';</script>");
			}else{
				//É¾³ýÊ§°Ü
				out.print("<script type='text/javascript'>window.alert('É¾³ýÊ§°Ü');location='add_type2.jsp';</script>");
			}
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
