package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.util.DButil;

public class CheckUserIdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CheckUserIdServlet() {
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

		//ajax�ڸ��ͻ���������Ӧʱ����Ҫ����������
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("id");
		
		StringBuffer sql = new StringBuffer();
		sql.append("select * from EBOOK_USERS where USER_ID=?");
		
		Object[] obj = new Object[]{
				userId
		};
		DButil db = new DButil();
		List<Map<String,Object>> list = db.queryWithParam(sql.toString(), obj);
		
		
		PrintWriter out = response.getWriter();
		if(null!=list &&list.size()>0){
			out.print("���û����Ѵ���");
		}else{
			out.print("1");
		}
		out.flush();
		out.close();
		
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
