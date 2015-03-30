package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.*;


public class IndexServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public IndexServlet() {
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

		/*
		 * 得到展示的书籍
		 * */
	
		List<GoodsBean> tuijian1=new LinkedList<GoodsBean>();//好书推荐  1
		List<GoodsBean> tuijian2=new LinkedList<GoodsBean>();//新书上架  2
		
		
		GoodsBeanBo gbb=new GoodsBeanBo();
		tuijian1=gbb.getTuijianGoods("1");
		tuijian2=gbb.getTuijianGoods("2");
		
		
		
		if(tuijian1.isEmpty() || tuijian1.size()<5){
			for(int i=0;i<5;i++){
				GoodsBean gb=new GoodsBean();
				gb.setGoods_name("暂无该商品");
				tuijian1.add(gb);
			}
		}
		if(tuijian2.isEmpty() || tuijian2.size()<5){
			for(int i=0;i<5;i++){
				GoodsBean gb=new GoodsBean();
				gb.setGoods_name("暂无该商品");
				tuijian2.add(gb);
			}
		}
		
	/*	List<GoodsBean> tuijian3=new LinkedList<GoodsBean>();//侧栏广告  3
		tuijian3=gbb.getTuijianGoods("3");
		if(tuijian3.isEmpty()){
			for(int i=0;i<6;i++){
				GoodsBean gb=new GoodsBean();
				gb.setGoods_name("暂无该商品");
				tuijian3.add(gb);
			}
		}*/
		
		request.setAttribute("tuijian1", tuijian1);
		request.setAttribute("tuijian2", tuijian2);
		//request.getSession().setAttribute("tuijian3", tuijian3);
		
		//System.out.println("tuijian1++++"+tuijian1.get(0).getGoods_id()+" "+tuijian1.get(0).getGoods_name()+" "+tuijian1.get(0).getSale_price()+"  "+tuijian1.get(0).getImage_file());
		//System.out.println("tuijian2++++"+tuijian2);
		
		
		
		/*
		 * 得到广告
		 * */
		List<AdBean> ad1=new LinkedList<AdBean>();//焦点图广告  1
		List<AdBean> ad2=new LinkedList<AdBean>();//左侧栏广告  2
		
		AdBeanBo abb=new AdBeanBo();
		ad1=abb.getAd("1");
		ad2=abb.getAd("2");
		
		
		if(ad1.isEmpty()){
			for(int i=0;i<5;i++){
				AdBean ad=new AdBean();
				ad1.add(ad);
			}
		}else if(ad1.size()<5){
			for(int i=0;i<(5-ad1.size());i++){
				AdBean ad=new AdBean();
				ad1.add(ad);
			}
			
		}
		
		if(ad2.isEmpty()){
			for(int i=0;i<3;i++){
				AdBean ad=new AdBean();
				ad2.add(ad);
			}
		}
		request.setAttribute("ad1", ad1);
		request.setAttribute("ad2", ad2);
		
		request.getRequestDispatcher("main.jsp").forward(request, response);
		
		
		
		
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
