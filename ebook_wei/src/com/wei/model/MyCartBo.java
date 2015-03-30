package com.wei.model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class MyCartBo {
	DecimalFormat df1 = new DecimalFormat("####.00");
	private double totalprice=0.0;
	private int mycartCount=0;
	
	
	public int getMycartCount() {
		return mycartCount;
	}

	public void setMycartCount(int mycartCount) {
		this.mycartCount = mycartCount;
	}

	public Double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(Double totalprice) {
		this.totalprice = totalprice;
	}
	Map<String,Integer> myCart=new HashMap<String,Integer>();
	
	/*
	 * 增加商品到myCart
	 * */
	public void addGoods(String goods_id,Integer buy_count){
		myCart.put(goods_id, buy_count);
		showCart();
	}
	
	/*
	 * 删除商品
	 * */
	public void delGoods(String goods_id){
		
		myCart.remove(goods_id);
		showCart();
	}
	
	/*
	 * 删除所以商品
	 * */
	public void delAllGoods(){
		myCart.clear();
		showCart();
		
	}
	/*
	 * 显示所有商品
	 * */
	public ArrayList<GoodsBean> showCart(){
		
		ArrayList<GoodsBean> goods=new ArrayList<GoodsBean>();
		GoodsBeanBo gbb=new GoodsBeanBo();
		
		Set<String> set = myCart.keySet();
		 Iterator<String> it = set.iterator();
		 mycartCount=0;
		 totalprice=0;
	       while(it.hasNext()){
	    	   mycartCount=mycartCount+1;
	    	  
	    	   String goods_id = it.next();
	    	  //System.out.println("mycartbo---商品有:"+goods_id);
	    	   GoodsBean gb=new GoodsBean();
	    	   gb=gbb.getGoodsById(goods_id);
	    	   gb.setBuy_count(myCart.get(goods_id));
	    	   goods.add(gb); 
	    	   df1.setGroupingUsed(false);
          	 Double pr= Double.parseDouble(df1.format(gbb.getSalePrice(goods_id)*gb.getBuy_count()));
            
	    	   totalprice=totalprice+pr;
	    	   
	       }
	       //System.out.println("总价："+totalprice);
		return goods;
	}
	/*
	 * 显示购物车商品数量
	 * */
	public int getCount(String goods_id){
		
		return myCart.get(goods_id);
		
	}
	

}
