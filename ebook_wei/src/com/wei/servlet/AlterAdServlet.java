package com.wei.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.wei.util.DButil;
import com.wei.util.DateTools;
import com.wei.util.Upload;

public class AlterAdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AlterAdServlet() {
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


		DiskFileItemFactory dff = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(dff);
		
		try {
			String path = request.getRealPath("images/ad");
			List<FileItem> list = sfu.parseRequest(request);
			//System.out.print("alterservlet----"+path);
			Upload up = new Upload();
			Map<String, String> ad = up.getMap(list, path);

			String sql="update EBOOK_AD set AD_TITLE='"+ad.get("ad_title")+"',AD_URL='"+ad.get("ad_url")+"',AD_IMAGE='"+ad.get("ad_image")+"' where AD_ID='"+ad.get("ad_id")+"'";
			

			DButil db = new DButil();
			if(db.update(sql)==1){
				out.print("<script type='text/javascript'>window.alert('修改成功');location='ad.jsp';</script>");
				
			}else{
				out.print("<script type='text/javascript'>window.alert('修改失败');location='ad.jsp';</script>");
				
			}			
		} catch (FileUploadException e) {
			e.printStackTrace();
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
