package com.wei.model;

public class OrderDetailBean {
private String order_id;
private String goods_id;
private int buy_count;
private double cost_price;
private double sale_price;
private String pingjia;
public String getOrder_id() {
	return order_id;
}
public void setOrder_id(String orderId) {
	order_id = orderId;
}
public String getGoods_id() {
	return goods_id;
}
public void setGoods_id(String goodsId) {
	goods_id = goodsId;
}
public int getBuy_count() {
	return buy_count;
}
public void setBuy_count(int buyCount) {
	buy_count = buyCount;
}
public double getCost_price() {
	return cost_price;
}
public void setCost_price(double costPrice) {
	cost_price = costPrice;
}
public double getSale_price() {
	return sale_price;
}
public void setSale_price(double salePrice) {
	sale_price = salePrice;
}
public String getPingjia() {
	return pingjia;
}
public void setPingjia(String pingjia) {
	this.pingjia = pingjia;
}

}
