package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.MyCartBo;
import com.wei.model.OrderBo;
import com.wei.model.UserBean;

public class CreateOrderServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CreateOrderServlet() {
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
		
		UserBean user=(UserBean)request.getSession().getAttribute("userinfo");
		MyCartBo cart=(MyCartBo) request.getSession().getAttribute("myCart");
		String addresstype=request.getParameter("addresstype");
		
		String user_name=request.getParameter("txtName");
		String tel=request.getParameter("txtMoblie");
		String email=request.getParameter("txtEmail");
		String address="";
		//oldaddress为用户地址
		//newaddress为新地址
		if(addresstype.equals("oldaddress")){
			address=user_name+"   "+tel+"   "+" "+request.getParameter("oldaddr");
			
		}else if(addresstype.equals("newaddress")){
			
			address=user_name+"   "+tel+"   "+" "+request.getParameter("s_province")+"   "+request.getParameter("s_province")+"   "+request.getParameter("s_city")+"   "+request.getParameter("s_county")+"   "+request.getParameter("s_xiangxi");
			
		}
		
		
		OrderBo oo=new OrderBo();
		String order_id=oo.createOrder(cart,user.getUser_id(), address);
		if(!order_id.equals("false")){
			double price=cart.getTotalprice();
			
			
			//清空购物车
			
			cart.delAllGoods();
			request.getSession().setAttribute("myCart", cart);
			
			
			out.print("<script type='text/javascript'>location='order_ok.jsp?order_id="+order_id+"&price="+price+"'</script>");
			
		}else{
			out.print("<script type='text/javascript'>alert('订单添加错误');location='order.jsp'</script>");
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
