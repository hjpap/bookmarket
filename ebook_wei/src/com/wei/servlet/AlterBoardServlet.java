package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.BoardBean;
import com.wei.model.BoardBeanBo;

public class AlterBoardServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AlterBoardServlet() {
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
		
		int read_count=Integer.parseInt(request.getParameter("read_count"));
		String board_id=request.getParameter("board_id");
		String title=request.getParameter("title");
		String poster=request.getParameter("poster");
		String content=request.getParameter("editor1");
		
		BoardBean bb=new BoardBean();
		bb.setBoard_id(board_id);
		bb.setPoster(poster);
		bb.setContent(content);
		bb.setRead_count(read_count);
		bb.setTitle(title);
		
		BoardBeanBo bbb=new BoardBeanBo();
		
		if(bbb.alterBoard(bb)==1){
			out.print("<script type='text/javascript'>window.alert('修改成功');location='show_gonggao.jsp';</script>");
			
		}else{
			out.print("<script type='text/javascript'>window.alert('修改失败');location='alter_gonggao.jsp';</script>");
			
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
