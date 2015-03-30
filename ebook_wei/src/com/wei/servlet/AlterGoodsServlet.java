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

public class AlterGoodsServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AlterGoodsServlet() {
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
			String path = request.getRealPath("/images/bookimg");
			List<FileItem> list = sfu.parseRequest(request);

			Upload up = new Upload();
			Map<String, String> resultmap = up.getMap(list, path);
			
			String image=resultmap.get("image").toString();
			//System.out.println(resultmap.get("lf").toString());
			
			if(resultmap.get("lf")!=null && "null"!=resultmap.get("lf")){
				System.out.println("true-----------------------");
				System.out.println("1111111111"+resultmap.get("lf"));
				image=resultmap.get("lf").toString();
				
			}

			String sqlBook = "update ebook_goods set type1_id='"
					+ resultmap.get("type1").toString()
					+ "',type2_id='"
					+ resultmap.get("type2").toString()
					+ "',goods_name='"
					+ resultmap.get("goods_name").toString()
					+ "',producer='"
					+ resultmap.get("producer").toString()
					+ "',sn_number='"
					+ resultmap.get("sn_number").toString()
					+ "',cost_price='"
					+ resultmap.get("cost_price").toString()
					+ "',sale_price='"
					+ resultmap.get("sale_price").toString()
					+ "',pub_date='"
					+ resultmap.get("pub_date").toString()
					+ "',content='"
					+ resultmap.get("editor1").toString()
					+ "',add_date='"
					+ DateTools.getDateTime()
					+ "',goods_count='"
					+ resultmap.get("goods_count").toString()
					+ "',image_file='"
					+ image
					+ "',tuijian='"
					+ resultmap.get("tuijian").toString()
					 +"' where goods_id='"+resultmap.get("goods_id")+"'";
			System.out.println("修改book:"+sqlBook);

			
			DButil db = new DButil();
			if(db.update(sqlBook)==1){
				out.print("<script type='text/javascript'>window.alert('修改成功');location='admin/alter_goods.jsp?goods_id="+resultmap.get("goods_id")+"'</script>");
				
			}else{
				out.print("<script type='text/javascript'>window.alert('修改错误');location='admin/alter_goods.jsp?goods_id="+resultmap.get("goods_id")+"'</script>");
				
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
