package com.wei.util;

import java.util.List;
import java.util.Map;
//分页信息
public class PageBean {

	//结果集
	private List<Map<String,Object>> result;
	//当前页
	private int pagenow;
	//总记录数
	private int rows;
	//分页单位
	private int pagesize;
	//总页数
	private int pages;
	//sql语句
	private String sql;
	public List<Map<String, Object>> getResult() {
		return result;
	}
	public void setResult(List<Map<String, Object>> result) {
		this.result = result;
	}
	public int getPagenow() {
		return pagenow;
	}
	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public String getSql() {
		return sql;
	}
	public void setSql(String sql) {
		this.sql = sql;
	}
	
}
