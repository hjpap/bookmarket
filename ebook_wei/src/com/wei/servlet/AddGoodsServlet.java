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

public class AddGoodsServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddGoodsServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
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

			String sqlBook = "insert into ebook_goods values(ebook_goodsid_seq.nextval,'"
					+ resultmap.get("type1").toString()
					+ "','"
					+ resultmap.get("type2").toString()
					+ "','"
					+ resultmap.get("goods_name").toString()
					+ "','"
					+ resultmap.get("producer").toString()
					+ "','"
					+ resultmap.get("sn_number").toString()
					+ "','"
					+ resultmap.get("cost_price").toString()
					+ "','"
					+ resultmap.get("sale_price").toString()
					+ "','"
					+ resultmap.get("pub_date").toString()
					+ "','"
					+ resultmap.get("editor1").toString()
					+ "','"
					+ DateTools.getDateTime()
					+ "','"
					+ resultmap.get("goods_count").toString()
					+ "','0','0','"
					+ resultmap.get("lf").toString()
					+ "','"
					+ resultmap.get("tuijian").toString()
					+ "','"
					+ resultmap.get("jifen").toString() + "')";
			System.out.println("增加book:"+sqlBook);

			DButil db = new DButil();
			if(db.update(sqlBook)==1){
				out.print("<script type='text/javascript'>window.alert('添加成功');location='admin/goods_list.jsp'</script>");
			}else{
				out.print("<script type='text/javascript'>window.alert('添加失败');location='admin/add_goods.jsp'</script>");
			}			
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
