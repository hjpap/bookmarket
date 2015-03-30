package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.MyCartBo;

public class CartServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CartServlet() {
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
		
		
		MyCartBo myCart=(MyCartBo)request.getSession().getAttribute("myCart");
		
		if(myCart==null){
			myCart=new MyCartBo();
			System.out.println("cartservlet  session没有mycart");
		}else{
			System.out.println("cartservlet  session有mycart");	
		
		}
		//取到添加的商品id和购买数量
		
		
		String flag=request.getParameter("flag");
		
		if("add".equals(flag)){
			String goods_id=request.getParameter("goods_id");
			Integer buy_count=Integer.parseInt(request.getParameter("buy_count"));
			myCart.addGoods(goods_id, buy_count);
			
			request.getSession().setAttribute("myCart",myCart);
			
			out.print("<script type='text/javascript'>alert('添加成功');history.back();</script>");
			
		}else if("del".equals(flag)){
			String goods_id=request.getParameter("goods_id");
			myCart.delGoods(goods_id);
			request.getSession().setAttribute("myCart", myCart);
			out.print("<script type='text/javascript'>location='cart.jsp';</script>");
		}else if("delall".equals(flag)){
			myCart.delAllGoods();
			request.getSession().setAttribute("myCart", myCart);
			out.print("<script type='text/javascript'>location='cart.jsp';</script>");
		}else if("alter".equals(flag)){
			String goods_id=request.getParameter("goods_id");
			Integer buy_count=Integer.parseInt(request.getParameter("buy_count"));
			myCart.addGoods(goods_id, buy_count);
			
			request.getSession().setAttribute("myCart",myCart);
			
			out.print("<script type='text/javascript'>location='cart.jsp';</script>");
		}else{
			
			out.print("<script type='text/javascript'>alert('操作失败！');history.back();</script>");
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
