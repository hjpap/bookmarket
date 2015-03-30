package com.wei.model;

import com.wei.util.DButil;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;


public class TypeBeanBo {

	
	DButil db=new DButil();
	
	/*
	 * 添加一级分类
	 * */
	public int addType1(String type1_name){
		String sql="insert into EBOOK_TYPE1 values(EBOOK_TYPE1_SEQ.nextval,'"+type1_name+"')";
		int f=db.update(sql);
		return f;	
	}
	/*
	 * 添加二级分类
	 * */
	public int addType2(String type2_name,String type1_id){
		String sql="insert into EBOOK_TYPE2 values(EBOOK_TYPE2_SEQ.nextval,'"+type2_name+"','"+type1_id+"')";
		int f=db.update(sql);
		return f;	
	}
	
	/*
	 * 查找分类1所有分类信息
	 * */
	public List<Type1Bean> getType1(){
		String sql="select * from EBOOK_TYPE1";
		List<Map<String,Object>> a=db.queryToList(sql);
		List<Type1Bean> aa=new LinkedList<Type1Bean>();
		for(int i=0;i<a.size();i++){
			Type1Bean t1=new Type1Bean();
			t1.setType1((String)a.get(i).get("TYPE1"));
			t1.setType1_id(a.get(i).get("TYPE1_ID").toString());
			aa.add(t1);
		}
		return aa;
	}
	
	/*
	 * 查找分类2所有分类信息
	 * */
	public List<Type2Bean> getType2(){
		String sql="select * from EBOOK_TYPE2";
		List<Map<String,Object>> a=db.queryToList(sql);
		List<Type2Bean> aa=new LinkedList<Type2Bean>();
		for(int i=0;i<a.size();i++){
			Type2Bean t2=new Type2Bean();
			t2.setType2((String)a.get(i).get("TYPE2"));
			t2.setType2_id(a.get(i).get("TYPE2_ID").toString());
			t2.setType1_id(a.get(i).get("TYPE1_ID").toString());
			aa.add(t2);
		}
		return aa;
	}
	
	/*
	 * 查找分类2指定分类信息
	 * */
	public List<Type2Bean> getType2ByType1(String type1_id){
		String sql="select * from EBOOK_TYPE2 where TYPE1_ID='"+type1_id+"'";
		List<Map<String,Object>> a=db.queryToList(sql);
		List<Type2Bean> aa=new LinkedList<Type2Bean>();
		for(int i=0;i<a.size();i++){
			Type2Bean t2=new Type2Bean();
			t2.setType2((String)a.get(i).get("TYPE2"));
			t2.setType2_id(a.get(i).get("TYPE2_ID").toString());
			t2.setType1_id(a.get(i).get("TYPE1_ID").toString());
			aa.add(t2);
		}
		return aa;
	}
	
	
	
	/*
	 * 通过type1的编号获得名称
	 * */
	public String getType1Name(String id){
		String sql="select TYPE1 from EBOOK_TYPE1 where TYPE1_ID='"+id+"'";
		DButil db=new DButil();
		return (String)db.getOneRow(sql).get("TYPE1");	
	}
	
	/*
	 * 通过type2的编号获得名称
	 * */
	public String getType2Name(String id){
		String sql="select TYPE2 from EBOOK_TYPE2 where TYPE2_ID='"+id+"'";
		DButil db=new DButil();
		return (String)db.getOneRow(sql).get("TYPE2");	
	}
	
	
	
	
	
}
