package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.OrderInfo;

public class AlterOrderStatus extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AlterOrderStatus() {
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
		
		String flag=request.getParameter("flag");
		
		String order_id=request.getParameter("order_id");
	
		
		OrderInfo oif=new OrderInfo();
		
		if(flag.equals("1")){
			//付款 变2
			if(oif.alterStatus(order_id, "2")==1){
				out.print("<script type='text/javascript'>location='show_order.jsp?status=1'</script>");	
			}else{
				out.print("<script type='text/javascript'>alert('付款错误');location='show_order.jsp?status=1'</script>");	
			}
			
		}else if(flag.equals("2")){
			//发货 变3
			if(oif.alterStatus(order_id, "3")==1){
				out.print("<script type='text/javascript'>location='admin/order_list.jsp?status=2'</script>");	
			}else{
				out.print("<script type='text/javascript'>alert('发货错误');location='admin/order_list.jsp?status=2'</script>");	
			}
			
		}else if(flag.equals("3")){
			//收货 变4
			if(oif.alterStatus(order_id, "4")==1){
				out.print("<script type='text/javascript'>location='show_order.jsp?status=4'</script>");	
			}else{
				out.print("<script type='text/javascript'>alert('确认错误');location='show_order.jsp?status=3'</script>");	
			}
		}else if(flag.equals("4")){
			//取消订单
			oif.delOrder(order_id);
			response.sendRedirect("admin/order_list.jsp?status=1");
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
