package com.wei.model;

public class BoardBean {
	private String board_id;
	private String title="没有该公告";
	private String content="没有该公告";
	private String post_date;
	private String poster;
	private int read_count;
	public String getBoard_id() {
		return board_id;
	}
	public void setBoard_id(String boardId) {
		board_id = boardId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String postDate) {
		post_date = postDate;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int readCount) {
		read_count = readCount;
	}
	
	
}
