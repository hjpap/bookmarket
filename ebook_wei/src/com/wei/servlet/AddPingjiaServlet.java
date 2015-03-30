package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.PingjiaBean;
import com.wei.model.PingjiaBo;
import com.wei.util.DButil;

public class AddPingjiaServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddPingjiaServlet() {
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
		
		String user_id=request.getParameter("user_id");
		String goods_id=request.getParameter("goods_id");
		String pj_level=request.getParameter("pj_level");
		String pj_content=request.getParameter("pj_content");
		String order_id=request.getParameter("order_id");
		
		PingjiaBean pjb=new PingjiaBean();
		pjb.setGoods_id(goods_id);
		pjb.setPj_content(pj_content);
		pjb.setPj_level(pj_level);
		pjb.setUser_id(user_id);
		
		PingjiaBo action=new PingjiaBo();
		if(action.addPingjia(pjb)==1){
			String sql="update EBOOK_ORDER_DETAIL set PINGJIA='2' where ORDER_ID='"+order_id+"' and GOODS_ID='"+goods_id+"'";
			DButil db=new DButil();
			db.update(sql);
			//添加成功
			out.print("<script type='text/javascript'>window.alert('添加成功');location='pingjia_list.jsp'</script>");
			
		}else{
			//添加失败
			out.print("<script type='text/javascript'>window.alert('添加失败');history.back();</script>");
			
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
