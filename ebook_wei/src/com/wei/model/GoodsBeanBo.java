package com.wei.model;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.wei.util.DButil;

public class GoodsBeanBo {

	
	
	/*
	 * 查询推荐商品
	 * */
	public List getTuijianGoods(String tuijian){
		String sql="select * from EBOOK_GOODS where TUIJIAN='"+tuijian+"' order by dbms_random.random";
		DButil db=new DButil();
		List<Map<String, Object>> list=db.queryToList(sql);
		List<GoodsBean> goodsTuijian=new LinkedList<GoodsBean>();
		for(int i=0;i<list.size();i++){
			GoodsBean gb=new GoodsBean();
			
			gb.setAdd_date((String)list.get(i).get("ADD_DATE"));
			gb.setBuy_count(Integer.parseInt((String)list.get(i).get("BUY_COUNT")));
			gb.setContent((String)list.get(i).get("CONTENT"));
			gb.setCost_price(Double.parseDouble((String)list.get(i).get("COST_PRICE")));
			gb.setGoods_count(Integer.parseInt((String)list.get(i).get("GOODS_COUNT")));
			gb.setGoods_id(list.get(i).get("GOODS_ID").toString());
			gb.setGoods_name((String)list.get(i).get("GOODS_NAME"));
			gb.setImage_file((String)list.get(i).get("IMAGE_FILE"));
			gb.setJifen(Integer.parseInt((String)list.get(i).get("JIFEN")));
			gb.setProducer((String)list.get(i).get("PRODUCER"));
			gb.setPub_date((String)list.get(i).get("PUB_DATE"));
			gb.setRead_count(Integer.parseInt((String)list.get(i).get("READ_COUNT")));
			gb.setSale_price(Double.parseDouble((String)list.get(i).get("SALE_PRICE")));
			gb.setSn_number((String)list.get(i).get("SN_NUMBER"));
			gb.setTuijian((String)list.get(i).get("TUIJIAN"));
			gb.setType1_id((String)list.get(i).get("TYPE1_ID"));
			gb.setType2_id((String)list.get(i).get("TYPE2_ID"));
			goodsTuijian.add(gb);
		}
		return goodsTuijian;
	}
	
	/*
	 * 按商品编号查看商品
	 * */
	public GoodsBean getGoodsById(String goods_id){
		String sql="select * from EBOOK_GOODS where GOODS_ID='"+goods_id+"'";
		DButil db=new DButil();
		List<Map<String, Object>> list=db.queryToList(sql);
		GoodsBean gb=new GoodsBean();
		for(int i=0;i<list.size();i++){
			
			
			gb.setAdd_date((String)list.get(i).get("ADD_DATE"));
			gb.setBuy_count(Integer.parseInt((String)list.get(i).get("BUY_COUNT")));
			gb.setContent((String)list.get(i).get("CONTENT"));
			gb.setCost_price(Double.parseDouble((String)list.get(i).get("COST_PRICE")));
			gb.setGoods_count(Integer.parseInt((String)list.get(i).get("GOODS_COUNT")));
			gb.setGoods_id(list.get(i).get("GOODS_ID").toString());
			gb.setGoods_name((String)list.get(i).get("GOODS_NAME"));
			gb.setImage_file((String)list.get(i).get("IMAGE_FILE"));
			gb.setJifen(Integer.parseInt((String)list.get(i).get("JIFEN")));
			gb.setProducer((String)list.get(i).get("PRODUCER"));
			gb.setPub_date((String)list.get(i).get("PUB_DATE"));
			gb.setRead_count(Integer.parseInt((String)list.get(i).get("READ_COUNT")));
			gb.setSale_price(Double.parseDouble((String)list.get(i).get("SALE_PRICE")));
			gb.setSn_number((String)list.get(i).get("SN_NUMBER"));
			gb.setTuijian((String)list.get(i).get("TUIJIAN"));
			gb.setType1_id((String)list.get(i).get("TYPE1_ID"));
			gb.setType2_id((String)list.get(i).get("TYPE2_ID"));
			
		}
		return gb;
	}
	
	/*
	 * 浏览商品后阅读次数+1
	 * */
	public void addReadCount(String goodsid){
		if(goodsid!=null || goodsid!="" || goodsid!="null"){
			String sql1="select READ_COUNT from EBOOK_GOODS where GOODS_ID='"+goodsid+"'";
			DButil db=new DButil();
			String s=(String)db.getOneRow(sql1).get("READ_COUNT");
			int c=Integer.parseInt(s)+1;
			System.out.println("goodsBeanBo------readcount----"+c);
			String sql2="update EBOOK_GOODS set READ_COUNT='"+c+"' where GOODS_ID='"+goodsid+"'";
			db.update(sql2);
		}
		
	}
	/*
	 * 得到商品的价格
	 * */
	public double getSalePrice(String goods_id){
		String sql="select SALE_PRICE from EBOOK_GOODS where goods_id='"+goods_id+"'";
		DButil db=new DButil();
		double saleprice=Double.parseDouble(db.getOneRow(sql).get("SALE_PRICE").toString());
		return saleprice;
	}
	/*
	 * 减少相应商品数量 增加销售量
	 * */
	
	public void buyCountGoodsCount(String goods_id,int buy_count,int goods_count){
		String sql="update EBOOK_GOODS set BUY_COUNT='"+buy_count+"',GOODS_COUNT='"+goods_count+"' where GOODS_ID='"+goods_id+"'";
		//System.out.println(sql);
		DButil db=new DButil();
		db.update(sql);
	}
	
}
