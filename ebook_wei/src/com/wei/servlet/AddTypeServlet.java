package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wei.model.TypeBeanBo;

public class AddTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddTypeServlet() {
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
		
		String flag=request.getParameter("flag");
		TypeBeanBo tbb=new TypeBeanBo();
		
		if(flag.equals("1")){
			//���һ������
			String type1_name=request.getParameter("type1_name");
			if(tbb.addType1(type1_name)==1){
				//��ӳɹ�
				out.print("<script type='text/javascript'>window.alert('��ӳɹ�');location='add_type1.jsp';</script>");
			}else{
				out.print("<script type='text/javascript'>window.alert('���ʧ��');location='add_type1.jsp';</script>");
			}
			
		}else if(flag.equals("2")){
			//��Ӷ�������
			String type2_name=request.getParameter("type2_name");
			String type1_id=request.getParameter("type1_id");
			if(tbb.addType2(type2_name, type1_id)==1){
				//��ӳɹ�
				out.print("<script type='text/javascript'>window.alert('��ӳɹ�');location='add_type2.jsp';</script>");
			}else{
				//���ʧ��
				out.print("<script type='text/javascript'>window.alert('���ʧ��');location='add_type2.jsp';</script>");
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
