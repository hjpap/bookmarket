package com.wei.model;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.wei.util.DButil;
import com.wei.util.DateTools;

public class PingjiaBo {

	DButil db=new DButil();
	
	/*
	 * 添加评价
	 * */
	public int addPingjia(PingjiaBean pjb){
		String sql="insert into EBOOK_COMMENT(PJ_ID,PJ_CONTENT,USER_ID,GOODS_ID,PJ_DATE,PJ_LEVEL) values('"+DateTools.getDateTimeCode()+"','"+pjb.getPj_content()+"','"+pjb.getUser_id()+"','"+pjb.getGoods_id()+"','"+DateTools.getDateTimeToSecond()+"','"+pjb.getPj_level()+"')";
		int f=db.update(sql);
		
		return f;
	}
	/*
	 * 查找某人 未评价或已评价商品
	 * */
	public List<OrderDetailBean> getPingjia(String user_id,String pingjia){
		String sql="select ebook_order.order_id,ebook_order.sale_date,ebook_order_detail.goods_id,ebook_order_detail.buy_count,ebook_order_detail.pingjia,ebook_order_detail.cost_price,ebook_order_detail.sale_price " +
				"from ebook_order,ebook_order_detail" +
				" where ebook_order.order_id=ebook_order_detail.order_id and " +
				"ebook_order.user_id='"+user_id+"' and " +
				"ebook_order.status='4' and " +
				"ebook_order_detail.pingjia='"+pingjia+"'";
		
		List<Map<String,Object>> list=db.queryToList(sql);
		List<OrderDetailBean> o=new LinkedList<OrderDetailBean>();
		for(int i=0;i<list.size();i++){
			OrderDetailBean odb=new OrderDetailBean();
			
			odb.setBuy_count(Integer.parseInt(list.get(i).get("BUY_COUNT").toString()));
			odb.setCost_price(Double.parseDouble(list.get(i).get("COST_PRICE").toString()));
			odb.setGoods_id(list.get(i).get("GOODS_ID").toString());
			odb.setOrder_id(list.get(i).get("ORDER_ID").toString());
			odb.setPingjia(list.get(i).get("PINGJIA").toString());
			odb.setSale_price(Double.parseDouble(list.get(i).get("SALE_PRICE").toString()));
			o.add(odb);
		}
		return o;
		
	}
	
	/*
	 * 查找商品评价
	 * */
	public List<PingjiaBean> getGoodsPJ(String goods_id){
		String sql="select * from EBOOK_COMMENT where GOODS_ID='"+goods_id+"'";
		List<Map<String,Object>> list=db.queryToList(sql);
		List<PingjiaBean> pj=new LinkedList<PingjiaBean>();

		
			for(int i=0;i<list.size();i++){
				PingjiaBean pjb=new PingjiaBean();
				pjb.setGoods_id((String)list.get(i).get("GOODS_ID"));
				pjb.setPj_content((String)list.get(i).get("PJ_CONTENT"));
				pjb.setPj_date((String)list.get(i).get("PJ_DATE"));
				pjb.setPj_id((String)list.get(i).get("PJ_ID"));
				pjb.setPj_level((String)list.get(i).get("PJ_LEVEL"));
				pjb.setUser_id((String)list.get(i).get("USER_ID"));
				
				pj.add(pjb);
			}
			return pj;	
		
	}
	
	
	/*
	 * 取到某商品相应评价等级的个数
	 * */
	public int getCountLevel(String goods_id,String level){
		String sql="select count(*) from EBOOK_COMMENT where GOODS_ID='"+goods_id+"' and PJ_LEVEL='"+level+"'";
		int i=Integer.parseInt(db.getOneRow(sql).get("COUNT(*)").toString());
		return i;
	}
	
	
}
