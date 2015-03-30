package com.wei.model;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.wei.util.DButil;

public class OrderInfo {
	DButil db=new DButil();
	//得到订单
	public OrderBean getOrderInfo(String order_id){
		String sql="select * from EBOOK_ORDER where ORDER_ID='"+order_id+"'";
		
		Map<String,String> a=(Map)db.getOneRow(sql);
		OrderBean ob=new OrderBean();
		ob.setAddress(a.get("ADDRESS"));
		ob.setOrder_date(a.get("SALE_DATE"));
		ob.setOrder_id(a.get("ORDER_ID"));
		ob.setStatus(a.get("STATUS"));
		ob.setUser_id(a.get("USER_ID"));
		return ob;
		
	}
	//得到订单详情
	public List<OrderDetailBean> getOrderDetailBenInfo(String order_id){
		String sql="select * from EBOOK_ORDER_DETAIL where ORDER_ID='"+order_id+"'";
	
		List<Map<String,String>> a=(List)db.queryToList(sql);
		List<OrderDetailBean> orderDetail=new LinkedList<OrderDetailBean>();
		
		for(int i=0;i<a.size();i++){
			OrderDetailBean odb=new OrderDetailBean();
			odb.setBuy_count(Integer.parseInt(a.get(i).get("BUY_COUNT")));
			odb.setCost_price(Double.parseDouble(a.get(i).get("COST_PRICE")));
			odb.setGoods_id(a.get(i).get("GOODS_ID"));
			odb.setOrder_id(a.get(i).get("ORDER_ID"));
			odb.setPingjia(a.get(i).get("PINGJIA"));
			odb.setSale_price(Double.parseDouble(a.get(i).get("SALE_PRICE")));
			orderDetail.add(odb);
			
		}
		return orderDetail;
		
	}
	//得到某用户订单
	public List<String> getAllOrder(String user_id,String status){
		String sql="select ORDER_ID from EBOOK_ORDER where USER_ID='"+user_id+"' and STATUS='"+status+"'";
		
		List<Map<String,String>> a=(List)db.queryToList(sql);
		List<String> allOrder=new LinkedList<String>();
		for(int i=0;i<a.size();i++){
			String id=a.get(i).get("ORDER_ID");
			allOrder.add(id);
		}
		return allOrder;
	}
	//得到所有订单
	public List<String> getSuoYouOrder(String status){
		String sql="select ORDER_ID from EBOOK_ORDER where STATUS='"+status+"'";
		
		List<Map<String,String>> a=(List)db.queryToList(sql);
		List<String> allOrder=new LinkedList<String>();
		for(int i=0;i<a.size();i++){
			String id=a.get(i).get("ORDER_ID");
			allOrder.add(id);
		}
		return allOrder;
	}
	
	//修改订单状态
	public int alterStatus(String order_id,String status){
		String sql="update EBOOK_ORDER set STATUS='"+status+"' where ORDER_ID='"+order_id+"'";
		System.out.println("orderinfo----alter status---"+sql);
		int f=db.update(sql);
		return f;
		
	}
	//修改商品评论状态
	public int alterPingjia(String goods_id){
		String sql="update EBOOK_ORDER_DETAIL set PINGJIA='2' where GOODS_ID='"+goods_id+"'";
		int f=db.update(sql);
		return f;
		
	}
	//取消订单
	public void delOrder(String order_id){
		LinkedList<String> sqls=new LinkedList<String>();
		String sql="delete from EBOOK_ORDER where ORDER_ID='"+order_id+"'";
		String sql1="delete from EBOOK_ORDER_DETAIL where ORDER_ID='"+order_id+"'";
		sqls.add(sql);
		sqls.add(sql1);
		
		db.batch(sqls);
		
		
	}

}
