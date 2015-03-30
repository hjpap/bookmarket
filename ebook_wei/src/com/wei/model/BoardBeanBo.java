package com.wei.model;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.wei.util.DButil;
import com.wei.util.DateTools;

public class BoardBeanBo {
	DButil db=new DButil();
	
	
	//添加公告
	public int addBoard(BoardBean bb){
		String sql="insert into EBOOK_BOARD(BOARD_ID,TITLE,CONTENT,POST_DATE,POSTER,READ_COUNT) values" +
				"(EBOOK_BOARD_SEQ.nextval,'"+bb.getTitle()+"','"+bb.getContent()+"',to_date('"+DateTools.getDateTime()+"','yyyy-mm-dd'),'"+bb.getPoster()+"','0')";
		//System.out.println(sql);
		int f=db.update(sql);
		return f;
	}
	
	//修改公告
	public int alterBoard(BoardBean bb){
		String sql="update EBOOK_BOARD set TITLE='"+bb.getTitle()+"',CONTENT='"+bb.getContent()+"',POSTER='"+bb.getPoster()+"',POST_DATE=to_date('"+DateTools.getDateTime()+"','yyyy-mm-dd'),READ_COUNT='"+bb.getRead_count()+"' where BOARD_ID='"+bb.getBoard_id()+"'";
		int f=db.update(sql);
		return f;
	}
	//删除公告
	public int delBoard(String board_id){
		String sql="delete from EBOOK_BOARD where BOARD_ID='"+board_id+"'";
		int f=db.update(sql);
		return f;
		
	}
	
	
	//查询公告
	public BoardBean getBoardById(String board_id){
		String sql="select * from EBOOK_BOARD where BOARD_ID='"+board_id+"'";
		
		Map b=(Map)db.getOneRow(sql);
		
		BoardBean bb=new BoardBean();
		bb.setBoard_id(board_id);
		bb.setContent((String)b.get("CONTENT"));
		bb.setPost_date(b.get("POST_DATE").toString());
		bb.setPoster((String)b.get("POSTER"));
		bb.setRead_count(Integer.parseInt(b.get("READ_COUNT").toString()));
		bb.setTitle((String)b.get("TITLE"));
		
		return bb;
		
	}
	//添加阅读次数
	public void addReadCount(String boardid){
		if(boardid!=null || boardid!="" || boardid!="null"){
			String sql1="select READ_COUNT from EBOOK_BOARD where BOARD_ID='"+boardid+"'";
			
			String s=(String)db.getOneRow(sql1).get("READ_COUNT");
			int c=Integer.parseInt(s)+1;
			System.out.println("goodsBeanBo------readcount----"+c);
			String sql2="update EBOOK_BOARD set READ_COUNT='"+c+"' where BOARD_ID='"+boardid+"'";
			db.update(sql2);
		}
		
	}
	//底部工具条查看公告
	public List<BoardBean> get10Board(){
		String sql="select * from EBOOK_BOARD order by POST_DATE desc";
		List<Map<String, Object>> list=db.queryToList(sql);
		List<BoardBean> board=new LinkedList<BoardBean>();
		for(int i=0;i<list.size()&&i<10;i++){
			BoardBean bb=new BoardBean();
			bb.setBoard_id(list.get(i).get("BOARD_ID").toString());
			bb.setContent(list.get(i).get("CONTENT").toString());
			bb.setPost_date(list.get(i).get("POST_DATE").toString());
			bb.setRead_count(Integer.parseInt(list.get(i).get("READ_COUNT").toString()));
			bb.setTitle(list.get(i).get("TITLE").toString());
			bb.setPoster(list.get(i).get("POSTER").toString());
			board.add(bb);
		}
		return board;
		
		
	}

}
