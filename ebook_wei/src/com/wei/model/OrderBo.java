package com.wei.model;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import com.wei.util.DButil;
import com.wei.util.DateTools;

public class OrderBo {
	
	
	/*
	 * 生成订单
	 * */
	public String createOrder(MyCartBo myCart,String user_id,String address){
		String pk=DateTools.getDateTimeCode();
		DButil db=new DButil();
		String sql="insert into EBOOK_ORDER values('"+pk+"','"+DateTools.getDateTime()+"','"+user_id+"','1','"+address+"')";
		if(db.update(sql)==1){
			ArrayList<GoodsBean> al=myCart.showCart();
			LinkedList<String> sqls=new LinkedList<String>();
			GoodsBeanBo gbb=new GoodsBeanBo();
			UserBeanBo ubb=new UserBeanBo();
			for(int i=0;i<al.size();i++){
				String sql2="insert into EBOOK_ORDER_DETAIL values('"+pk+"','"+al.get(i).getGoods_id()+"','"+al.get(i).getBuy_count()+"','1','"+al.get(i).getCost_price()+"','"+al.get(i).getSale_price()+"')";
				//System.out.print(sql2);
				//减少和增加相应商品的数量和销售数量
				//增加积分
				ubb.addJifen(user_id, al.get(i).getJifen());
				
				gbb.buyCountGoodsCount(al.get(i).getGoods_id(), al.get(i).getBuy_count(), (al.get(i).getGoods_count()-al.get(i).getBuy_count()));
				sqls.add(sql2);
			}
			db.batch(sqls);
			
			
			return pk;
		}else{
			return "false";
		}
		
	}

	
	
	

}
